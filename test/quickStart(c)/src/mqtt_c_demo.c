#if defined(WIN32) || defined(WIN64)
#include "windows.h"
#include "io.h"
#else
#include "unistd.h"
#endif

#include <stdlib.h>
#include <openssl/ossl_typ.h>
#include <openssl/hmac.h>
#include <unistd.h>
#include <math.h>
#include "MQTTAsync.h"
#include "string.h"
#include "string_util.h"

char *uri = "ssl://iot-mqtts.cn-north-4.myhuaweicloud.com:8883";
int port = 8883;
char *username = "5ebac693352cfb02c567ec88_test2345"; //deviceId or nodeId
//char *username = "test6789";
char *password = "yoursecret";

int gQOS = 1;  //default value of qos is 1
int keepAliveInterval = 120; //default value of keepAliveInterval is 120s
int connectTimeout = 30; //default value of connect timeout is 30s
int retryInterval = 10; //default value of connect retryInterval is 10s
char *ca_path = "./conf/rootcert.pem";
MQTTAsync client = NULL;
int flag = 0; //0: deviceId access; 1:nodeId access, just for old mqtt api.

#define TRY_MAX_TIME 				100   //Maximum length of attempted encryption
#define SHA256_ENCRYPTION_LENGRH 	32
#define TIME_STAMP_LENGTH 			10
#define PASSWORD_ENCRYPT_LENGTH 	64

int mqttClientCreateFlag = 0; //this mqttClientCreateFlag is used to control the invocation of MQTTAsync_create, otherwise, there would be message leak.
int retryTimes = 0;
int minBackoff = 1000;
int maxBackoff = 30*1000; //10 seconds
int defaultBackoff = 1000;

void mqtt_connect_success(void *context, MQTTAsync_successData *response) {
	retryTimes = 0;
	printf("connect success. \n");
}

void TimeSleep(int ms) {
#if defined(WIN32) || defined(WIN64)
	Sleep(ms);
#else
    usleep(ms * 1000);
#endif
}

void mqtt_connect_failure(void *context, MQTTAsync_failureData *response) {
	retryTimes++;
	printf("connect failed: messageId %d, code %d, message %s\n", response->token, response->code, response->message);
	//退避重连
	int lowBound =  defaultBackoff * 0.8;
	int highBound = defaultBackoff * 1.2;
	int randomBackOff = rand() % (highBound - lowBound + 1);
	long backOffWithJitter = (int)(pow(2.0, (double)retryTimes) - 1) * (randomBackOff + lowBound);
	long waitTImeUntilNextRetry = (int)(minBackoff + backOffWithJitter) > maxBackoff ? maxBackoff : (minBackoff + backOffWithJitter);

	TimeSleep(waitTImeUntilNextRetry);

	//connect
	int ret = mqtt_connect();
	if (ret != 0) {
		printf("connect failed, result %d\n", ret);
	}
}

int EncryWithHMacSha256(const char *inputData, char **inputKey, int inEncryDataLen, char *outData) {

	if (inputData == NULL || (*inputKey) == NULL) {
		printf("encryWithHMacSha256(): the input is invalid.\n");
		return -1;
	}

	if (TIME_STAMP_LENGTH != strlen(*inputKey)) {
		printf("encryWithHMacSha256(): the length of inputKey is invalid.\n");
		return -1;
	}

	char *end = NULL;
	unsigned int mac_length = 0;
	unsigned int tryTime = 1;
	int lenData = strlen(inputData);
	long timeTmp = strtol(*inputKey, &end, 10);
	unsigned char *temp = HMAC(EVP_sha256(), *inputKey, TIME_STAMP_LENGTH, (const unsigned char*) inputData, lenData, NULL, &mac_length);

	while (strlen(temp) != SHA256_ENCRYPTION_LENGRH) {
		tryTime++;
		if (tryTime > TRY_MAX_TIME) {
			printf("encryWithHMacSha256(): Encryption failed after max times attempts.\n");
			return -1;
		}

		timeTmp++;
		snprintf(*inputKey, TIME_STAMP_LENGTH + 1, "%ld", timeTmp);
		temp = HMAC(EVP_sha256(), *inputKey, TIME_STAMP_LENGTH, (const unsigned char*) inputData, lenData, NULL, &mac_length);
	}

	int uiIndex, uiLoop;
	char ucHex;

	for (uiIndex = 0, uiLoop = 0; uiLoop < inEncryDataLen; uiLoop++) {
		ucHex = (temp[uiLoop] >> 4) & 0x0F;
		outData[uiIndex++] = (ucHex <= 9) ? (ucHex + '0') : (ucHex + 'a' - 10);

		ucHex = temp[uiLoop] & 0x0F;
		outData[uiIndex++] = (ucHex <= 9) ? (ucHex + '0') : (ucHex + 'a' - 10);
	}

	outData[uiIndex] = '\0';

	return 0;
}

int GetEncryptedPassword(char **timestamp, char **encryptedPwd) {
	if (password == NULL) {
		return -1;
	}

	char *temp_encrypted_pwd = NULL;
	string_malloc(&temp_encrypted_pwd, PASSWORD_ENCRYPT_LENGTH + 1);
	if (temp_encrypted_pwd == NULL) {
		printf("GetEncryptedPassword() error, there is not enough memory here.\n");
		return -1;
	}

	int ret = EncryWithHMacSha256(password, timestamp, SHA256_ENCRYPTION_LENGRH, temp_encrypted_pwd);
	if (ret != 0) {
		printf( "GetEncryptedPassword() error, encrypt failed %d\n", ret);
		free(temp_encrypted_pwd);
		temp_encrypted_pwd = NULL;
		return -1;
	}

	if (CopyStrValue(encryptedPwd, (const char*) temp_encrypted_pwd, PASSWORD_ENCRYPT_LENGTH) < 0) {
		printf("GetEncryptedPassword(): there is not enough memory here.\n");
		free(temp_encrypted_pwd);
		temp_encrypted_pwd = NULL;
		return -1;
	}

	free(temp_encrypted_pwd);
	temp_encrypted_pwd = NULL;

	return 0;
}

//receive message from the server
int mqtt_message_arrive(void *context, char *topicName, int topicLen, MQTTAsync_message *message) {

	printf( "mqtt_message_arrive() success, the topic is %s, the payload is %s \n", topicName, message->payload);

	return 1; //can not return 0 here, otherwise the message won't update or something wrong would happen
}

MQTTAsync_connectOptions conn_opts = MQTTAsync_connectOptions_initializer;
MQTTAsync_SSLOptions ssl_opts = MQTTAsync_SSLOptions_initializer;

void mqtt_connection_lost(void *context, char *cause) {
	printf("mqtt_connection_lost() error, cause: %s\n", cause);
	//可以在这里设置重连
}

int mqtt_connect() {

	char *encrypted_password = NULL;

	if (!mqttClientCreateFlag) {
		char *temp_authMode = "_0_0_";
		
		if (flag == 1) {
			temp_authMode = "_2_0_";
		}
		
		conn_opts.cleansession = 1;
		conn_opts.keepAliveInterval = keepAliveInterval;
		conn_opts.connectTimeout = connectTimeout;
		conn_opts.retryInterval = retryInterval;
		conn_opts.onSuccess = mqtt_connect_success;
		conn_opts.onFailure = mqtt_connect_failure;

		char *loginTimestamp = get_client_timestamp();
		if (loginTimestamp == NULL) {
			return -1;
		}

		int encryptedRet = GetEncryptedPassword(&loginTimestamp, &encrypted_password);
		if (encryptedRet != 0) {
			free(loginTimestamp);
			loginTimestamp = NULL;
			return -1;
		}

		if(port == 8883) {
			if (access(ca_path, 0)) {
				printf("ca file is NOT accessible\n");
				free(loginTimestamp);
				loginTimestamp = NULL;
				return -1;
			}
			ssl_opts.trustStore = ca_path;
			ssl_opts.enabledCipherSuites = "TLSv1.2";
			ssl_opts.enableServerCertAuth = 1; // 1: enable server certificate authentication, 0: disable
			// ssl_opts.verify = 0; // 0 for no verifying the hostname, 1 for verifying the hostname
			conn_opts.ssl = &ssl_opts;
		}

		char *clientId = NULL;
		clientId = combine_strings(3, username, temp_authMode, loginTimestamp);
		free(loginTimestamp);
		loginTimestamp = NULL;

		int createRet = MQTTAsync_create(&client, uri, clientId, MQTTCLIENT_PERSISTENCE_NONE, NULL);
		free(clientId);
		clientId = NULL;

		if (createRet) {
			printf("mqtt_connect() MQTTAsync_create error, result %d\n", createRet);
		} else {
			mqttClientCreateFlag = 1;
			printf("mqtt_connect() mqttClientCreateFlag = 1.\n");
		}

		MQTTAsync_setCallbacks(client, NULL, mqtt_connection_lost, mqtt_message_arrive, NULL);

	}

	conn_opts.username = username;
	conn_opts.password = encrypted_password;

	printf("begin to connect the server.\n");
	int ret = MQTTAsync_connect(client, &conn_opts);
	if (ret) {
		printf("mqtt_connect() error, result %d\n", ret);
		return -1;
	}

	if (encrypted_password != NULL) {
		free(encrypted_password);
		encrypted_password = NULL;
	}

	return 0;

}

void publish_success(void *context, MQTTAsync_successData *response) {
	printf("publish success, the messageId is %d \n", response ? response->token : -1);
}

void publish_failure(void *context, MQTTAsync_failureData *response) {
	printf("publish failure\n");
	if(response) {
		printf("publish_failure(), messageId is %d, code is %d, message is %s\n", response->token, response->code, response->message);
	}
}

int mqtt_publish(const char *topic, char *payload) {

	MQTTAsync_responseOptions opts = MQTTAsync_responseOptions_initializer;
	MQTTAsync_message pubmsg = MQTTAsync_message_initializer;

	opts.onSuccess = publish_success;
	opts.onFailure = publish_failure;

	pubmsg.payload = payload;
	pubmsg.payloadlen = (int) strlen(payload);
	pubmsg.qos = gQOS;
	pubmsg.retained = 0;

	int ret = MQTTAsync_sendMessage(client, topic, &pubmsg, &opts);
	if (ret != 0) {
		printf( "mqtt_publish() error, publish result %d\n", ret);
		return -1;
	}

	printf("mqtt_publish(), the payload is %s, the topic is %s \n", payload, topic);
	return opts.token;
}

void subscribe_success(void *context, MQTTAsync_successData *response) {
	printf("subscribe success, the messageId is %d \n", response ? response->token : -1);
}

void subscribe_failure(void *context, MQTTAsync_failureData *response) {
	printf("subscribe failure\n");
	if(response) {
		printf("subscribe_failure(), messageId is %d, code is %d, message is %s\n", response->token, response->code, response->message);
	}
}

int mqtt_subscribe(const char *topic) {

	MQTTAsync_responseOptions opts = MQTTAsync_responseOptions_initializer;

	opts.onSuccess = subscribe_success;
	opts.onFailure = subscribe_failure;

	int qos = 1;
	int ret = MQTTAsync_subscribe(client, topic, qos, &opts); //this qos must be 1, otherwise if subscribe failed, the downlink message cannot arrive.

	if (MQTTASYNC_SUCCESS != ret) {
		printf("mqtt_subscribe() error, subscribe failed, ret code %d, topic %s\n", ret, topic);
		return -1;
	}

	printf("mqtt_subscribe(), topic %s, messageId %d\n", topic, opts.token);

	return opts.token;
}

void time_sleep(int ms) {
#if defined(WIN32) || defined(WIN64)
	Sleep(ms);
#else
    usleep(ms * 1000);
#endif
}

int main(void) {

	//connect
	int ret = mqtt_connect();
	if (ret != 0) {
		printf("connect failed, result %d\n", ret);
	}

	time_sleep(3000);

	//subscribe
	char *cmd_topic = combine_strings(3, "$oc/devices/", username, "/sys/commands/#");
	ret = mqtt_subscribe(cmd_topic);
	
	free(cmd_topic);
	cmd_topic = NULL;

	if (ret < 0) {
		printf("subscribe topic error, result %d\n", ret);
	}

	time_sleep(1000);
	
	//publish data
	char *payload = "{\"services\":[{\"service_id\":\"parameter\",\"properties\":{\"Load\":\"123\",\"ImbA_strVal\":\"456\"}}]}";
	char *report_topic = combine_strings(3, "$oc/devices/", username, "/sys/properties/report");
	ret = mqtt_publish(report_topic, payload);
	free(report_topic);
	report_topic = NULL;

	if (ret < 0) {
		printf("publish data error, result %d\n", ret);
	}

	while(1) {
		time_sleep(1000);
	}

	return 0;
}

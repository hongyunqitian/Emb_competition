#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include <string.h>
#include <time.h>
#include "string_util.h"


//NOTE: the invocation need to free the return char pointer.
//return parameter e.g. 2019053101
char* get_client_timestamp() {
	time_t t;
	struct tm *lt;

	time(&t); //get Unix time stamp
	lt = gmtime(&t); //transform into time struct
	if (lt == NULL) {
		return NULL;
	}
	char *dest_str = malloc(CLIENT_TIME_LENGTH + 1); //length of yyyyMMDDhh + 1
	if (dest_str == NULL) {
		return NULL;
	} else {
		memset(dest_str, 0, CLIENT_TIME_LENGTH + 1);
		snprintf(dest_str, CLIENT_TIME_LENGTH + 1, "%d%.2d%.2d%.2d", lt->tm_year + 1900, lt->tm_mon + 1, lt->tm_mday, lt->tm_hour);
		return dest_str;
	}
}

char* combine_strings(int strAmount, char *str1, ...) {
	int length = StringLength(str1) + 1;
	if (length == 1) {
		return NULL;
	}

	char *result = malloc(length);
	if (result == NULL) {
		return NULL;
	}
	char *temStr;

	strcpy(result, str1);

	va_list args;
	va_start(args, str1);

	while (--strAmount > 0) {
		temStr = va_arg(args, char*);
		if (temStr == NULL) {
			continue;
		}
		length = length + StringLength(temStr);
		result = realloc(result, length);
		if (result == NULL) {
			return NULL;
		}
		strcat(result, temStr);
	}
	va_end(args);

	return result;
}

void string_malloc(char **str, int length) {
	if (length <= 0) {
		return;
	}
	*str = malloc(length);
	if (*str == NULL) {
		return;
	}
	memset(*str, 0, length);
}

int CopyStrValue(char **dst, const char *src, int length) {
	if (length <= 0) {
		return 0;
	}
	*dst = malloc(length + 1);
	if (*dst == NULL) {
		return -1;
	}
	memset(*dst, 0, length);
	strncat(*dst, src, length);
	return 0;
}

int StringLength(char *str) {
	if (str == NULL) {
		return 0;
	}
	int len = 0;
	char *temp_str = str;
	while (*temp_str++ != '\0') {
		len++;
	}
	return len;
}


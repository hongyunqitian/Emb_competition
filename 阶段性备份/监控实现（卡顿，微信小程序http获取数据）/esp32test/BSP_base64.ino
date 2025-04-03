#include <Arduino.h>

/**
 * 自定义Base64编码函数，无需依赖外部库
 * @param data 要编码的二进制数据
 * @param length 数据长度
 * @return 返回Base64编码后的字符串
 */
String base64_encode_custom(uint8_t *data, size_t length) {
  // Base64编码表
  const char base64_chars[] = 
    "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
  
  // 计算编码后的长度
  size_t output_length = 4 * ((length + 2) / 3);
  
  // 创建输出字符串
  String result = "";
  result.reserve(output_length + 1); // 预留空间，提高效率
  
  // 进行编码
  size_t i = 0;
  while (i < length) {
    // 取3字节一组进行编码
    uint32_t octet_a = i < length ? data[i++] : 0;
    uint32_t octet_b = i < length ? data[i++] : 0;
    uint32_t octet_c = i < length ? data[i++] : 0;
    
    uint32_t triple = (octet_a << 16) + (octet_b << 8) + octet_c;
    
    // 4个字符一组输出
    result += base64_chars[(triple >> 18) & 0x3F];
    result += base64_chars[(triple >> 12) & 0x3F];
    result += base64_chars[(triple >> 6) & 0x3F];
    result += base64_chars[triple & 0x3F];
  }
  
  // 处理填充
  switch (length % 3) {
    case 1:
      // 如果余1字节，需要2个=填充
      result[output_length - 1] = '=';
      result[output_length - 2] = '=';
      break;
    case 2:
      // 如果余2字节，需要1个=填充
      result[output_length - 1] = '=';
      break;
  }
  
  return result;
}

/**
 * 从串口接收并解析数据，转换为Base64格式
 * 包头为0x55 0xAA，包尾为0xAA 0x55
 * @return 返回Base64编码后的字符串，带data:image/jpeg;base64,前缀
 */
String base64_cov(uint8_t *rx_data, int rx_len) {
  // 直接使用已有的二进制数据进行编码
  if (rx_len <= 0) {
    return ""; // 无效长度，返回空字符串
  }
  
  // 检查数据中是否有包头和包尾
  // 如果有包头(0x55 0xAA)，去掉包头
  int start_index = 0;
  if (rx_len >= 2 && rx_data[0] == 0x55 && rx_data[1] == 0xAA) {
    start_index = 2;
  }
  
  // 如果有包尾(0xAA 0x55)，不编码包尾
  int end_index = rx_len;
  if (rx_len >= 2 && rx_data[rx_len-2] == 0xAA && rx_data[rx_len-1] == 0x55) {
    end_index = rx_len - 2;
  }
  
  // 计算有效数据长度
  int valid_length = end_index - start_index;
  if (valid_length <= 0) {
    return ""; // 无效数据，返回空字符串
  }
  
  // 检查是否是标准JPEG数据 (JPEG文件头是FF D8 FF)
  if (valid_length >= 3 && 
      rx_data[start_index] == 0xFF && 
      rx_data[start_index+1] == 0xD8 && 
      rx_data[start_index+2] == 0xFF) {
    Serial.println("检测到标准JPEG头");
  } else {
    Serial.println("警告：数据不是标准JPEG格式");
    // 打印前几个字节以便调试
    Serial.print("数据头: ");
    for (int i = 0; i < min(10, valid_length); i++) {
      Serial.printf("%02X ", rx_data[start_index + i]);
    }
    Serial.println();
  }
  
  // 编码有效数据
  String encodedString = base64_encode_custom(rx_data + start_index, valid_length);
  
  // 打印前20个字符用于调试
  Serial.print("Base64开头: ");
  if (encodedString.length() > 20) {
    Serial.println(encodedString.substring(0, 20));
  } else {
    Serial.println(encodedString);
  }
  
  // 添加data:image/jpeg;base64,前缀
  String result = "data:image/jpeg;base64," + encodedString;
  
  return result;
}

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static const char base64_table[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

void base64_encode(const unsigned char *input, int length, char *output) {
    int i, j;
    for (i = 0, j = 0; i < length;) {
        unsigned int octet_a = i < length ? input[i++] : 0;
        unsigned int octet_b = i < length ? input[i++] : 0;
        unsigned int octet_c = i < length ? input[i++] : 0;

        unsigned int triple = (octet_a << 0x10) + (octet_b << 0x08) + octet_c;

        output[j++] = base64_table[(triple >> 3 * 6) & 0x3F];
        output[j++] = base64_table[(triple >> 2 * 6) & 0x3F];
        output[j++] = base64_table[(triple >> 1 * 6) & 0x3F];
        output[j++] = base64_table[(triple >> 0 * 6) & 0x3F];
    }

    for (i = 0; i < length % 3; i++) {
        output[j - 1 - i] = '=';
    }
    output[j] = '\0'; // Null-terminate the output string
}

// 将十六进制字符串转换为二进制数据
int hex_to_bin(const char *hex, unsigned char *bin, int bin_size) {
    int hex_len = strlen(hex);
    int i, j;
    
    // 去除空格和其他非十六进制字符
    for (i = 0, j = 0; hex[i] != '\0' && j < bin_size * 2; i++) {
        if ((hex[i] >= '0' && hex[i] <= '9') || 
            (hex[i] >= 'A' && hex[i] <= 'F') || 
            (hex[i] >= 'a' && hex[i] <= 'f')) {
            if (j % 2 == 0) {
                bin[j/2] = 0;
            }
            
            if (hex[i] >= '0' && hex[i] <= '9') {
                bin[j/2] = (bin[j/2] << 4) | (hex[i] - '0');
            } else if (hex[i] >= 'A' && hex[i] <= 'F') {
                bin[j/2] = (bin[j/2] << 4) | (hex[i] - 'A' + 10);
            } else {
                bin[j/2] = (bin[j/2] << 4) | (hex[i] - 'a' + 10);
            }
            j++;
        }
    }
    
    return j / 2; // 返回实际转换的字节数
}

int main() {
    // 图片数据（十六进制字符串）
    const char hex_data[] = "55 AA 80 06 00 00 FF D8 FF DB 00 43 00 14 0E 0F 12 0F 0D 14 12 10 12 17 15 14 18 1E 32 21 1E 1C 1C 1E 3D 2C 2E 24 32 49 40 4C 4B 47 40 46 45 50 5A 73 62 50 55 6D 56 45 46 64 88 65 6D 77 7B 81 82 81 4E 60 8D 97 8C 7D 96 73 7E 81 7C FF DB 00 43 01 15 17 17 1E 1A 1E 3B 21 21 3B 7C 53 46 53 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C 7C FF C0 00 11 08 00 78 00 A0 03 01 11 00 02 11 01 03 11 01 FF C4 00 1F 00 00 01 05 01 01 01 01 01 01 00 00 00 00 00 00 00 00 01 02 03 04 05 06 07 08 09 0A 0B FF C4 00 B5 10 00 02 01 03 03 02 04 03 05 05 04 04 00 00 01 7D 01 02 03 00 04 11 05 12 21 31 41 06 13 51 61 07 22 71 14 32 81 91 A1 08 23 42 B1 C1 15 52 D1 F0 24 33 62 72 82 09 0A 16 17 18 19 1A 25 26 27 28 29 2A 34 35 36 37 38 39 3A 43 44 45 46 47 48 49 4A 53 54 55 56 57 58 59 5A 63 64 65 66 67 68 69 6A 73 74 75 76 77 78 79 7A 83 84 85 86 87 88 89 8A 92 93 94 95 96 97 98 99 9A A2 A3 A4 A5 A6 A7 A8 A9 AA B2 B3 B4 B5 B6 B7 B8 B9 BA C2 C3 C4 C5 C6 C7 C8 C9 CA D2 D3 D4 D5 D6 D7 D8 D9 DA E1 E2 E3 E4 E5 E6 E7 E8 E9 EA F1 F2 F3 F4 F5 F6 F7 F8 F9 FA FF C4 00 1F 01 00 03 01 01 01 01 01 01 01 01 01 00 00 00 00 00 00 01 02 03 04 05 06 07 08 09 0A 0B FF C4 00 B5 11 00 02 01 02 04 04 03 04 07 05 04 04 00 01 02 77 00 01 02 03 11 04 05 21 31 06 12 41 51 07 61 71 13 22 32 81 08 14 42 91 A1 B1 C1 09 23 33 52 F0 15 62 72 D1 0A 16 24 34 E1 25 F1 17 18 19 1A 26 27 28 29 2A 35 36 37 38 39 3A 43 44 45 46 47 48 49 4A 53 54 55 56 57 58 59 5A 63 64 65 66 67 68 69 6A 73 74 75 76 77 78 79 7A 82 83 84 85 86 87 88 89 8A 92 93 94 95 96 97 98 99 9A A2 A3 A4 A5 A6 A7 A8 A9 AA B2 B3 B4 B5 B6 B7 B8 B9 BA C2 C3 C4 C5 C6 C7 C8 C9 CA D2 D3 D4 D5 D6 D7 D8 D9 DA E2 E3 E4 E5 E6 E7 E8 E9 EA F2 F3 F4 F5 F6 F7 F8 F9 FA FF DA 00 0C 03 01 00 02 11 03 11 00 3F 00 51 5A 9C 83 A9 0C 67 59 7D 80 A1 01 25 31 8B 41 42 D3 19 62 13 B4 52 B8 58 B4 B2 D5 26 2B 12 AC B4 C5 61 E2 4C D0 3B 0B BE 98 58 69 7A 00 61 34 82 C4 6D 49 8C 8C D4 B0 18 69 00 C3 48 43 4D 00 34 D2 01 84 52 02 B7 EF 17 A8 0E 3D B8 35 A1 02 AC AA 78 CE 0F A1 E2 90 0B 17 39 6F 53 42 04 4B 4C A0 A0 62 E6 93 65 24 3D 5B 14 AE 55 89 55 E9 DC 2C 48 AF 55 71 58 90 3D 17 0B 0E DF 4E E1 60 DD 40 58 42 D4 AE 16 10 9A 04 34 D2 01 A6 90 0C 34 84 34 D2 01 A6 81 0D 34 01 0D 59 03 25 C6 C3 90 0F D6 90 C4 58 8A 81 B5 C8 F6 3C 8A 63 43 F7 32 FD E5 CF BA F3 40 C7 2B 2B 0E 0E 68 18 8C 79 AC DB 34 48 50 D4 14 3D 5A 98 AC 48 1A A8 43 C3 51 70 B0 F0 D4 EE 16 1C 1A 8B 8A C2 EE A0 62 13 4A E2 B0 99 A4 03 68 10 86 81 0D 34 81 88 45 02 1A 68 11 05 51 23 1F E6 65 5F 7C D0 04 A2 99 42 D0 31 1D 54 8C B0 E4 77 A4 DD 8A 48 8B 35 99 A8 A0 D0 03 81 A0 07 86 AA 42 1E 1A 80 1C 1A 9D C0 78 34 5C 2C 38 1A 00 5C D2 10 50 21 28 15 83 14 08 6E 28 10 86 81 0D 34 84 56 15 62 11 39 91 8F A7 14 21 75 24 14 CB 43 A8 19 1C C7 00 0F 5A 89 32 D2 21 A8 34 B0 E1 4C 2C 38 50 03 C5 03 B0 E0 69 88 72 9A 2E 16 24 5A 2E 21 D9 A0 43 85 00 2D 31 05 02 12 82 44 A0 42 1A 00 69 A0 93 97 8D E7 87 FD 54 A4 0F 4E DF 95 65 73 A5 C9 3D D1 2C 7A 8D CC 5F 79 15 87 52 48 FF 00 0A B5 23 3E 44 5A 83 57 0E EA AF 16 DD C4 0C 86 E0 55 29 0B 94 D4 15 62 2B 4C D9 90 FB 56 4F 73 44 86 03 48 A1 C0 D0 31 E0 D0 98 0A 0D 30 1C 28 02 41 40 0F 14 5C 43 C5 00 3A 82 58 53 10 B4 C0 28 25 81 A0 43 4D 02 1A 68 11 CC 56 06 C1 40 C0 A2 B7 50 0D 3B 85 8B D1 EA 32 28 01 D5 58 0F 4E 0D 52 9B 0E 44 1F 69 56 62 4E 46 69 5C AB 12 2B 86 E8 41 A1 31 92 83 4C 07 03 40 C7 03 9A 00 78 A6 84 C9 16 81 0F 14 C0 70 A0 43 A8 10 A0 D3 10 B4 08 29 92 C0 D0 21 B4 08 69 A0 47 31 58 5C D8 28 01 68 18 A2 91 42 D0 31 68 19 22 CA EB D1 8F E3 CD 17 28 99 6E C8 FB CA 0F D2 9F 35 82 C4 F1 5C 47 21 DA 32 1B D0 D5 26 16 2C 2D 32 49 16 98 87 8A 00 70 A0 91 D4 C4 2D 02 16 98 85 A6 4B 10 D0 21 28 10 D2 68 11 CB D6 06 C2 8A 06 2D 03 42 E6 90 C5 A0 62 D0 30 A0 A0 26 90 0E B7 6C 4D 9F C2 98 8D 54 3C 03 55 70 26 53 55 72 47 83 4C 07 03 40 85 A0 91 73 4C 42 E6 98 98 66 81 06 68 24 4C D0 21 A6 98 8E 62 B0 36 16 80 0A 43 16 82 85 A0 62 E6 81 91 CB 2F 96 54 05 C9 34 D2 06 EC 38 9A 43 24 83 D6 86 08 D3 84 E5 6A 90 89 C5 31 0F 14 C0 70 A0 43 B3 4C 41 4C 91 73 40 83 34 09 86 69 92 26 68 10 84 D3 11 CC D7 39 B0 53 01 69 14 14 00 B4 0C 28 28 28 01 A4 D0 22 E5 88 87 14 0D 17 61 38 14 D0 8B 4A 6A 84 3E 81 0A 0D 30 17 34 C4 28 34 12 2E 69 88 33 40 82 81 08 4D 32 44 26 80 39 AA C0 D4 28 01 68 18 50 31 68 18 50 31 33 40 08 39 61 4C 0B 51 52 19 6A 23 40 16 90 F1 54 21 E0 D0 21 D9 A7 71 06 69 DC 41 9A 04 2E 69 80 6E A6 48 66 81 06 68 10 84 E6 81 1C DD 62 6A 2D 00 14 0C 5C D0 30 CD 00 19 A0 77 13 34 0C 54 E5 A8 11 65 28 19 62 33 40 32 CA 35 31 12 83 4D 00 B4 08 33 4C 41 40 85 CD 31 06 69 88 33 4C 42 13 41 21 9A 00 E7 6B 16 68 14 86 14 C6 2D 00 25 03 0A 00 09 A0 63 A3 A0 45 94 A0 64 CB D6 81 93 A9 F5 A6 49 2A 9A 60 38 1A 04 C7 66 98 84 CD 00 14 21 06 6A 89 0D D4 08 33 40 84 CD 2B 81 CF D6 66 82 D0 30 A0 61 40 05 00 25 03 10 D3 02 64 A4 04 CB 40 13 2D 2B 81 2A 9A 60 48 A6 98 89 01 A6 21 73 8A 00 4C D0 01 BA 99 2C 33 4C 41 9A 04 04 FA 1A 2E 02 67 D6 90 1F FF D9 AA 55";
    
    // 分配内存用于存储二进制数据
    unsigned char *bin_data = (unsigned char *)malloc(strlen(hex_data) / 2);
    if (!bin_data) {
        perror("内存分配失败");
        return 1;
    }
    
    // 转换十六进制字符串为二进制数据
    int bin_size = hex_to_bin(hex_data, bin_data, strlen(hex_data) / 2);
    
    // 找到JPEG数据的起始位置 (FF D8 FF)
    int start_offset = 0;
    for (int i = 2; i < bin_size - 2; i++) {
        if (bin_data[i] == 0xFF && bin_data[i+1] == 0xD8 && bin_data[i+2] == 0xFF) {
            start_offset = i;
            break;
        }
    }
    
    // 找到JPEG数据的结束位置 (FF D9)
    int end_offset = 0;
    for (int i = bin_size - 3; i >= start_offset; i--) {
        if (bin_data[i] == 0xFF && bin_data[i+1] == 0xD9) {
            end_offset = i + 2; // 包含FF D9
            break;
        }
    }
    
    // 计算JPEG数据的大小
    int jpeg_size = end_offset - start_offset;
    
    // 计算Base64输出长度并分配内存
    int output_length = 4 * ((jpeg_size + 2) / 3);
    char *base64_output = (char *)malloc(output_length + 1);
    if (!base64_output) {
        perror("内存分配失败");
        free(bin_data);
        return 1;
    }
    
    // 进行Base64编码
    base64_encode(bin_data + start_offset, jpeg_size, base64_output);
    
    // 创建完整的Base64字符串，包括MIME类型前缀
    char *full_output = (char *)malloc(output_length + 30); // +30为MIME类型前缀预留空间
    if (!full_output) {
        perror("内存分配失败");
        free(bin_data);
        free(base64_output);
        return 1;
    }
    
    sprintf(full_output, "data:image/jpeg;base64,%s", base64_output);
    
    // 输出前100个字符作为示例
    printf("Base64 JPEG (截取前100个字符):\n");
    int len = strlen(full_output);
    if (len > 100) {
        char temp = full_output[100];
        full_output[100] = '\0';
        printf("%s...\n", full_output);
        full_output[100] = temp;
    } else {
        printf("%s\n", full_output);
    }
    
    // 将完整的Base64字符串写入文件
    FILE *outfile = fopen("output.txt", "w");
    if (outfile) {
        fprintf(outfile, "%s", full_output);
        fclose(outfile);
        printf("\n完整的Base64字符串已写入output.txt文件\n");
    } else {
        perror("无法创建输出文件");
    }
    
    // 释放内存
    free(bin_data);
    free(base64_output);
    free(full_output);
    
    return 0;
}

#ifndef INCLUDE_UTIL_STRING_UTIL_H_
#define INCLUDE_UTIL_STRING_UTIL_H_

#ifndef _SIZE_T_DEFINED
#define _SIZE_T_DEFINED
#undef size_t
#ifdef _WIN64
typedef unsigned long long size_t;
#else
typedef unsigned int size_t;
#endif /* _WIN64 */
#endif /* _SIZE_T_DEFINED */

#define CLIENT_TIME_LENGTH 		10

char* combine_strings(int strAmount, char *str1, ...);
void string_malloc(char **str, int length);
char* get_client_timestamp(void);
int CopyStrValue(char **dst, const char *src, int length);
int StringLength(char *str);

#endif /* INCLUDE_UTIL_STRING_UTIL_H_ */

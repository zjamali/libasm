#include <errno.h>
#include <string.h>
size_t ft_strlen(char *str);
char 	*ft_strcpy(char *dst,char *src);
int 	ft_strcmp(const char *s1,const char *s2);
size_t	ft_write(int fildes, const void *buf, size_t nbyte);
size_t	ft_read(int fildes, void *buf, size_t nbyte);
char *ft_strdup(const char *s1);
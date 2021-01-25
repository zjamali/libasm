/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zjamali <zjamali@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/14 08:44:56 by zjamali           #+#    #+#             */
/*   Updated: 2021/01/25 19:19:15 by zjamali          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
size_t ft_strlen(char *str);
char 	*ft_strcpy(char *dst,char *src);
int 	ft_strcmp(const char *s1,const char *s2);
size_t	ft_write(int fildes, const void *buf, size_t nbyte);
size_t	ft_read(int fildes, void *buf, size_t nbyte);
char *ft_strdup(const char *s1);
int main()
{
	//char dst[20] = "hello Zouhahr";
	//char src[20] = "hello xouhair";
	//int result = ft_strcmp(dst, src);
	//int i = ft_write(0,NULL,1);
	//int i  = ft_strlen("Zouhair");
	//printf("mine --> %d",i);
	//int result1 = strcmp(dst, src);
	//printf("     ret--> %d\n     error --> %s",i,strerror(errno));

	char *s = ft_strdup(NULL);
	//printf("{%s}",s);
	printf("  {%s}  error ->%s",s,strerror(errno));
	
	return 0;
}
/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zjamali <zjamali@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/28 16:40:53 by zjamali           #+#    #+#             */
/*   Updated: 2021/01/28 18:14:12 by zjamali          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
void        test_strlen(char *str)
{
    int a;
    int s;
    s = strlen(str);
    printf("sys_strlen |%d| %s\n", s, str);
    a = ft_strlen(str);
    printf("asm_strlen |%d| %s\n", a, str);
}

void        test_strcmp(void)
{
    int     i;
    char    *s1;
    char    *s2;
    
	s1 = strdup("zouhair");
	s2 = strdup("zouhair");
    i = strcmp(s1, s2);
    printf("sys_strcmp |%d|\n", i);
    i = ft_strcmp(s1, s2);
    printf("asm_strcmp |%d|\n", i);
}
void        test_write(void)
{
    int     fd;
    int     fd1;
    char    *buffer;
    ssize_t i;

    buffer = "Hello, Africa!";
	buffer = malloc(-1);
    i = write(1, buffer, ft_strlen(buffer));
    printf("\nerrno_sys ==> {%d}\n", errno);
    i = ft_write(1, buffer, ft_strlen(buffer));
    printf("\nmy_errno ==> {%d}\n", errno);
    close(fd1);
}
void        test_read(void)
{
    int     fd;
    char    *buff;
    ssize_t i;
	buff = malloc(10);
    bzero(buff,10);
    i = ft_read(0, buff, 10);
    printf("my_read |%zu| |%s|\n", i, buff);
	
	i = read(0, buff, 10);
    printf("sys_read |%zu| |%s|\n", i, buff);
}
int         main(void)
{
    char *str[5];
    char *sy_dup;
    char *my_dup;
    char dest[100];
    str[0] = "";
    str[2] = NULL;
    str[4] = "1337FUTUREISLOADING!";
    test_strlen(str[0]);
	
    strcpy(dest, str[4]);
    printf("sys_cpy |%s|, |%s|\n", str[4], dest);
    ft_strcpy(dest, str[4]);
    printf("asm_cpy |%s|, |%s|\n", str[4], dest);
	
    test_strcmp();
	
    test_write();

    test_read();

    sy_dup = strdup("salam");
    printf("sys_copy|%s| |%zu|\n", sy_dup, ft_strlen(sy_dup));
    my_dup = ft_strdup("salam");
    printf("asm_copy|%s| |%zu|\n", my_dup, ft_strlen(my_dup));
	
    free(sy_dup);
    free(my_dup);
    return (0);
}

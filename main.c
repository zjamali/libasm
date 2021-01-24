/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zjamali <zjamali@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/14 08:44:56 by zjamali           #+#    #+#             */
/*   Updated: 2021/01/24 17:16:21 by zjamali          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
size_t ft_strlen(char *str);
char 	*ft_strcpy(char *dst,char *src);
int 	ft_strcmp(const char *s1,const char *s2);
int main()
{
	char dst[20] = "hello Zouhahr";
	char src[20] = "hello xouhair";
	int result = ft_strcmp(dst, src);
	////int i = getinput();
	printf("mine --> %d",result);
	int result1 = strcmp(dst, src);
	printf("\n     --> %d",result1);
	return 0;
}
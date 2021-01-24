/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zjamali <zjamali@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/14 08:44:56 by zjamali           #+#    #+#             */
/*   Updated: 2021/01/24 10:10:35 by zjamali          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <stdio.h>
size_t ft_strlen(char *str);
char *ft_strcpy(char *dst,char *src);
int main()
{
	char src[20] = "hello world";
	char dst[20];
	char *result = ft_strcpy(dst, src);	
	//int i = getinput();
	printf("%s",result);
	return 0;
}
/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: zjamali <zjamali@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/01/14 08:44:56 by zjamali           #+#    #+#             */
/*   Updated: 2021/01/23 19:07:10 by zjamali          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include <stdio.h>
size_t ft_strlen(char *str);

int main()
{
	char src[20] = "hello world";
	char dst[20];
	ft_strcpy(dst, src);	
	//int i = getinput();
	printf("%zu",ft_strlen("hello mm"));
	return 0;
}
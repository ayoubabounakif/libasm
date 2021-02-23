/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aabounak <aabounak@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/10 01:37:53 by aabounak          #+#    #+#             */
/*   Updated: 2020/11/10 06:18:44 by aabounak         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/uio.h>
#include <sys/errno.h>

# define RESET 2147483647

ssize_t	ft_write(int fd, const void *buf, size_t count);
ssize_t	ft_read(int fildes, void *buf, size_t nbyte);
size_t	ft_strlen(const char *s);
char	*ft_strcpy(char *dst, const char *src);
int		ft_strcmp(const char *s1, const char *s2);
char	*ft_strdup(const char *s1);

int		main(void)
{
	char	src[1024] = "MAMA AFRICA";
	char	dst[1024] = "420";

	char	*rdi = "aabounakWEJKQWEQWKLL/////*WEJKQWEQWKLL/////*";
	char	*rsi = "JKaabounakEWKaabounakJQWEJKQWEQWKLL/////*//*+65+5+55+6";

	int		len;
	int		n, i;
	int		fd, fd_2;

	// printf("------ FT_STRLEN & WRITE ------\n");
	// len = ft_strlen(src);
	// ft_write(1, &src, len);
	// write(1, "\n", 1);
	// write(1, &src, len);
	// write(1, "\n", 1);
	// printf("-------------------------------\n");

	printf("------ FT_STRCMP ------\n");
	i = ft_strcmp(src, dst);
	printf("ft_strcmp = %d\n", i);
	n = strcmp(src, dst);
	printf("sys strcmp =%d\n", n);
	printf("-----------------------\n");


	printf("------ ERRNO TEST -----\n");
    fd = write(FOPEN_MAX + 1, "abcdefghijklmnopqrstuvwxyz\n", 27);
	perror("sys write errno");
	errno = RESET;
    fd_2 = ft_write(FOPEN_MAX + 1, "abcdefghijklmnopqrstuvwxyz\n", 27);
	perror("ft_write errno");
    printf("sys write = %d\nft_write = %d\n", fd, fd_2);
	printf("-----------------------\n");

	printf("------ FT_STRDUP ------\n");
	rsi = ft_strdup(rdi);
	printf("ft_strdup = %s\nsys strdup = %s\n", rdi, rsi);
	printf("-----------------------\n");
	return (0);
}
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
	char	*s = "wnwe;'qw.'.eqw;'.eqw;'.e;'.qw";
	char	*d = "wnwe;'qw.e';qw.e;.qw;'.eqw;'.eqw;'.e;'.qw";

	char	*rdi = "Ayoub";
	char	*rsi = "";
	int		len;
	int		n;
	int		i;
	int		a, b;

	// Strlen and write
	// len = ft_strlen(s);
	// ft_write(1, &s, len);
	// write(1, "\n", 1);
	// write(1, &s, len);
	// write(1, "\n", 1);

	// Strcmp
	// i = ft_strcmp(s, d);
	// printf("%d\n", i);
	// n = strcmp(s, d);
	// printf("%d\n", n);


	// ERRNO test
    // a = write(FOPEN_MAX + 1, "abcdefghijklmnopqrstuvwxyz\n", 27);
	// perror("sys write errno");
	// errno = RESET;
    // b = ft_write(FOPEN_MAX + 1, "abcdefghijklmnopqrstuvwxyz\n", 27);
	// perror("ft_write errno");
    // printf("sys write = %d\nft_write = %d\n", a, b);

	// strdup
	rsi = ft_strdup(rdi);
	printf("ft_strdup = rdi -> %s || rsi -> %s\n", rdi, rsi);
	return (0);
}
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
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/uio.h>
#include <errno.h>

ssize_t	ft_write(int fd, const void *buf, size_t count);
ssize_t	ft_read(int fildes, void *buf, size_t nbyte);
size_t	ft_strlen(const char *s);
char	*ft_strcpy(char *dst, const char *src);
int		ft_strcmp(const char *s1, const char *s2);

int		main(void)
{
	char	s[20] = "A";
	char	d[15] = "Ayoub";
	int		len;
	int		n;
	int		i;

	// len = ft_strlen(s);

	// ft_write(1, &s, len);
	// write(1, "\n", 1);
	// write(1, &s, len);
	// write(1, "\n", 1);

	i = ft_strcmp(s, d);
	printf("%d\n", i);

	n = strcmp(s, d);
	printf("%d\n", n);
	return (0);
}
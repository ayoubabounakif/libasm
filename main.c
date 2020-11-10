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

ssize_t	ft_write(int fd, const void *buf, size_t count);
ssize_t	ft_read(int fildes, void *buf, size_t nbyte);
size_t	ft_strlen(const char *s);
char	*ft_strcpy(char *dst, const char *src);
int		ft_strcmp(const char *s1, const char *s2);

int		main()
{
	char	s[] = "Ayo";
	char	d[] = "Ayou"; 
	

	int	n = ft_strlen(s);

	//ft_write(1, &s, n);
	int i = ft_strcmp(s, d);
	printf("%d\n", i);
	i = strcmp(s, d);
	printf("%d\n", i);
	return (0);
}
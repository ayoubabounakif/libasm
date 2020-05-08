#include <stdio.h>
#include <string.h>
#include <unistd.h>

ssize_t	ft_write(int fd, const void *buf, size_t count);
// int	ft_strlen(const char *s);

int	main()
{
	char	s[] = "Ayoub\n";

	int	n = strlen(s);

	ft_write(1, &s, strlen(s));
	write(1, &s, strlen(s));
	return (0);
}

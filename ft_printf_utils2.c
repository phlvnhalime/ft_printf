#include "ft_printf.h"

int	ft_putchar_re(char n)
{
	return (write(1, &n, 1));
}

int	ft_putstr(char *str)
{
	int	turn;
	int	check;

	turn = 0;
	if (str == NULL)
		return (write(1, "(null)", 6));
	while (*str)
	{
		check = ft_putchar_re(*str++);
		if (check == -1)
			return (-1);
		turn += check;
	}
	return (turn);
}

int	ft_putnbr(unsigned int i)
{
	int	check;
	int	turn;

	turn = 0;
	// if (i < 0)
	// {
	// 	check = ft_putchar_re('-');
	// 	if (check == -1)
	// 		return (-1);
	// 	turn += check;
	// 	i = -i;
	// }
	if (i >= 10)
	{
		check = ft_putnbr(i / 10);
		if (check == -1)
			return (-1);
		turn += check;
	}
	check = ft_putchar_re((i % 10) + '0');
	if (check == -1)
		return (-1);
	turn += check;
	return (turn);
}

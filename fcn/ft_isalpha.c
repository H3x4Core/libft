/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isalpha.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: matwinte <marvin@42lausanne.ch>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/08/22 20:47:54 by matwinte          #+#    #+#             */
/*   Updated: 2022/08/23 23:55:40 by matwinte         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_isalpha(char c)
{
	int n = c;
	if (n < 0 || n > 127)
		return (0);
	if ((c < 'A' || 'z' < c) || (c > 'Z' && c < 'a'))
		return (0);
	return (1);
}

#if DEBUG
int main(void)
{
	int i = -1;
	while (i < 530)
	{
		printf("ft: %i %c = %i\n", i, i, ft_isalpha(i));
		printf("or: %i %c = %i\n", i, i, isalpha(i));
		i++;
	}
	return (0);
}
#endif

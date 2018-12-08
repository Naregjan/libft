/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ikourkji <ikourkji@student.42.us.or>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/12/01 20:37:39 by ikourkji          #+#    #+#             */
/*   Updated: 2018/12/01 21:26:33 by ikourkji         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_strcmp(const char *s1, const char *s2)
{
	size_t	len1;
	size_t	len2;
	size_t	n;
	int		res;

	len1 = ft_strlen(s1);
	len2 = ft_strlen(s2);
	n = len1 < len2 ? len1 : len2;
	res = ft_strncmp(s1, s2, n);
	if (res == 0 && len1 != len2)
		res = (unsigned char)s1[n] - (unsigned char)s2[n];
	return (res);
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnewcpy.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ikourkji <ikourkji@student.42.us.or>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/12/06 23:04:29 by ikourkji          #+#    #+#             */
/*   Updated: 2018/12/06 23:10:15 by ikourkji         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnewcpy(char *s)
{
	char	*cpy;

	if ((cpy = ft_strnew(ft_strlen(s))))
		cpy = ft_strcpy(cpy, s);
	return (cpy);
}

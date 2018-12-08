# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ikourkji <ikourkji@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/30 20:28:37 by ikourkji          #+#    #+#              #
#    Updated: 2018/11/30 21:28:47 by ikourkji         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LF = libft

NAME = $(LF).a

SRC = ft_*.c $(LF).h

CMP = ft_*.o $(LF).h.gch

all: $(NAME)

$(NAME):
	gcc -Wall -Wextra -Werror -c $(SRC)
	ar rc $(NAME) $(CMP)
	ranlib $(NAME)

clean:
	rm -f $(CMP)

fclean: clean
	rm -f $(NAME)

re: fclean all

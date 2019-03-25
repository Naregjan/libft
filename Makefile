# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ikourkji <ikourkji@student.42.us.or>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/30 20:28:37 by ikourkji          #+#    #+#              #
#    Updated: 2019/03/24 23:46:06 by ikourkji         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a

INC		= -I ./inc

_SRC	= bits/ft_*.c is/ft_*.c lst/ft_*.c mem/ft_*.c put/ft_*.c str/ft_*.c
SRC		= $(patsubst %,src/%,$(_SRC))

_OBJ	= ft_*.o
OBJ		= $(patsubst %,obj/%,$(_OBJ))

RED		= \033[0;31m
GREEN	= \033[0;32m
NC		= \033[0m

all: $(NAME)

$(NAME):
	@echo "compiling libft..."
	@gcc -Wall -Wextra -Werror $(INC) -c $(SRC)
	@mv $(_OBJ) obj
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "$(GREEN)complete!$(NC)"

clean:
	@rm -f $(OBJ)
	@echo "$(RED)removed .o files$(NC)"

fclean: clean
	@rm -f $(NAME)
	@echo "$(RED)removed $(NAME)$(NC)"

re: fclean all

.PHONY: all $(NAME) clean fclean re

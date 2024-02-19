# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ebensalt <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/02 00:38:27 by ebensalt          #+#    #+#              #
#    Updated: 2021/12/03 02:40:34 by ebensalt         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
FILES = ft_printf.c \
		ft_puthexa.c \
		ft_puthexap.c \
		ft_putnbr.c \
		ft_putstr.c \
		ft_putunbr.c \
		libft/ft_putchar_fd.c
OBJECTS = $(FILES:.c=.o)
CC = cc
CFLAGS = -Wall -Werror -Wextra
all: $(NAME)
$(NAME): $(OBJECTS)
		ar rc $(NAME) $(OBJECTS)
clean:
		rm -rf *.o */*.o
fclean: clean
		rm -rf $(NAME)
re: fclean all

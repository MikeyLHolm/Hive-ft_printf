# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mlindhol <mlindhol@student.hive.fi>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/16 09:28:21 by mlindhol          #+#    #+#              #
#    Updated: 2020/01/22 13:02:49 by mlindhol         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=libft.a

SRCS=ft_atoi.c ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c \
		ft_isdigit.c ft_isprint.c ft_itoa.c	ft_memalloc.c ft_memccpy.c \
		ft_memchr.c ft_memcmp.c ft_memcpy.c ft_memdel.c ft_memmove.c \
		ft_memset.c ft_putchar.c ft_putchar_fd.c ft_putendl.c ft_putendl_fd.c \
		ft_putnbr.c ft_putnbr_fd.c ft_putstr.c ft_putstr_fd.c ft_strcat.c \
		ft_strchr.c ft_strclr.c ft_strcmp.c ft_strcpy.c ft_strdel.c \
		ft_strdup.c ft_strequ.c ft_striter.c ft_striteri.c ft_strjoin.c \
		ft_strlcat.c ft_strlen.c ft_strmap.c ft_strmapi.c ft_strncat.c \
		ft_strncmp.c ft_strncpy.c ft_strnequ.c ft_strnew.c ft_strnstr.c \
		ft_strrchr.c ft_strsplit.c ft_strstr.c ft_strsub.c ft_strtrim.c \
		ft_tolower.c ft_toupper.c ft_swap.c ft_islower.c ft_isupper.c \
		ft_abs.c ft_intlen.c ft_lstnew.c ft_lstdelone.c ft_lstdel.c \
		ft_lstadd.c ft_lstiter.c ft_lstmap.c get_next_line.c \
		ft_isspace.c ft_word_count.c ft_strndup.c ft_itoa_uimax.c \
		ft_intlen_uimax.c ft_itoa_base.c ft_ftoa.c ft_pow.c ft_tolower_str.c \
		ft_toupper_str.c

OBJ=$(subst .c,.o,$(SRCS))

INCLUDES=includes/libft.h includes/get_next_line.h

all: $(NAME)

$(NAME): $(SRCS) includes/libft.h
		@gcc -Wall -Wextra -Werror -c $(SRCS) -I$(INCLUDES)
		@ar rc $(NAME) $(OBJ)
		@ranlib $(NAME)
		@rm includes/get_next_line.h.gch
clean:
		@/bin/rm -rfv $(OBJ)

fclean: clean
		@/bin/rm -rfv $(NAME)

re: fclean all

.PHONY: clean fclean all re

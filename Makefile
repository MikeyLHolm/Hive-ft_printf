# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mlindhol <mlindhol@student.hive.fi>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/15 08:24:20 by mlindhol          #+#    #+#              #
#    Updated: 2020/01/29 14:32:41 by mlindhol         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = display_c.c display_d.c display_s.c preparse.c \
		ft_printf.c parsing.c display_p.c utility.c \
		display_pct.c length_conversions.c display_u.c \
		display_o.c display_x.c display_f.c display_b.c

SDIR = srcs

SRCS = $(addprefix $(SDIR)/, $(SRC))

OBJ = $(SRC:.c=.o)

CC = gcc 

FLAGS = -Wall -Wextra -Werror

HEADER = ./includes/ft_printf.h

LIB_NAME = libft.a
LIB_PATH = ./libft/
LIB = $(LIB_PATH)$(LIB_NAME)

COLOR_RESET = \033[0m
COLOR_PENDING = \033[01;33m
COLOR_SUCCESS = \033[1;32m
COLOR_DEFAULT = \033[1;34m

all: $(NAME)

$(NAME):
	@echo "$(LIB_NAME)     [$(COLOR_PENDING)Compiling...$(COLOR_RESET)]"
	@make -C $(LIB_PATH)
	@echo "\033[A\033[K\033[A"
	@echo "$(LIB_NAME) [$(COLOR_SUCCESS)OK$(COLOR_RESET)]"

	@echo "$(LIB_NAME)     [$(COLOR_PENDING)Copying to root...$(COLOR_RESET)]"
	@cp $(LIB) $(NAME)
	@echo "\033[A\033[K\033[A"
	@echo "$(LIB_NAME) [$(COLOR_SUCCESS)Copy to root OK$(COLOR_RESET)]"

	@echo "$(NAME)     [$(COLOR_PENDING)Compiling...$(COLOR_RESET)]"
	@$(CC) $(FLAGS) -I $(HEADER) -I $(LIB_PATH)/includes -c $(SRCS)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo "\033[A\033[K\033[A"
	@echo "$(NAME)     [$(COLOR_SUCCESS)OK$(COLOR_RESET)]"
	@echo "        [$(COLOR_SUCCESS)FINISHED$(COLOR_RESET)]"

norme:
	norminette .

run:
	$(CC) $(NAME) main.c
	./a.out

clean:
	@make -C $(LIB_PATH) clean
	@rm -f $(OBJ)

fclean: clean
	@make -C $(LIB_PATH) fclean
	@rm -rfv $(NAME)

debug: fclean
	@make -C $(LIB_PATH)
	@$(CC) $(FLAGS) ../info/main.c $(SRCS) $(LIB) -g -o $(NAME)

re: fclean all

.PHONY: all clean debug fclean norme re

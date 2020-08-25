# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    MakefileV@                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lhay <marvin@42.fr>                        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/08/24 23:23:28 by lhay              #+#    #+#              #
#    Updated: 2020/08/25 12:59:27 by avarricc         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

FOLDER = srcs

SRCS = $(addprefix ${FOLDER}/, ft_putchar.c ft_putstr.c ft_strcmp.c ft_strlen.c ft_swap.c)

OBJS_O = ${SRCS:.c=.o}

CC = gcc

FLAG = -Wall -Werror -Wextra

RM = rm -f 

.c.o:
	${CC} ${FLAG} -I includes -c $< -o ${<:.c=.o}

all: ${NAME}

${NAME}: ${OBJS_O}
	ar rc ${NAME} ${OBJS_O}


clean:
	${RM} ${OBJS_O}

fclean: clean
	${RM} ${NAME}

re: fclean all clean

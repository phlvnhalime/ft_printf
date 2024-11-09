# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hpehliva <hpehliva@student.42heilbronn.de  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/06 10:42:11 by hpehliva          #+#    #+#              #
#    Updated: 2024/11/06 13:02:59 by hpehliva         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc

CFLAGS = -Wall -Werror -Wextra

AR = ar rcs

RM = rm -r

OBJDIR = Objects

SRCS = ft_printf_utils.c ft_printf_utils2.c ft_printf.c

OBJS = ${SRCS:.c=${OBJDIR}.o}

all: ${NAME}

${NAME}: ${OBJS}
	${AR} ${NAME} ${OBJS}

${OBJDIR}/%.o: %.c
	mkdir ${OBJDIR}
	${CC} ${CFLAGS} -o $@ -c $<
clean:  
	${RM} ${OBJS}
	${RM} -r ${OBJDIR}

fclean: clean
	${RM} ${NAME}

re: fclean all

.PHONY: all clean fclean re

NAME		= libft.a

CC			= gcc

CFLAGS		= -Wall -Wextra -Werror

INCLUDE	= -I include/

FCNF		= fcn/

FCNS		= ${FCNF}ft_isalpha.c ${FCNF}ft_isdigit.c ${FCNF}ft_isalnum.c ${FCNF}ft_isascii.c ${FCNF}ft_isprint.c ${FCNF}ft_strlen.c

SRCS		= ${FCNS}

OBJS		= ${SRCS:.c=.o}

RM			= rm -f

.c.o	:
			${CC} ${CFLAGS} ${INCLUDE} -c $< -o $@

all		:	${NAME}

${NAME}	:	${OBJS}
			ar rc ${NAME} ${OBJS}
			ranlib ${NAME}

clean 	:
			${RM} ${OBJS}

fclean	:	clean
			${RM} ${NAME}

re		:	fclean all

.PHONY	:	all clean fclean re

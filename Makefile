NAME		= libft.a

CC			= gcc

CFLAGS		= -Wall -Wextra -Werror

INCLUDES	= -I includes/

FTCF		= ftc/

FTCS		= ${FTCF}ft_isalpha.c ${FTCF}ft_isdigit.c ${FTCF}ft_isalnum.c ${FTCF}ft_isascii.c ${FTCF}ft_isprint.c ${FTCF}ft_strlen.c

SRCS		= ${FTCS}

OBJS		= ${SRCS:.c=.o}

RM			= rm -f

.c.o	:
			${CC} ${CFLAGS} ${INCLUDES} -c $< -o $@

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

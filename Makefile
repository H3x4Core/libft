NAME		= libft.a

CC			= gcc

CFLAGS		= -Wall -Wextra -Werror

INCLUDE		= -I include/

FCNF		= fcn/

FCNS		= ${FCNF}ft_isalpha.c ${FCNF}ft_isdigit.c ${FCNF}ft_isalnum.c ${FCNF}ft_isascii.c ${FCNF}ft_isprint.c ${FCNF}ft_strlen.c

SRC			= ${FCNS}

OBJ			= ${SRC:.c=.o}

RM			= rm -f

.c.o	:
			${CC} ${CFLAGS} ${INCLUDE} -c $< -o $@

all		:	${NAME}

${NAME}	:	${OBJ}
			ar rc ${NAME} ${OBJ}
			ranlib ${NAME}

clean 	:
			${RM} ${OBJ}

fclean	:	clean
			${RM} ${NAME}

re		:	fclean all

so:
			$(CC) -nostartfiles -fPIC $(CFLAGS) $(SRC)
			gcc -nostartfiles -shared -o libft.so $(OBJ)

.PHONY	:	all clean fclean re

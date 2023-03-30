##
## EPITECH PROJECT, 2023
## make
## File description:
## connerie
##

CC = gcc

NAME = replace_vowel

SRC = 	main.c				\
		./src/replace.c		\
		./src/my_put.c		\

OBJ = $(SRC:.c=.o)

CFLAG = -iquote include

all: $(NAME)

$(NAME):
	$(CC) $(SRC) -o $(NAME) $(CFLAG)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: re fclean clean all

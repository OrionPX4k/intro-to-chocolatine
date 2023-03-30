##
## EPITECH PROJECT, 2023
## make
## File description:
## connerie
##

CC = gcc

NAME = replace_vowel

SRC = 	main.c				\
		./src/my_put.c		\

OBJ = $(SRC:.c=.o)

CFLAG = -iquote include

TEST_NAME = tests_run

TEST_OBJ = ./tests/tests_run.c	\

all: $(NAME)

$(NAME):
	$(CC) $(SRC) -o $(NAME) $(CFLAG)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

tests_run: 	clean
		$(CC) -o $(TEST_NAME) $(TEST_OBJ) --coverage -lcriterion
		./$(TEST_NAME)

.PHONY: re fclean clean all tests_run

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

TEST_NAME = tests_run

TEST_SRC = 	./tests/tests_run.c	\

TEST_OBJ =	$(TEST_SRC:.c=.o)

TEST_FLAG = 	--coverage -lcriterion

all: $(NAME)

$(NAME):
	$(CC) $(SRC) -o $(NAME)

clean:
	rm -f $(OBJ)
	rm -f $(TEST_OBJ)

fclean: clean
	rm -f $(NAME)
	rm -f $(TEST_NAME)

tests_run:	$(TEST_OBJ) $(OBJ)
		$(CC) $(TEST_SRC) $(SRC) -o $(TEST_NAME) $(TEST_FLAG)
		./$(TEST_NAME)

re: fclean all

.PHONY: re fclean clean all tests_run

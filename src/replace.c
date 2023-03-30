/*
** EPITECH PROJECT, 2023
** replace
** File description:
** letter_on_string
*/

#include "my.h"

static int cond_change2(char **av, int i)
{
    if (av[1][i] == 'a' || av[1][i] == 'A') {
        my_putchar('4');
        return 1;
    }
    if (av[1][i] == 'e' || av[1][i] == 'E') {
        my_putchar('3');
        return 1;
    }
    if (av[1][i] == 'i' || av[1][i] == 'I') {
        my_putchar('1');
        return 1;
    }
    if (av[1][i] == 'o' || av[1][i] == 'O') {
        my_putchar('0');
        return 1;
    }
    return 0;
}

static int cond_change(char **av, int i)
{
    cond_change2(av, i);
    if (av[1][i] != 'o' || av[1][i] != 'O' ||
        av[1][i] != 'i' || av[1][i] != 'I' ||
        av[1][i] != 'e' || av[1][i] != 'E' ||
        av[1][i] != 'a' || av[1][i] != 'A')
        my_putchar(av[1][i]);
    return 0;
}

void letter_to_number(char **av)
{
    for (int i = 0; av[1][i] != '\0'; i++) {
        if (av[1][i] == cond_change(av, i))
            my_putstr(av[1]);
    }
    my_putchar('\n');
}

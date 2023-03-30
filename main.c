/*
** EPITECH PROJECT, 2023
** solostumper4
** File description:
** chocolatine
*/

#include "my.h"

int main(int ac, char **av)
{
    if (ac != 2) {
        write(2, "try with 2 arg\n", 15);
            return 84;
    }
    letter_to_number(av);
    return 0;
}

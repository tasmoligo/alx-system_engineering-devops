#ifndef ZOMBIE_H
#define ZOMBIE_H

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>

/**
  * infinite_while - runs infinite loop
  * Return: 0
  */
int infinite_while(void)
{
    while (1)
    {
        sleep(1);
    }
    return (0);
}

#endif

#include "zombie.h"

/**
  * main - creates 5 zombie processes
  * Return: 0
  */

int main(void)
{
	pid_t pid;
	char c;

	c = 0;
	while (c < 5)
	{
		pid = fork();
		if (pid > 0)
		{
			printf("Zombie process created, PID: %i\n", pid);
			sleep(1);
			c += 1;
		}
		else
		{
			exit(0);
		}
	}
	infinite_while();
	return (EXIT_SUCCESS);
}

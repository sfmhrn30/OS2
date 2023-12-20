#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
int main()
{
    int pid = fork();

    if (pid > 0)
        printf("in parent process\n");

    else if (pid == 0)
    {
        sleep(9);
        printf("in child process\n");
    }
}


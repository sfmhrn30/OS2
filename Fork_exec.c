#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>

int main()
{
    printf(" Before fork");
    int a;                                  
    printf(" Process Id of parent %d \n", getpid());
    int rf = fork();

    if (rf == 0) 
    {
        printf("Inside child process \n");
        printf(" Process Id of child pid= %d  rf=%d \n ", getpid(), rf);
        printf("Child process: to execute the prime number Program\nEnter a number: ");
        scanf("%d", &a);
        int flag = 0;
        for (int i = 2; i <= a / 2; i++)
        {
            if (a % i == 0)
            {
                flag = 1;
                break;
            }
        }
        if (flag == 0)
        {
            printf("Given number %d is a prime number\n", a);
        }
        else
        {
            printf("Given number %d is not a prime number\n", a);
        }
    }
    else if (rf > 0) 
    {
        printf("Inside parent process");
        printf(" Process Id of parent pid=%d rf=%d \n", getpid(), rf);
        printf("Parent process: to execute the factorial of a number\nEnter a number: ");
        scanf("%d", &a);
        int total = 1, i = 1;
        while (i <= a)
        {
            total = total * i;
            i = i + 1;
        }
        printf("Factorial value is: %d\n", total);
    }
    else
    { 
        printf(" Fork unsucessful \n Indide parent and Process Id of parent pid= %d  rf=%d \n  ", getpid(), rf);
    }
    printf("End of process %d\n", getpid());
    return 0;
}

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#include <string.h>

#include "/home/jo/Desktop/ref/c/pf.h"

int main(void)
{
    pf_str_repeat("#", 100, "\n");
    printf("#");
    pf_str_center("Welcome to PAYAMENT_TABLE.JO logging", 98, ' ', "#\n");
    pf_str_repeat("#", 100, "\n");
    printf("%s\n", DOCMNT);

    char command[1024];
    while (command[0] != 'q')
    {
        FILE *log = fopen("/home/jo/Desktop/ref/c/log.txt", "r");
        char *table = pf_fil_redstr(log);

        printf("PAYMENT_TABLE.JO> ");
        scanf("%s", command);
        switch (command[0])
        {
            case ADD:
                pf_fil_putstr("/home/jo/Desktop/ref/c/log.txt", log, 5, "hjb");
                break;
            case RMV:
                printf("# RMV\n");
                break;
            case EDT:
                printf("# EDT\n");
                break;
            case VIW:
                printf("%s\n", table);
                free(table);
                break;
            case SRS:
                printf("%li\n", pf_fil_linlen(log, "\n"));
                break;
            case SUM:
                printf("# SUM\n");
                break;
            case HLP:
                printf("%s\n", DOCMNT);
                break;
            case QUT:
                printf("# Goodbye :)\n\n");
                printf("© 2022 PAYMEMT_TABLE.JO\nPowered by JO\n");
                break;
        
            default:
                printf("# Wrong syntax\n# Type \"h\" to show the documentaion\n");
                break;
        }

        fclose(log);
    }
}
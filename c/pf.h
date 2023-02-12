#include <stdio.h>
#include <stdlib.h>

#define MYNAME "pf"
#define DOCMNT "# These is the document of PAYMENT_TABLE.JO\n# [1] - Commands :-\n#\tAdd method\t\t: a <s - d - c - r> <coast> [indexNumber] [describtion]\n#\tEdit method\t\t: e <s - d - c - r> <coast> <indexNumber> [describtion]\n#\tView method\t\t: v\n#\tSearch method\t\t: s <s - n><n> <text>\n#\t\t\t\t  s <s - n><p> <text-text-text-text>\n#\tSummation method\t: + <<num>,<num-num>,...> [<num>,<num-num>,...]\n#\tRemove method\t\t: r <indexNumber>\n#\tHelp method\t\t: h\n#\tQuit\t\t\t: q\n#\n# [2] - Types :-\n#\t[REM]\t\t\t: payment\n#\t[SAL]\t\t\t: salary\n#\t[DBT]\t\t\t: salary\n#\t[CHR]\t\t\t: charity\n#\t[NOT]\t\t\t: nothing salary, debt or payment"

enum CMD_ENUM
{
    ADD = 'a',
    RMV = 'r',
    EDT = 'e',
    VIW = 'v',
    SRS = 's',
    SUM = '+',
    HLP = 'h',
    QUT = 'q',
};

void            pf_str_repeat(char str[], unsigned long rep, char end[]);
void            pf_str_center(char str[], unsigned long len, char rep, char end[]);
void            pf_fil_putstr(char filpth[], FILE *fil, unsigned long psn, char str[]);
unsigned long   pf_str_length(char str[]);
unsigned long   pf_str_search(char str[], unsigned long bgn, char wrd[]);
unsigned long   pf_fil_length(FILE *fil);
unsigned long   pf_fil_linlen(FILE *fil, char spt[]);
char           *pf_fil_redstr(FILE *fil);


void pf_str_repeat(char str[], unsigned long rep, char end[])
{
    for (unsigned long i = 0; i < rep; i++)
        printf("%s", str);
    printf("%s", end);
}
void pf_str_center(char str[], unsigned long len, char rep, char end[])
{
    if (len > pf_str_length(str))
    {
        for (unsigned long i = 0; i < (len - pf_str_length(str)) / 2; i++)
            printf("%c", rep);
        printf("%s", str);
        for (unsigned long i = 0; i < (len - pf_str_length(str)) / 2 + (pf_str_length(str) % 2) ? 1 : 0; i++)
            printf("%c", rep);
        printf("%s", end);
    }
}
void pf_fil_putstr(char filpth[], FILE *fil, unsigned long psn, char str[])
{
    char *filstr = pf_fil_redstr(fil);
    FILE *nwfil1 = fopen(filpth, "w");
    fclose(nwfil1);
    FILE *nwfil2 = fopen(filpth, "a");
    printf("%s", filstr);
    fputc('c', nwfil2);
    // for (unsigned long i = 0; i < pf_str_length(filstr); i++)
    // {
    //     if (psn != i)
    //         fputc(filstr[i], nwfil2);
    //     else
    //         for (unsigned long x = 0; x < pf_str_length(str); x++)
    //             fputc(str[x], nwfil2);
    //         fputc(filstr[i], nwfil2);
    // }
    free(filstr);
}
unsigned long pf_str_length(char str[])
{
    unsigned long i = 0;
    while (str[i] != '\0')
        ++i;
    return i;
}
unsigned long pf_str_search(char str[], unsigned long bgn, char wrd[])
{
    bool status = false;
    unsigned long index;
    for (unsigned long i = bgn; i < pf_str_length(str); i++)
    {
        if (str[i] == wrd[0])
        {
            index = i;
            for (unsigned long x = 0; x < pf_str_length(wrd); x++)
                if (str[i + x] == wrd[x])
                    status = true;
                else
                {
                    status = false;
                    index  = 0;
                    break;
                }
        }
        if (status == true)
            break;
    }
    if (status == false)
        index = 0;
    return index;
    
}
unsigned long pf_fil_length(FILE *fil)
{
    unsigned long len;
    fseek(fil, 0, SEEK_END);
    len = ftell(fil);
    fseek(fil, 0, SEEK_SET);
    return len;
}
unsigned long pf_fil_linlen(FILE *fil, char spt[])
{
    unsigned long repeat = 0;
    bool status = false;
    for (unsigned long i = 0; i < pf_fil_length(fil); i++)
    {
        status = false;
        fseek(fil, i, SEEK_SET);
        if (fgetc(fil) == spt[0])
        {
            fseek(fil, i, SEEK_SET);
            for (unsigned long x = 0; x < pf_str_length(spt); x++)
            {
                fseek(fil, i + x, SEEK_SET);
                if (fgetc(fil) == spt[x])
                    status = true;
                else
                {
                    status = false;
                    break;
                }
            }
            repeat += (status == true) ? 1 : 0;
        }
    }
    return repeat;
}
char *pf_fil_redstr(FILE *fil)
{
    char *str = malloc(pf_fil_length(fil));
    for (unsigned long i = 0; i < pf_fil_length(fil); i++)
    {
        fseek(fil, i, SEEK_SET);
        *(str + i) = fgetc(fil);
    }
    return str;
}
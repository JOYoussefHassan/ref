#define MYNAME "jo_functions"
#define DOCMNT "# These is the document of PAYMENT_TABLE.JO\n# [1] - Commands :-\n#\tAdd method\t\t: a <s - d - c - r> <coast> [indexNumber] [describtion]\n#\tEdit method\t\t: e <s - d - c - r> <coast> <indexNumber> [describtion]\n#\tView method\t\t: v\n#\tSearch method\t\t: s <s - n><n> <text>\n#\t\t\t\t  s <s - n><p> <text-text-text-text>\n#\tSummation method\t: + <<num>,<num-num>,...> [<num>,<num-num>,...]\n#\tRemove method\t\t: r <indexNumber>\n#\tHelp method\t\t: h\n#\tQuit\t\t\t: q\n#\n# [2] - Types :-\n#\t[REM]\t\t\t: payment\n#\t[SAL]\t\t\t: salary\n#\t[DBT]\t\t\t: salary\n#\t[CHR]\t\t\t: charity\n#\t[NOT]\t\t\t: nothing salary, debt or payment"
#define STRNUM 48

#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

static bool jo_str_search_ERROR;

enum cliE {
    ADD       = 'a' + ' ',
    EDIT      = 'e' + ' ',
    VIEW      = 'v' + ' ',
    SEARCH    = 's' + ' ',
    SUMMATION = '+' + ' ',
    REMOVE    = 'r' + ' ',
    HELP      = 'h' + ' ',
    QUIT      = 'q' + ' ',
};

struct A_DS
{
    char option;
    char *coast;
    char *index;
    char *dscrp;
};
struct E_DS
{
    char option;
    char *coast;
    char *index;
    char *dscpt;
};
struct S_DS
{
    char option[2];
    char *strMn;
    char *strM0;
    char *strM1;
    char *strM2;
    char *strM3;
};

long int          jo_str_int(char str[]);
long int          jo_int_pow(long int num, int pow);
unsigned long int jo_str_length(char str[]);
unsigned long int jo_str_lineLength(char str[]);
// unsigned long int jo_str_search(char str[], char wrd[], unsigned long int ind);
unsigned long int jo_fil_lineLength(FILE *hdl);
char             *jo_int_str(long int num);
char             *jo_fil_linePrint(FILE *hdl, unsigned long int ind);
void              jo_str_repeat(char str[], unsigned int rpt, char end[]);
void              jo_str_center(char str[], char wrd, unsigned long int len, char end[]);

long int jo_str_int(char str[])
{
    long int      intger = 0;
    short int     status = 1;
    unsigned long len    = jo_str_length(str) - 1;
    if (str[0] == '-')
        status *= -1;
    for (int i = (str[0] == '-') ? 1 : 0; i < jo_str_length(str); i++)
    {
        intger += (str[i] - STRNUM) * jo_int_pow(10, len);
        --len;
    }
    return intger * status;
}

long int jo_int_pow(long int num, int pow)
{
    long int tot = 1;
    for (int i = pow; i > 0; i--)
        tot *= num;
    return tot;
}

unsigned long int jo_str_length(char str[])
{
    unsigned long int i = 0;
    while (str[i] != '\0')
        i++;
    return i;
}

unsigned long int jo_str_lineLength(char str[])
{
    unsigned long int len = 1;
    for (unsigned long int i = 0; i < jo_str_length(str); i++)
        len += (str[i] == '\n') ? 1 : 0;
    return len;
}

// unsigned long int jo_str_search(char str[], char wrd[], long int ind)
// {
//     long int index  = 0;
//     bool     status = false;
//     for (unsigned long int i = ind; i < jo_str_length(str); i++)
//     {
//         if (str[i] == wrd[0])
//         {
//             index = i;
//             status = true;
//             for (unsigned long int x = 0; x < jo_str_length(wrd); x++)
//             {
//                 status = (str[i + x] != wrd[x]) ? false : status;
//                 index  = i;
//             }
//         }
//         if (status == true)
//             break;
//         else
//             index = 0;
//     }
//     jo_str_search_ERROR = (status) ? true : false;
//     return index;
// }

unsigned long int jo_fil_lineLength(FILE *hdl)
{
    fseek(hdl, 0L, SEEK_END);
    unsigned long int length = ftell(hdl),
                      line   = 1,
                      index  = 0;
    char character;
    fseek(hdl, 0L, SEEK_SET);
    while (index != length)
    {
        character = fgetc(hdl);
        line += (character == '\n') ? 1 : 0;
        ++index;
    }
    return line;
}

char *jo_int_str(long int num)
{
    long int tot = num;
    bool     status = (num < 0) ? true : false;
    short    i   = 0 + (status) ? 1 : 0;
    tot *= (status) ? (-1) : 1;
    while (tot >= 1)
    {
        tot /= 10;
        ++i;
    }
    char *str = (char *)malloc(i + 1 + (status) ? 1 : 0);
    num *= (status) ? (-1) : 1;
    for (int x = i - 1; x >= 0; x--)
    {
        *(str + x) = (num % 10) + STRNUM;
        num /= 10;
    }
    if (status)
        *(str + 0) = '-';
    *(str + i) = '\0';
    return str;
}

char *jo_str_replace(char str[], char wrd[], unsigned long int ind, long int rep)
{

}

char *jo_fil_linePrint(FILE *hdl, unsigned long int ind)
{
    if (ind >= jo_fil_lineLength(hdl) || ind < 0)
        return "\0";
    ind++;
    fseek(hdl, 0L, SEEK_END);
    unsigned long int length = ftell(hdl),
                      index  = -1,
                      begin  = 0;
    char character;
    fseek(hdl, 0L, SEEK_SET);
    while (index != length)
    {
        character = fgetc(hdl);
        ind -= (character == '\n') ? 1 : 0;
        ++index;
        if (ind == 0)
            break;
        begin = (character == '\n') ? index : begin;
    }
    char *str = malloc(index - begin + 1);
    begin = (begin == 0) ? (-1) : begin;
    ++begin;
    fseek(hdl, begin, SEEK_SET);
    for (int i = begin; i < index; i++)
        *(str + (i - begin)) = fgetc(hdl);
    *(str + (index - begin)) = '\0';
    return str;
}

void jo_str_repeat(char str[], int rpt, char end[])
{
    for (int i = 0; i < rpt; i++)
        printf("%s", str);
    printf("%s", end);
}

void jo_str_center(char str[], char wrd, long int len, char end[])
{
    long str_lenght = (len - jo_str_length(str)) / 2;
    str_lenght += (jo_str_length(str) % 2 == 1 && len % 2 == 0) ? 1 : 0;
    for (int i = 0; i < str_lenght; i++)
        printf("%c", wrd);
    printf("%s", str);
    str_lenght -= (jo_str_length(str) % 2 == 1 && len % 2 == 0) ? 1 : 0;
    str_lenght += (jo_str_length(str) % 2 == 0 && len % 2 == 1) ? 1 : 0;
    for (int i = 0; i < str_lenght; i++)
        printf("%c", wrd);
    printf("%s", end);
}
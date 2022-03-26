/*
[1] - _dataType
    [1] - int                                                                   ===> 32 bit (-2^31) - (2^31 - 1)
    [2] - unsigned int                                                          ===> 32 bit (0) - (2^32-1)

    [3] - char                                                                  ===> 8 bit (-128) - (127)

    [4] - float                                                                 ===> 32 bit
    [5] - double                                                                ===> 64 bit

    [6] - void                                                                  ===> not a data type and use in fanction

    [7] - bool                                                                  ===> (0) - (other) or (true) - (false), #include <cs50.h>
    [8] - string                                                                ===> collection of characters, #include <cs50.h>, end with null value (\0)

    [9] - structs                                                               ===> to define own data type (typedefs)

    [10] - array                                                                ===> _dataType _var[_length]
[2] - _dataType _var1, _var2, ...                                               ===> to create variable
[3] - _arthOper                                                                 ===> arethmatic operators
    [1] - +
    [2] - -
    [3] - *
    [4] - /
    [5] - %

    [6] - +=
    [7] - -=
    [8] - *=
    [9] - /=
    [10] - %=

    [11] - _var++
    [12] - _var--
    [13] - ++_var
    [14] - --_var
[4] - _boolExp                                                                  ===> boolean expression (logical operators, relational operators)
    [1] - &&
    [2] - ||
    [3] - !
    
    [4] - >
    [5] - <
    [6] - >=
    [7] - <=
    [8] - ==
    [9] - !=
[5] - _condition
    [1] - if (_boolExp)
          {
              _statements
          }
          else if (_boolExp)
          {
              _statements
          }
          else
          {
              _statements
          }

          (_boolExp) ? _statement : _statement;
    [2] - switch(_var)                                                          ===> must be int
          {
              case 1 :
                  _statements
                  break;
              case 2 :
                  _statements
                  break;
              default :
                  _statements
          }
[6] - _loop
    [1] - while (_boolExp)
          {
              _statements
          }

          do
          {
              _statements
          }
          while (_boolExp);
    [2] - for (_begain; _end; _steps)
          {
              _statements
          }
[7] - _main                                                                     ===> int main(void)
    [1] - argument                                                              ===> (int argc -> length), (string argv[] -> argument CMD)
    [2] - return _nonZero                                                       ===> to exit status
*/
// linux terminal
/*
[1] - ls
[2] - cd _directory                                                             ===> . to go to folder, .. to go to the parent, no directory go to the home
[3] - ctrl + l                                                                  ===> to clear
[4] - mkdir _name                                                               ===> to make directory
[5] - cp [-r] _file1 _file2                                                     ===> to copy the file to another, -r to copy directory to another
[6] - rm [-f, -r or -rf] _file                                                  ===> to remove file, -f to skip confirmation, -r to remove directory, -rf to skip confirmation of directory
[6] - mv [-r] _file1 _file2                                                     ===> to cut the file to another, -r to cut directory to another

[7] - clang -o _exe _file.c -lcs50                                              ===> to compile
[8] - make _exe                                                                 ===> to compile
[9] - ./_exe                                                                    ===> to execute
[10] - code _file                                                               ===> to edit the file
*/
// input to output steps
/*
[1] - preprocessing
[2] - compiling
[3] - assembling
[4] - linking
*/
// Reference
/*
[1] - https://manual.cs50.io/
*/

// ####################
// # Data Types (_dT) #
// ####################
/*
*                                                               ===> pointer (_pntr)
const
void
bool
char
int
long
float
double
sting                                                           ===> in cs50.h
_dS
FILE                                                            ===> in stdlib
*/
// ############################
// # Format specifiers (_frS) #
// ############################
/*
p                                                               ===> _pntr
c
d                                                               ===> _bool
i
u                                                               ===> _uInt
li                                                              ===> _longInt
lu                                                              ===> _longUInt
._digits_f
s
*/
// #######################
// # Format files (_frF) #
// #######################
/*
w                                                               ===> get NULL if not found and recreate it
a                                                               ===> get NULL if not found and recreate it
r                                                               ===> get NULL if not found
*/
// ###############################
// # Comparison operators (_cpO) #
// ###############################
/*
&&
and
||
or
!
*/
// ################################
// # Conditional operators (_cdO) #
// ################################
/*
<
<=
>
>=
==
!=
*/
// #################
// # Main strucure #
// #################
/*
#include <_lib1.h>
#include <_lib2.h>
...

typedef struct _nameIndex                                       ===> to create data structure (_dS)
{
    _dT _var1;
    _dT _var2;
    ...
}
_nameAll;

_dT _funcName(void) or (_dT _var1, _dT _var2, ...);             ===> function prototype (u can put function declarion here)

int main(void) or (int argc, string argv[])
{
    _dT *_var1 = &_var2;                                        ===> to create _pntr (* => creation, & => address of _var), (if _var2 is data not a variable the _var1 will be declared)
    *_var1;                                                     ===> to show data of _pntr
    _var1;                                                      ===> to show address of _var2 (frist data if var is list)
    &_var2;                                                     ===> to show address of _var2 (frist data if var is list)
    _var1 + 1;                                                  ===> to show the second address after _var1

    _dT _var1 = _data;
    _dT _var2 = _data;
    ...
    _dS _var1;                                                  ===> to call data structure
    _var1._var1 = _data;
    _var1._var2 = _data;
    ...
    _dS *_var1;
    _var1->_var1 = _data;
    _var1->_var2 = _data;
    ...

    _funcName() or (_data1, _data2, ...)                        ===> to call the function

    for (_dT _var = _initNum; _var _cdO _dta; _step)            ===> to loop the operations
    {
        _statements;
    };

    while (_boolDta)                                            ===> to loop the operations
    {
        _statements;
    };

    do                                                          ===> to loop the operations
    {
        _statements;
    }
    while (_boolDta);

    if (_dta1 _cpO _dta2 _cpO ...)                              ===> conditional function
    {
        _statements;
    }
    else if (_dta1 _cpO _dta2 _cpO ...)
    {
        _statements;
    }
    else
    {
        _statements;
    }
    (_boolExp) ? _statement : _statement;

    switch(_var)                                                          ===> must be int
    {
        case 1 :
            _statements;
            break;
        case 2 :
            _statements;
            break;
        default :
            _statements;
    }

    _statements;
    return 0;
}

_dT _funcName(void) or (_dT _var1, _dT _var2, ...)              ===> function declaration
{
    _funcName() or (_data1, _data2, ...);                       ===> to recursion the function
    _statements;
    return _dta;                                                ===> return the data in date type format of the function (except void)
}
*/
// ##############
// # non header #
// ##############
/*
sizeof(_dT);
*/
// ###########
// # stdio.h #
// ###########
/*
print("_dta %_frS1 _dta _frS2 ...", _dta1, _dta2, ...);         ===> to print data
scanf("%_frS", &_var);                                          ===> to input data

FILE *_handle = fopen("_filePath", "_frF");                     ===> to open file
fprintf(_file, _data);                                          ===> to add _data to current file
fgetc(_handle);                                                 ===> to get characters as yield, get EOF if the characters end (the end of file is \0)
fputc(_char, _handle);                                          ===> to put the character
fread(_var, _size, _numberOfIndexs, _handle);                   ===> to get file and save in _var or in pointer
fwrite(_var, _size, _numberOfIndexs, _handle);                  ===> to get file and save in _var or in pointer
fclose(_handle);                                                ===> to close file

fgets()                                                         ===> string
fputs()                                                         ===> string
fprintf()                                                       ===> formated string
fseek()                                                         ===> rewind
ftell()                                                         ===> postion of last character yield
feof()                                                          ===> if i arrive end of the file
ferror()                                                        ===> if any error in openning of the file
*/
// ############
// # stdlib.h #
// ############
/*
malloc(_sB);                                                    ===> to take of RAM in bytes (_sB => number of bytes)
realloc(_pntr, _sB);                                            ===> to retake of RAM in bytes (_sB => number of bytes)
free(_tB);                                                      ===> free of malloc bytes (_tB => bytes were taken)
*/
// ############
// # unistd.h #
// ############
/*
sleep(_num);                                                    ===> in seconds
*/
// ##########
// # cs50.h #
// ##########
/*
get_string(_dta);                                               ===> input
get_int(_dta);                                                  ===> input
get_long(_dta);                                                 ===> input
get_float(_dta);                                                ===> input
*/
// #############
// # stdbool.h #
// #############
/*

*/
// ##########
// # math.h #
// ##########
/*
round(_float);
*/
// ############
// # string.h #
// ############
/*
strlen(_string);
strcmp(_char1, _char2);                                         ===> compare characters (0 => true, 1 => false)
*/
// ############
// # ctype.h #
// ############
/*
islower(_char);
toupper(_char);
*/
#include <stdio.h>

int main(void)
{
    FILE *fil = fopen("log.txt", "r");
    printf("%li", sizeof(fil));
    fclose(fil);
}
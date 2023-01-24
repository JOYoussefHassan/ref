// preprocessing, compiling, and linking (exe file is after linker)
// Reference
// dataType
/*
* no library
    [1] - char                                                                                      ===> character ('a', 'b', ...) [signed -128 => 127] [unsigned 0 => 255] 1 byte
    [2] - short int                                                                                 ===> short intger (2, 7, ...) [signed -32768 => 32767] [unsigned 0 => 65535] 2 byte
    [3] - int                                                                                       ===> intger (5, 11, ...) [signed -2147483648 => 2147483647] [unsigned 0 => 4294967295] 4 byte
    [4] - long int                                                                                  ===> intger (22, 88, ...) [signed -2147483648 => 2147483647] [unsigned 0 => 4294967295] 4 byte
    [5] - long long int                                                                             ===> intger (6, 55, ...) [signed -9,223,372,036,854,775,808 => 9,223,372,036,854,775,807] [unsigned 0 => 18,446,744,073,709,551,615] 8 byte
    [6] - float                                                                                     ===> floating point (2.5, 10.0, ...) [7 digit] 4 byte
    [7] - double                                                                                    ===> floating point (2.5, 10.0, ...) [15 digit] 8 byte
    [8] - long double                                                                               ===> floating point (2.5, 10.0, ...) [15 digit] 8 byte
    [9] - bool                                                                                      ===> boolean (true, false) 1 byte
    [10] - auto                                                                                     ===> auto data type
    [11] - pointer                                                                                  ===> it equal NULL

    [12] - _num_L                                                                                   ===> to long
    [13] - _num_LL                                                                                  ===> to long long
    [14] - 0_num_                                                                                   ===> to octal
    [15] - 0x_num_                                                                                  ===> to hexal
    [16] - _num_f                                                                                   ===> to float
    [17] - num_E_num                                                                                ===> 
    [18] - num_e-_num                                                                               ===> 
    [19] - ::var                                                                                    ===> to get global variable
    [20] - static var                                                                               ===> to prevent change the value to begin value

    long double, double, float, unsigned long, long, unsigned int, int
    &var                                                                                            ===> to show address of variable

* string
    [1] - string                                                                                    ===> string ("hello", "hi", ...)

* array
    [1] - dataType arrName[numLenght] = {data1, data2, ...}                                         ===> to create array
    [2] - dataType arrName[] = {data1, data2, ...}                                                  ===> to craete array and set data
    [3] - arrName[data1, data2, ...]                                                                ===> to put data in array
    [4] - arrName[numIndex]                                                                         ===> to access data in array
    [5] - (dataType arrName[])                                                                      ===> to set an array in function
    [6] - dataType [numLenght] [numLenght]                                                          ===> as {{1, 2}, {2, 3}}
    [7] - (arrName + numIndex)                                                                      ===> to show address of index
    [8] - *(arrName + numIndex)                                                                     ===> to show value of index
    [9] - dataType* ptrName = new dataType[var]                                                     ===> to set var in heap memory and set as length of array in cin function
    [10] - delete[]ptrName                                                                          ===> to delete ptrName from heap memory

* pointer
    [1] - dataType* ptrName = &var;                                                                 ===> to create pointer
    [2] - ptrName;                                                                                  ===> to show address and set address, if ptrName = 0 or nullptr the address will be zeros
    [3] - *ptrName;                                                                                 ===> to show value and edit value in this address
    [4] - dataType* ptrName = &arrVar;                                                              ===> to set array pointer
    [5] - (ptrName + ptrIndex);                                                                     ===> to show address of index
    [6] - *(ptrName + ptrIndex);                                                                    ===> to show value of index
    [7] - ptrName[numIndex];                                                                        ===> to access data in pointer array
    [8] - ptrName++;                                                                                ===> to show next index, postfix
    [9] - ptrName--;                                                                                ===> to show previous index, postfix
    [10] - ++ptrName;                                                                               ===> to show next index, prefix
    [11] - --ptrName;                                                                               ===> to show previous index, prefix
* bugs
    [1] - dataType* ptrName;
        *ptrName = 12;
*/
// escape sequences
/*
    [1] - \n                                                                                        ===> new line
    [2] - \t                                                                                        ===> tab
    [3] - \r                                                                                        ===> carriage return
    [4] - \\                                                                                        ===> \
    [5] - \"                                                                                        ===> "
    [6] - \'                                                                                        ===> '
*/
// Mathematical Expressions
/*
    [1] - *                                                                                         ===> 
    [2] - /                                                                                         ===> 
    [3] - %                                                                                         ===> 
    [4] - +                                                                                         ===> 
    [5] - -                                                                                         ===>
*/
// Combined Assignment
/*
    [1] - *=                                                                                        ===> 
    [2] - /=                                                                                        ===> 
    [3] - %=                                                                                        ===> 
    [4] - +=                                                                                        ===> 
    [5] - -=                                                                                        ===>
*/
// Relational Operators
/*
    [1] - >                                                                                         ===> greater than
    [2] - <                                                                                         ===> less than
    [3] - >=                                                                                        ===> greater than or equal
    [4] - <=                                                                                        ===> less than or equal
    [5] - ==                                                                                        ===> equal
    [6] - !=                                                                                        ===> not equal
*/
// Increment & Decrement Operators
/*
    [1] - ++var                                                                                     ===> prefix increment
    [2] - var++                                                                                     ===> postfix increment
    [3] - --var                                                                                     ===> prefix decrement
    [4] - var--                                                                                     ===> postfix decrement
*/
// Commands
/*
    [1] - if (conditon)
        {
            statement;
        }
        else if (conditon)
        {
            statement;
        }
        else
        {
            statement;
        }

        (condition) ? ifStatement : _elseStatement

    [2] - switch (var)
        {
            case int1 :
            {
                statement;
                break;
            }
            case int2 :
            {
                statement;
                break;
            }
            ...
            default :
            {
                statement;
                break;
            }
        }

    [3] - while (condition)
        {
            statement;
        }

        do
        {
            statement;
        } while (condition);

    [4] - for (numStart; numEnd; _numStep)
        {
            statement;
        }
    [5] - dataType funcName(dataType1 var1 = val, dataType2 var2 = val, ...)                        ===> parameters, add & before variable to accept differents, default values from right
        {
            statements;
            return data;                                                                            ===> according to data type of funcution
        }

        void funcName(dataType1 var1 = val, dataType2 var2 = val, ...)
        {
            statements;
        }

        funcName(data1, data2, ...);                                                                ===> arguments

        dataType prototypeFunc(dataType1, dataType1, ...);
        dataType headerFunc(dataType1 var1 = val, dataType2 var2 = val, ...)
        {
            statement;
            return data;
        }
        int main()
        {
            statement;
            return 0;
        }
        dataType prototypeFunc(dataType1 var1 = val, dataType2 var2 = val, ...)
        {
            statement;
            return data;
        }
*/
// Library                                                                                          ===> (#) preprocessing statement to include functions
/*
    [1] - noLibrary
        [1-1] - std::endl;                                                                          ===> new line
        [1-2] - return 0;                                                                           ===> 
        [1-3] - std::system("pause");                                                               ===> 
        [1-4] - sizeof(data);                                                                       ===> the size in bytes
        [1-5] - const dataType var;                                                                 ===> to make constant variable
        [1-6] - break;                                                                              ===> stop
        [1-7] - <<                                                                                  ===> stream insertion operator

        [1-7] - static_cast<dataType>(data);                                                        ===> dataType (int, float, double, char)
        [1-8] - dataType(data);                                                                     ===> dataType (int, float, double, char)
        [1-9] - (dataType)data;                                                                     ===> dataType (int, float, double, char)

    [2] - iostream
        [2-1] - std::cout << data;                                                                  ===> to print output
        [2-2] - std::cin >> var1 >> var2 >> ...;                                                    ===> to get _data into _var
        [2-3] - std::cin.get(var);                                                                  ===> to get enter as character
        [2-4] - std::cin.ignore();                                                                  ===> #

    [3] - iomanip
        [3-1] - std::setw(num) + data;                                                              ===> width of _data, _data is written the end of indexes
        [3-2] - std::left + data;                                                                   ===> if use std::setw(_num), width of _data, _data is written the begin of indexes
        [3-3] - std::right + data;                                                                  ===> if use std::setw(_num), width of _data, _data is written the last of indexes
        [3-4] - std::setprecision(num) + num;                                                       ===> in float or double, the number of digts from begin
        [3-5] - std::fixed + num;                                                                   ===> if use std::setprecision(_num) is using before this, the number of digts after point, active in all code if using this
        [3-6] - std::showpoint + num;                                                               ===> to show all digits in the number

    [4] - string
        [4-1] - std::getline(cin, var);                                                             ===> to get the data with space
        [4-2] - std::string.length();                                                               ===> to get the length of string

    [5] - cmath
        [5-1] - std::sin(num);                                                                      ===> sin of degree
        [5-2] - std::cos(num);                                                                      ===> cos of degree
        [5-3] - std::tan(num);                                                                      ===> tan of degree
        [5-4] - std::max(num1, num2, ...);                                                          ===> maximum of numbers
        [5-5] - std::min(num1, num2, ...);                                                          ===> minimum of numbers
        [5-6] - std::swap(num1, num2);                                                              ===> to swap values
        [5-7] - std::pow(num1, num2);                                                               ===> exponent
        [5-8] - std::sqrt(num);                                                                     ===> square root
        [5-9] - std::abs(num1);                                                                     ===> absolute value
        [5-10] - std::floor(num);                                                                   ===> to round floating point to before this number
        [5-11] - std::ceil(num);                                                                    ===> to round floating point to after this number
        [5-12] - std::log(num);                                                                     ===> logarithm

    [6] - cstdlib
        [6-1] - std::exit(0);                                                                       ===> to exit application
        [6-2] - std::rand();                                                                        ===> random value
        [6-3] - std::srand(time);                                                                   ===> to get random value if run application
    
    [7] - ctime
        [7-1] - std::time(0);                                                                       ===> time
*/
/*
    [1] - https://cpp.sh/                                                                           ===> online compiler
*/
/*
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| Syntax |
----------
[1] - <<                                                                                                        ===> stream insertion operator, and for concatination
[2] - ;                                                                                                         ===> the end of the command
[3] - {...}                                                                                                     ===> block of commands (_statement_)

[4] - _datatype_ _var_ = _data_, _var_ = _data_, ...                                                            ===> to declare variable

#include <_library_>                                                                                            ===> (#) preprocessing character, (include) to get functions of _library_ to current file
...
#define _var_ _data_                                                                                            ===> to constant data
...

int main(void)                                                                                                  ===> the function which executed in the shell and must be (int)
{
    _statement_                                                                                                 ===> must each _statement_ end with (;)
    return _num_;                                                                                               ===> 
}
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| function |
------------
[1] - syntax
_datatype_ _func_(_datatype_ _var_ = _data_, ...)                                                               ===> parameters, add & before variable to accept differents, default values from right
{
    _statement_
    return _data_;                                                                                              ===> according to data type of funcution, if _datatype_ is (void) no (return)
}

[2] - activation
_func_(_data_, ...)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| if_condition |
----------------
[1] - _complexIfCondition_
if (_conditionStatement_)                                                                                       ===> _conditionStatement_ (_data_ _relationalOperators_ _data_ ...)
    _statement_
else if (_conditionStatement_)
    _statement_
...
else
    _statement_

[2] - _simpleIfCondition_
(_conditionStatement_) ? _statement_ : _statement_;                                                             ===> the first _statement_ is as after (if) and the second as after (else)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| switch_condition |
--------------------
[1] - _switch_
switch (_var_)                                                                                                  ===> as multiple choice
{
    case _int_ :                                                                                                ===> the choice
    {
        _statement_
        break;                                                                                                  ===> to stop other operations
    }
    case _int_ :
    {
        _statement_
        break;
    }
    ...
    default :                                                                                                   ===> to set default choice
    {
        _statement_
        break;
    }
}
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| while_loop |
--------------
[1] - _whileWhileFirst_
while (_conditionStatement_)                                                                                    ===> _conditionStatement_ (_data_ _relationalOperators_ _data_ ...)
    _statement_

[2] - _whileDoFirst_
do
{
    _statement_
} while (_conditionStatement_);
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| for_loop |
------------
for (_intStart_; _intEnd_; _intStep_)                                                                           ===> _intStart_ (_datatype_ _var_ = _int_), _intEnd_ (_conditionStatement_), _intStep_ (_incrementDecrementOperators_)
    _statement_
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| datatypes |
-------------
[1] - _datatype_
    [1] - void                                                                                                  ===> no datatype
    [2] - char                                                                                                  ===> (1 byte [signed -128 => 127] [unsigned 0 => 255])
    [3] - string                                                                                                ===> string ("jo", "ahmed", ...), <iostream>
    [4] - int                                                                                                   ===> (4 byte [signed -2147483648 => 2147483647] [unsigned 0 => 4294967295])
    [5] - float                                                                                                 ===> (4 byte [7 digit])
    [6] - double                                                                                                ===> (8 byte [15 digit])
    [7] - bool                                                                                                  ===> (1 byte [true, false])
    [8] - _datatype_[]                                                                                          ===> array
    [9] - auto                                                                                                  ===> auto data type
    [10] - pointer                                                                                              ===> it equal NULL

[2] - _modifier_
    [1] - short                                                                                                 ===> (int => 2 byte [signed -32768 => 32767] [unsigned 0 => 65535])
    [2] - long                                                                                                  ===> (int => 4 byte [signed -2147483648 => 2147483647] [unsigned 0 => 4294967295])
    [3] - long long                                                                                             ===> (int => 8 byte [signed -9,223,372,036,854,775,808 => 9,223,372,036,854,775,807] [unsigned 0 => 18,446,744,073,709,551,615])
                                                                                                                     (double => 8 byte)
    [4] - signed                                                                                                ===> (int), (char)
    [5] - unsigned                                                                                              ===> (int), (char)

[3] - _datatypeID_
    [1] - using _datatypeID_ = _datatype_
    [2] - typedef _datatype_ _datatypeID_

[4] - implit coversion
    [1] - double    => int
    [2] - char      => int
    [3] - int       => double
[5] - explit conversion (type casting)
    [1] - static_cast<_datatype_>(_data_)
    [2] - _datatype_(_data_)
    [3] - (_datatype_)_data_
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _formater_ |
--------------
[1] - _numFormator_
    [1] - _num_L                                                                                                ===> to long
    [2] - _num_LL                                                                                               ===> to long long
    [3] - 0_num_                                                                                                ===> to octal
    [4] - 0x_num_                                                                                               ===> to hexal, or (F)
    [5] - _num_f                                                                                                ===> to float
    [6] - _num_E_num                                                                                            ===> 
    [7] - _num_e-_num                                                                                           ===> 

[2] - _escapeSequanceCharacter_
    [1] - \n                                                                                                    ===> to new line
    [2] - \\                                                                                                    ===> to print (\)
    [3] - \'
    [4] - \"
    [5] - \t                                                                                                    ===> tab (default is 8 spaces)
    [6] - \b                                                                                                    ===> backslash
    [7] - \a                                                                                                    ===> bell
    [8] - \r                                                                                                    ===> overide from beginning of line

[3] - _operators_
    [1] - =                                                                                                     ===> assignment operator

    [2] - +                                                                                                     ===> _arithmeticOperator_
    [3] - -                                                                                                     ===> _arithmeticOperator_
    [4] - *                                                                                                     ===> _arithmeticOperator_
    [5] - /                                                                                                     ===> _arithmeticOperator_
    [6] - %                                                                                                     ===> _arithmeticOperator_

    [7] - *=                                                                                                    ===> _aombinedAssignment_
    [8] - /=                                                                                                    ===> _aombinedAssignment_
    [9] - %=                                                                                                    ===> _aombinedAssignment_
    [10] - +=                                                                                                   ===> _aombinedAssignment_
    [11] - -=                                                                                                   ===> _aombinedAssignment_

    [12] - >                                                                                                    ===> _relationalOperator_
    [13] - <                                                                                                    ===> _relationalOperator_
    [14] - >=                                                                                                   ===> _relationalOperator_
    [15] - <=                                                                                                   ===> _relationalOperator_
    [16] - ==                                                                                                   ===> _relationalOperator_
    [17] - !=                                                                                                   ===> _relationalOperator_

    [18] - ++_var_                                                                                              ===> _incrementDecrementOperator_
    [19] - _var_++                                                                                              ===> _incrementDecrementOperator_
    [20] - --_var_                                                                                              ===> _incrementDecrementOperator_
    [21] - _var_--                                                                                              ===> _incrementDecrementOperator_
    
    [22] - &&                                                                                                   ===> _logicalOperator_
    [23] - ||                                                                                                   ===> _logicalOperator_
    [24] - !                                                                                                    ===> _logicalOperator_
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _builtin_ |
-------------
[1] -  &_var_                                                                                                   ===> to show address of variable
[2] - ::_var_                                                                                                   ===> to get global variable
[3] - static _datatype_ _var_                                                                                   ===> to prevent change the value to begin value
[4] - const _datatype_ _var_                                                                                    ===> to constant variable

[5] - using namespace std                                                                                       ===>
[6] - len(_str_)                                                                                                ===>
[7] - sizeof(_data_)                                                                                            ===> to get size of data in the memory

[8] - endl                                                                                                      ===> new line

[9] - INT_MIN                                                                                                   ===> -2147483648
[10] - INT_MAX                                                                                                  ===> 2147483647
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| <limits.h> => standerd file |
-------------------------------
[1] - contain ranges of the datatype
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| <iostream> |
--------------
[1] - cout << _data_ << ...                                                                                     ===> to output the data
[2] - cin >> _var_                                                                                              ===> to input the data
[3] - string _var_                                                                                              ===> to create string variable
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| <iomanip> |
-------------
[1] - setw(_num_)                                                                                               ===> width of _data, _data is written the end of indexes
[2] - left                                                                                                      ===> if use std::setw(_num), width of _data, _data is written the begin of indexes
[3] - right                                                                                                     ===> if use std::setw(_num), width of _data, _data is written the last of indexes
[4] - setprecision(_num_)                                                                                       ===> in float or double, the number of digts from begin
[5] - fixed                                                                                                     ===> if use std::setprecision(_num) is using before this, the number of digts after point, active in all code if using this
[6] - showpoint                                                                                                 ===> to show all digits in the number
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| <string> |
------------
[1] - getline(cin, _var_)                                                                                       ===> to get the data with space
[2] - _string_.length()                                                                                         ===> to get the length of string
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _referance_ |
---------------
[1] - https://cpp.sh/                                                                                           ===> online compiler
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

*/
/*
#include <iostream>
using namespace std;

struct JO
{
    int x;
};

int main()
{
    JO a, b, c, d[100];
    JO* e;
    e = &a;
    a.x = 1;

    b = a;
    c = { 2 };

    cout << a.x;

    cout << *e->x;
}

#include <iostream>
#include <string>
using namespace std;

struct cus
{
    string name;
    int num;
    int bal;
};

int main()
{
    cus cus[4] = { {"Yoseph", 123456, 10}, {"Ali", 123455, 20}, {"Mohammed", 123444, 240}, {"Khaled", 123333, 250} };

    for (int i = 0; i < 4; i++)
        if (cus[i].bal <= 10)
            continue;
        else
            if (cus[i].bal < 200)
                cout << cus[i].name << endl;
    return 0;
}
*/
// fn + f6
#include <iostream>
using namespace std;

void repeatCharacterF(char character, short repeations, char endCharacter);

int main(void)
{
    repeatCharacterF('#', 100, '0');
    return 0;
}

void repeatCharacterF(char character, short repeations = 1, char endCharacter = '\n')
{
    while (repeations-- > 0)
        cout << character;
    cout << endCharacter;
}

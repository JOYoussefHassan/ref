# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# [1] - _dataType
#       [1] - _int                                                                                              ===> 10
#       [2] - _float                                                                                            ===> 10.1
#       [3] - _bol                                                                                              ===> True, False
#       [4] - _str                                                                                              ===> "hello", iterable (can be take part of this)
#       [5] - _lst                                                                                              ===> [1, 2, 3], iterable (can be take part of this)
#       [6] - _tpl                                                                                              ===> (1, 2, 3) or 1, 2, 3, doesn't support modify, iterable (can be take part of this)
#       [7] - _dct                                                                                              ===> {"one" : 1, "two" : 2}, key can't be list & dictionary, iterable (can be take part of this)
#       [8] - _complex                                                                                          ===> 5+6j, _complex.real or _complex.imag, can't convert to integer or float
#       [9] - _set                                                                                              ===> {"one", 2, True}, not indexed (shuffled), can't include _lst not _tpl, unique data, iterable (can be take part of this)
#       [10] - _non                                                                                             ===> None
#       str, int, float, bool, list, tuple, dict, set, complex
# [2] - _escapeCharacter
#       [1] - \b                                                                                                ===> backslash
#       [2] - \                                                                                                 ===> escape new line, this command added to end of line
#       [3] - \_specChar                                                                                        ===> escape special character
#       [4] - \n                                                                                                ===> new line
#       [5] - \r                                                                                                ===> carriage return
#       [6] - \t                                                                                                ===> tab
#       [7] - \x_hexValue                                                                                       ===> data according hex value
# [3] - """_data or _newLine"""                                                                                 ===> to print new line, double cout and single
# [4] - _frmt
#       [1] - d                                                                                                 ===> integer
#       [2] - _strd                                                                                             ===> integer and separate each 3 numbers with _str (specific character), for new way
#       [2] - s                                                                                                 ===> string
#       [3] - ._nums                                                                                            ===> string and selective of number of charachters, .3s
#       [4] - f                                                                                                 ===> float
#       [5] - ._numf                                                                                            ===> float and selective of number of floats, .2f
#       [6] - _num:,                                                                                            ===> to separate each 3 numbers
#       [6] - _numIndex                                                                                         ===> to rearrangment the placeholders, for new way, without :
#       [7] - _numIndex:d                                                                                       ===> to rearrangment the placeholders, for new way, without :
#       [8] - _numIndex:_strd                                                                                   ===> to rearrangment the placeholders, for new way, without :
#       [9] - _numIndex:s                                                                                       ===> to rearrangment the placeholders, for new way, without :
#       [10] - _numIndex:_nums                                                                                  ===> to rearrangment the placeholders, for new way, without :
#       [11] - _numIndex:f                                                                                      ===> to rearrangment the placeholders, for new way, without :
#       [12] - _numIndex:_numf                                                                                  ===> to rearrangment the placeholders, for new way, without :
#       [13] - 0x_num
#       [14] - 0o_num
# [5] - _arth
#       [1] - +                                                                                                 ===> 1 + 1 = 2
#       [2] - -                                                                                                 ===> 2 - 1 = 1
#       [3] - *                                                                                                 ===> 2 * 2 = 4
#       [4] - /                                                                                                 ===> 6 + 2 = 3.0
#       [5] - %                                                                                                 ===> 10 + 4 = 2
#       [6] - **                                                                                                ===> 2 ** 3 = 8
#       [7] - //                                                                                                ===> 13 // 5 = 2
# [6] - _cndtn
#       [1] - _bol and _bol                                                                                     ===>
#       [2] - _bol or _bol                                                                                      ===>
#       [3] - not                                                                                               ===>
# [7] - _asmnt
#       [1] - =                                                                                                 ===>
#       [2] - +=                                                                                                ===>
#       [3] - -=                                                                                                ===>
#       [4] - *=                                                                                                ===>
#       [5] - /=                                                                                                ===>
#       [6] - %=                                                                                                ===>
#       [7] - **=                                                                                               ===>
#       [8] - //=                                                                                               ===>
# [8] - _comp
#       [1] - ==                                                                                                ===>
#       [2] - !=                                                                                                ===>
#       [3] - <                                                                                                 ===>
#       [4] - >                                                                                                 ===>
#       [5] - <=                                                                                                ===>
#       [6] - >=                                                                                                ===>
# [9] - _fileType
#       [1] - a                                                                                                 ===> open file to appending values, create if not exist
#       [2] - r                                                                                                 ===> open file for read, error if not exist
#       [3] - w                                                                                                 ===> open file for write, remove old data, create if not exist
#       [4] - x                                                                                                 ===> create file, error if exist
#       [5] - rb                                                                                                ===> open file for read bytes, error if not exist
#       [5] - wb                                                                                                ===> open file for write bytes, error if not exist
# [10] - _fileData
#       [1] - name                                                                                              ===> 
#       [2] - mode                                                                                              ===> 
#       [3] - encoding                                                                                          ===> 
# [11] - _regularExpression
#       [1] - *                                                                                                 ===> 0 or more
#       [2] - +                                                                                                 ===> 1 or more
#       [3] - _data?                                                                                            ===> if found or no, (_data?) is for more one character
#       [4] - {_int}                                                                                            ===> only _int
#       [5] - {_int1,_int2}                                                                                     ===> from _int1 to _int2
#       [6] - {,_int}                                                                                           ===> from 0 to _int
#       [7] - {_int,}                                                                                           ===> _int or more
#       [8] - (_regularExpression)
# 
#       [9] - [_int1_int2...]                                                                                   ===> contain _int1 or _int2 or ..., [0-9]
#       [10] - [_char1_char2...]                                                                                ===> contain _char1 or _char2 or ..., [A-Za-z]
#       [11] - [^_int1_int2...]                                                                                 ===> not contain _int1 or _int2 or ..., [^0-9]
#       [12] - [^_char1_char2...]                                                                               ===> not contain _char1 or _char2 or ..., [^A-Z] or [^a-z]
# 
#       [13] - ^_data                                                                                           ===> must be at the start of line
#       [14] - _data$                                                                                           ===> must be at the end of line
# 
#       [15] - (_data1|_data2|...)                                                                              ===> contain _data1 or _data2 or ...
#       [16] - #_data                                                                                           ===> comment
# [12] - _escapeString
#       [1] - "_data"\                                                                                          ===> to multiline of string data
#             "_data"
#
# [13] - _decorator:
#        def _decorator(_func):
#            def inner(*args, **kwargs)
#                _conditions
#
# [14] - variable syntax
#       [1] - name                                                                                              ===> public
#       [2] - _name                                                                                             ===> protected but could print it
#       [3] - __name                                                                                            ===> private and couldn't print it
#
# _var, ... = _data, ...
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# [1] - _command; _command
# [2] _parentCommand
#       _childCommand
# 
# [1] - print(_data1, _data2, ..., sep = _data, end = _data)                                                    ===> print output, sep is separator, end is end of line
# [2] - print(*_lst)                                                                                            ===> to unpacking list separated by space
# [3] - input(_data)                                                                                            ===> get input
# [4] - type()                                                                                                  ===> data type
#                                                                                                                    _data.__class__ to show data type
# [5] - dir(_dataType)                                                                                          ===> str, int, float, bool, list, tuple, dict, set, complex, type
# [6] - help("keywords")                                                                                        ===> to show keywords in programming langauge
# [7] - _var = _data                                                                                            ===> set variable
# [8] - _var1: _dataType, _var2: _dataType = _data1, _data2                                                     ===> to set more than one variable
# [9] - _lst[_numStart:_numEnd:_numStep]                                                                        ===> to print according index number [+number] or [-number] or [number:numer] or [:number]
# [10] - _str[_numStart:_numEnd:_numStep]                                                                       ===> to print according index number [+number] or [-number] or [number:numer] or [:number]
# [11] - global _var                                                                                            ===> to convert to global scope
#
# [12] - @_decorator                                                                                            ===> to be as _func(_name)
#        def _name(...):
#            ...
# 
# [13] - iter(_iterable)                                                                                        ===> to convert iterable data to iterator
# [14] - next(_iterator)                                                                                        ===> to take part of iterator and next part in the next statement
# [15] - zip(_data1, _data2)                                                                                    ===> to get indexes of 2 datas as tuples, according the least indexes
# 
# [16] - isinstance(_data, _dataType)                                                                           ===> to check the data type
#
# [17] - # -*- coding: _encoding_ -*-                                                                           ===> to set encoding of file
# [18] - #!/usr/bin/env python3                                                                                 ===> to set python interpreter path
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | String |
# ----------
# [1] - len(_str)                                                                                               ===> to print length of string
# 
# [2] - _str.strip(_str)                                                                                        ===> to remove _char in 2 sides, defult is " "
# [3] - _str.rstrip(_str)                                                                                       ===> to remove _char in right side, defult is " "
# [4] - _str.lstrip(_str)                                                                                       ===> to remove _char in left side, defult is " "
# 
# [5] - _str.title()                                                                                            ===> to capitalize words and character after the number
# [6] - _str.capitalize()                                                                                       ===> to capitalize the first word
# [7] - _str.zfill(_numWidth)                                                                                   ===> to fill with zeros
# [8] - _str.upper()                                                                                            ===> to upper case
# [9] - _str.lower()                                                                                            ===> to lower case
# 
# [10] - _str.split(_str, _numSplits)                                                                           ===> to convert to _lst, _str default is " ", _num of splits
# [11] - _str.rsplit(_str, _numSplits)                                                                          ===> to convert to _lst from right side, _str default is " ", _num of splits
# [12] - _str.splitline()                                                                                       ===> to convert to _lst, split new lines
# [13] - _str.center(_numWidth, _str)                                                                           ===> to add _str in both sides of text, (_numwidth - len(_str))
# [14] - _str.count(_str, _numStart, _numEnd)                                                                   ===> to count _str in text
# [15] - _str.swapcase(_str, _numStart, _numEnd)                                                                ===> to toggle the size of characters
# [16] - _str.startswith(_str, _numStart, _numEnd)                                                              ===> if begain with _str
# [17] - _str.endswith(_str, _numStart, _numEnd)                                                                ===> if end with _str
# 
# [18] - _str.index(_str, _numStart, _numEnd)                                                                   ===> to search the index of _str, output error if error syntax
# [19] - _str.find(_str, _numStart, _numEnd)                                                                    ===> to search the index of _str, output -1 if error syntax
# [20] - _str.rjust(_str, _numWidth)                                                                            ===> to add _str in right sides of text, (_numwidth - len(_str))
# [21] - _str.ljust(_str, _numWidth)                                                                            ===> to add _str in left sides of text, (_numwidth - len(_str))
# [22] - _str.expandtab(_numSpaces)                                                                             ===> to set number of spaces in "\t"
# 
# [23] - _str.istitle()                                                                                         ===> if the text is title or no, result is _bool
# [24] - _str.isspace()                                                                                         ===> if the text is space, result is _bool
# [25] - _str.islower()                                                                                         ===> if the text is lower case, result is _bool
# [26] - _str.isidentfier()                                                                                     ===> if the text can be as a variable, result is _bool
# [27] - _str.isalpha()                                                                                         ===> if the text contain a-z and A-Z only, result is _bool
# [28] - _str.isalnum()                                                                                         ===> if the text contain a-z, A-Z and numbers, result is _bool
# [29] - _str.isdecimal()                                                                                       ===> if the text contain decimal, result is _bool
# [30] - _str.isnumeric()                                                                                       ===> if the text contain number, result is _bool
# 
# [31] - _str.replace(_strOld, _strNew, _numCount)                                                              ===> to replace
# [32] - _str * _num                                                                                            ===> to repeat string
# 
# [33] - _str1 in _str2                                                                                         ===> if first string in second string
# [34] - _str1 not in _str2                                                                                     ===> if first string not in second string
# 
# [35] - char(_int)                                                                                             ===> to show character according ascii code
# [36] - ord(_char)                                                                                             ===> to show the integer of character
# 
# [1] - "_str1 %_frmt _str2 %_frmt ..." % (_data1, _data2, ...)                                                 ===> to concatenate all data types, old way
# [2] - "_str1 {:_frmt} _str2 {:_frmt} ...".format(_data1, _data2, ...)                                         ===> to concatenate all data types, new way, :_frmt is opitional
# [3] - f"_str1 {_var} _str2 {_var} ..."                                                                        ===> string formating in v3.6+
# [4] - _str * _num                                                                                             ===> to repeat string
# [5] - _str[::-1]                                                                                              ===> to reserve string
# 
# [1] - str(_data)                                                                                              ===> to convert to string
# [2] - str._builtinFunc(_data)                                                                                 ===> execute built in function
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | list |
# --------
# [1] - _lst[_numIndex]                                                                                         ===> to access in list, -_num is from end
# [2] - _str.join(_lst)                                                                                         ===> to convert _lst to _str separated by _str
# 
# [3] - _lst.append(_data)                                                                                      ===> to add to list in the last
# [4] - _lst.insert(_numIndex, _data)                                                                           ===> to add to list before _numIndex
# [5] - _lst.extend()                                                                                           ===> to concatenate lists
# [6] - _lst.remove(_data)                                                                                      ===> to delete only 1 index in list
# [7] - _lst.sort(reverse=_bool)                                                                                ===> to sort numbers only or strings only in list
# [8] - _lst.reverse()                                                                                          ===> to reverse list
# [9] - _lst.clear()                                                                                            ===> to clear list
# 
# [10] - _lst.copy()                                                                                            ===> to copy list and if i add to main list not modified
# [11] - _lst.count(_data)                                                                                      ===> to count _data in list
# [12] - _lst.index(_data)                                                                                      ===> to search the index of _data, output error if error syntax
# [13] - _lst.pop(_numIndex)                                                                                    ===> to remove data in list
# 
# [14] - _lst * _num                                                                                            ===> to repeat list
# 
# [15] - len(_lst)                                                                                              ===> to show length of list
# 
# [16] - _str in _lst                                                                                           ===> if string in list
# [17] - _str not in _lst                                                                                       ===> if string not in list
# 
# [18] - bytearray(_lst, _unicode)                                                                              ===> to convert list if contain numbers to byetes or if string must add _unicode
# 
# [1] - list(_data)                                                                                             ===> to convert to list, (character in string, key in dictionary, can't convert _num)
# [2] - list._builtinFunc(_data)                                                                                ===> execute buit in function
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Number |
# ----------
# [1] - float(_int)                                                                                             ===> to convert to float
# [2] - complex(_int or _float)                                                                                 ===> to convert to complex
# [3] - int(_float or _str)                                                                                     ===> to convert to integer
# [4] - int                                                                                                     ===> the type
# [5] - _dataType._builtinFunc(_data)                                                                           ===> float, complex, int, execute built in function
# [6] - bin(_num)                                                                                               ===> to show the binary code of number
# [7] - hex(_num)                                                                                               ===> to convert number to hex
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Tuple |
# ---------
# [1] - _tpl1 + _tpl2                                                                                           ===> to concaenate
# [2] - _tpl * _num                                                                                             ===> to repeat tuple
# [3] - _tpl.count(_data)                                                                                       ===> to count _data in tuple
# [4] - _tpl.index(_data)                                                                                       ===> to search the index of _data, output error if error syntax
# [5] - len(_tpl)                                                                                               ===> to show length of tuple
# 
# [1] - _var1, _var2, ... = _tpl                                                                                ===> to distribute the data in variables, and write _ to ignore variable
# 
# [1] - tuple(_data)                                                                                            ===> to convert to tuple, (character in string, key in dictionary, can't convert _num)
# [2] - tuple._builtinFunc(_data)                                                                               ===> execute built in function
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Set |
# -------
# [1] - _set.clear()                                                                                            ===> to clear list
# [2] - _set1 | _set2                                                                                           ===> to concatenate sets
# [3] - _set.union(_set1, _set2)                                                                                ===> to concatenate sets
# [4] - _set.add(_data)                                                                                         ===> to add to set
# [5] - _set.copy()                                                                                             ===> to copy set and if i add to main set not modified
# [6] - _set.remove(_data)                                                                                      ===> to delete only 1 index in list, output error if error syntax
# [7] - _set.discard(_data)                                                                                     ===> to delete only 1 index in list, no output if error syntax
# [8] - _set.pop()                                                                                              ===> to get data from list as random index
# [9] - _set.update(_data)                                                                                      ===> to concatenate sets and split string
# 
# [10] - _set.difference(_set)                                                                                  ===> to show the different elements in main set from second set
# [11] - _set.difference_update(_set)                                                                           ===> update main set with the different elements in main set from second set
# [12] - _set1 - _set2                                                                                          ===> update main set with the different elements in main set from second set
# [13] - _set.intersection(_set)                                                                                ===> to show the same elements in both sets
# [14] - _set.intersection_update(_set)                                                                         ===> update the main set with the same elements in both sets
# [15] - _set.symmetric_difference(_set)                                                                        ===> to show the elements is found in one set of two sets
# [15] - _set.symmetric_difference_update(_set)                                                                 ===> update the main set with the elements is found in one set of two sets
# 
# [16] - _set.issuperset(_set)                                                                                  ===> if the elements of second set is found in first set
# [17] - _set.issubset(_set)                                                                                    ===> if the elements of first set is found in second set
# [18] - _set.isdisjoint(_set)                                                                                  ===> if both sets is difference in all elements
# 
# [19] - len(_set)                                                                                              ===> to print length of set
# 
# [1] - set(_data)                                                                                              ===> to convert to set, (character in string, key in dictionary, can't convert _num)
# [2] - set._builtinFunc(_data)                                                                                 ===> execute built in function
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Dictionary |
# --------------
# [1] - _dct[_strIndex]                                                                                         ===> to access in list
# [2] - _dct.keys()                                                                                             ===> to show all keys
# [3] - _dct.values()                                                                                           ===> to show all values
# 
# [4] - _dct.clear()                                                                                            ===> to clear dictionary
# [5] - _dct.update({_key1 : value1, _key2 : _value2, ...})                                                     ===> to add to dictionary
# [6] - _dct[_keyNew] = _valueNew                                                                               ===> to add to dictionary
# [7] - _dct.copy()                                                                                             ===> to copy dictionary and if i add to main dictionary not modified
# 
# [8] - _dct.setdefault(_key, _value)                                                                           ===> to update key or add new key
# [9] - _dct.popitem()                                                                                          ===> to get the last kay & value from dictionary
# [10] - _dct.items()                                                                                           ===> to convert each key & value into tuple
# [11] - dict.fromkeys(_key, _value)                                                                            ===> to create dictionary, key can be tuple
# 
# [1] - dict(_data)                                                                                             ===> to convert to dictonary, (tuple contain nested tuple, list contain nested list, can't convert _num)
# [2] - dict._builtinFunc(_data)                                                                                ===> execute built in function
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Boolean |
# -----------
# [1] - bool(_data)                                                                                             ===> any data is true exept (0, "", '', {}, [], (), False, None) is False
# [2] - bool._builtinFunc(_data)                                                                                ===> execute built in function
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Commands |
# ------------
# [1] - if _condition:
#           _command
#       elif _condition:
#           _command
#       else:
#           _command
# 
#       print(_command if _condition else _command)
# 
# [2] - while _condition :
#           _command
#       else :
#           _command
# [3] - for _childOject, _childValue in enumerate(_object, _numStart)                                           ===> _childObject is key, _object[_childObject] and _childValue is value
#           _command
# [4] - with _file as _var :
#           _command
# [5] - def _functionName(_param1 = _default, _param2 = _default, ...) -> _dataType :                           ===> _functionName() to execute this, *_param to set the number of parameter according inputs as tuple or **_param to create
#           _command                                                                                                 dictionary and this one is key (unpaking) => _functionName(_data = "_data") tuple unpacking with * and dictionary with **,
#                                                                                                                    _param can be a function (child function in _command place) and main function is called _decoratorFunction, (->) to hint
#       @_decoratorFunction                                                                                     ===> to execute child function in decorator function
#       _childFunction()
# 
#       _functionName = lambda _param1 = _default, _param2 = _default, ... : _command                           ===> if _command is return the command is be without return command
# [6] - async def _functionName(_param1 = _default, _param2 = _default, ...) -> _dataType :                     ===> _functionName() to execute this, *_param to set the number of parameter according inputs as tuple or **_param to create
#           _command                                                                                                 dictionary and this one is key (unpaking) => _functionName(_data = "_data") tuple unpacking with * and dictionary with **,
#           await _asyncFunction                                                                                     _param can be a function (child function in _command place) and main function is called _decoratorFunction, (->) to hint
#       @_decoratorFunction                                                                                     ===> to execute child function in decorator function
#       _childFunction()
# 
# [6] - break                                                                                                   ===> to stop
# [7] - continue                                                                                                ===> to continue
# [8] - pass                                                                                                    ===> if _command is not filled with command
# [9] - return _data                                                                                            ===> to return to data, in normal function
# [10] - yield _data                                                                                            ===> to return datas as itrator in next(), in generator function
# [11] - del _object                                                                                            ===> to delete object
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Files Handling |
# ------------------
# [1] - _fileHandle = open(r"_path", "_fileType")                                                               ===> defualt file type is "r" (must absloute path), r for disable _escapeCharacter
# 
# [2] - print(_fileHandle)                                                                                      ===> to print data of file not content, if file type is r
# [3] - print(_fileHandle._fileData)                                                                            ===> to print specific data of file not content, if file type is r
# [4] - print(_fileHandle.read(_numCharacter))                                                                  ===> to print content of file, _numCharacter defualt is all, if file type is r
# [5] - print(_fileHandle.readline(_numCharacter))                                                              ===> to print 1 line of file, _numCharacter defualt is all, if file type is r
# [6] - print(_fileHandle.readlines(_numCharacter))                                                             ===> to print all line of file as lists, _numCharacter defualt is all, if file type is r
# [7] - _fileHandle.truncate(_numByte)                                                                          ===> to get content of file according bytes number in the same file, if file type is r
# [8] - print(_fileHandle.tell())                                                                               ===> to print the postion of cursor, if file type is r
# [9] - _fileHandle.seek(_numIndex)                                                                             ===> to set data from index number, if file type is r
# 
# [8] - _fileHandle.write("_data")                                                                              ===> to put data in file, if file type is w 
# [9] - _fileHandle.writelines(_lst)                                                                            ===> to put list in file, if file type is w
# 
# [10] - _fileHandle.write("_data")                                                                             ===> to put data in file, if file type is a 
# [11] - _fileHandle.writelines(_lst)                                                                           ===> to put list in file, if file type is a
# [12] - _fileHandle.close()                                                                                    ===> to close file
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Built In Function |
# ---------------------
# [1] - all(_lst)                                                                                               ===> if all objects is true
# [2] - any(_lst)                                                                                               ===> if any object is true
# [3] - bin(_num)                                                                                               ===> to convert number to binary
# [4] - id(_var)                                                                                                ===> to show id of variable
# 
# [5] - sum(_lst, _num)                                                                                         ===> to show sum of list and add number
# [6] - round(_num, _numDigit)                                                                                  ===> to round the floating number
# [7] - range(_numStart, _numEnd, _numStep)                                                                     ===> to print numbers, _numStart default is 0
# 
# [8] - abs(_num)                                                                                               ===> to show absolute value
# [9] - pow(_numBase, _numExponent, _numModulas)                                                                ===> (_num * _num * ...) % _num
# [10] - min(_tpl)                                                                                              ===> to show minimum number, can tuple be numbers, if content is string will show according 1st number
# [11] - max(_tpl)                                                                                              ===> to show maximum number, can tuple be numbers, if content is string will show according 1st number
# [12] - _lst[slice(_numStart, _numEnd)]                                                                        ===> to slice the list
# 
# [13] - map(_funcitionName, _lst)                                                                              ===> to loop content of list in function, then put map in for loop, return data
# [14] - filter(_functionName, _lst)                                                                            ===> to loop content of list in function, then put map in for loop, return data according boolean
# [15] - reduce(_functionName, _lst)                                                                            ===> to loop content of list in function, then put map in for loop, return data according _arth, need (from functools import
#                                                                                                                    reduce), eg. (((1+8) + 5) + 9)
# 
# [16] - enumerate(_lst, _numStart)                                                                             ===> to add to each object number and be as tuple
# [17] - reversed(_data)                                                                                        ===> to reverse data
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Reference |
# -------------
# [1] - import _module1 as _name1, _module2 as _name2, ...                                                      ===> to improt module, import . (to import current directory)
# [2] - from _module1, _module2, ... import _functionModule1 as _name1, _functionModule2as _name2, ...          ===> to import function from module, if execute willn't type module name, if type * in function name will get all of functions
# [3] - _module._functionModule()                                                                               ===> to execute function in module
# [4] - dir(_module)                                                                                            ===> to show all functions in this module
# 
# [5] - import sys                                                                                              ===> to import module to edit path of modules you wiil add
# [6] - sys.path.append("_path")                                                                                ===> to add new path to add custom module
# [7] - sys.getsizeof(_data)                                                                                    ===> get the size in bytes
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Packages |
# ------------
# [1] - pip --version                                                                                           ===> to show version
# [2] - pip list                                                                                                ===> to show all packages installed
# [3] - pip install _packageName = _version                                                                     ===> to install external package
# [4] - pip install --user _packageName --upgrade                                                               ===> to update package
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Date package |
# ----------------
# import datetime                                                                                               ===> to import date functions
# [1] - datetime.datetime.now()                                                                                 ===> current date and time
# [2] - datetime.datetime.now().year                                                                            ===> current year
# [3] - datetime.datetime.now().month                                                                           ===> current month
# [4] - datetime.datetime.now().day                                                                             ===> current day
# [5] - datetime.datetime.now().time()                                                                          ===> current time only
# [6] - datetime.datetime.now().time().hour                                                                     ===> current hour
# [7] - datetime.datetime.now().time().minute                                                                   ===> current minute
# [8] - datetime.datetime.now().time().second                                                                   ===> current second
# [9] - datetime.datetime.min                                                                                   ===> the start of date
# [10] - datetime.datetime.max                                                                                  ===> the end of date
# [11] - datetime.datetime(_year, _month, _day, _hour, _minute, _second, _microsecond)                          ===> custom date and time
# [12] - datetime.time.min                                                                                      ===> the start of time
# [13] - datetime.time.max                                                                                      ===> the end of time
# [15] - (_date1 - _date2).days                                                                                 ===> minus of dates
# 
# [16] - datetime.strftime("%_dateFormat1 %_dateFormat2 ...")                                                   ===> convert date to string, _dateFormat in https://strftime.org/
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Time package |
# ----------------
# import time                                                                                                   ===> to import time functions
# [1] - time.time()                                                                                             ===> current date as floating point
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Pillow package |
# ------------------
# import PIL                                                                                                    ===> to import pillow functions
# [1] - _imgHandle = PIL.image.open("_imgPath")                                                                 ===> to open image
# [2] - _imgHandle.show()                                                                                       ===> to show image
# [3] - _imgHandle.crop(_tpl)                                                                                   ===> to crop image and the tuple has 4 values
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Pillow package |
# ------------------
# import pylint                                                                                                 ===> to import pylint functions
# [1] - pylint.exe _filePath                                                                                    ===> to show the rate of file according style of file
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Regular Expression |
# ----------------------
# import re                                                                                                     ===> to import regular expression functions
# [1] - _handle = re.search(r"_regularExpression", _data, _multi)                                               ===> to search the data and convert as tuple as indexes, and result is true or false
#                                                                                                                    re.I to ignore, re.DOTALL
# [2] - _handle.span()                                                                                          ===> to show tuple
# [3] - _handle.string                                                                                          ===> to show the data is searched in
# [4] - _handle.group(_numIndex)                                                                                ===> to show selective match
# [5] - _handle.groups()                                                                                        ===> to show all of matches
# [5] - _handle.findall(r"_regularExpression", _data)                                                           ===> to show all matchs as list
# [6] - re.split(r"_regularExpression", _data, _numSplit)                                                       ===> to convert to _lst, _str default is " ", _num of splits
# [7] - re.sub(r"_regularExpression", _data, _dataReplacement, _intReplacement)                                 ===> to replace
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Abstract Base Class |                                                                                       ===> to include this in other classes and must has the same pattern but different in return data or passed
# -----------------------
# from abc import ABCMeta, abstractmethod                                                                       ===> to import ABCs functions
# [1] - class _className(metaclass = ABCMeta) :                                                                 ===> to create abstract functions
#           @abstractmethod
#           def _abcMethod(self) :
#               pass
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Time it |
# -----------
# import timeit                                                                                                 ===> to import Time it functions
# [1] - timeit.timeit(stmt = "_statement1; _statement2; ...", setup = "_importModule")                          ===> to show the run time, and the statements is repeated 1,000,000 times
# [2] - timeit.repeat(stmt = "_statement1; _statement2; ...", setup = "_importModule", repeat = _numRepeat)     ===> to show the run time _numRepeat times from 1,000,000 times
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Logging |
# -----------
# import logging                                                                                                ===> to import Logging functions
#                                                                                                                    name = "root", levelname = _function, message = _data, asctime = _current date and time
# [1] - logging.basicConfig(filename = "_path", filemode = "_fileType", format = "_frmt", datefmt = "_frmt")    ===> to create log file
# [2] - _handle = logging.getLogger(_data)                                                                      ===> to change name = _data
# [3] - _handle.critical(_data)                                                                                 ===> to put data as (CRITICAL:root:_data) in log file according to _frmt
# [4] - _handle.error(_data)                                                                                    ===> to put data as (ERROR:root:_data) in log file according to _frmt
# [5] - _handle.warning(_data)                                                                                  ===> to put data as (WARNING:root:_data) in log file according to _frmt
# [6] - _handle.debug(_data)                                                                                    ===> to put data as (DEBUG:root:_data) in log file according to _frmt
# [7] - _handle.info(_data)                                                                                    ===> to put data as (INFO:root:_data) in log file according to _frmt
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | SQLite |
# ----------
# import sqlite3                                                                                                ===> to import SQLite functions
# [1] - _databaseVar = sqlite3.connect("_fileName")
#
# [2] - _cursorVar = _databaseVar.cursor()                                                                      ===> to begain edit
# [3] - _cursorVar.execute("_command")
# [4] - _cursorVar.commit()                                                                                     ===> save changes of inserted data
# [5] - _cursorVar.fetchone()                                                                                   ===> to yield data in command (SELECT), and return (None) if reach to the last of table
# [6] - _cursorVar.fetchall()                                                                                   ===> as _lst
# [7] - _cursorVar.fetchmany(_int)                                                                              ===> the size of _lst
#
# [3] - _databaseVar.close()
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | ftplib |
# ----------
# import ftplib                                                                                                 ===> to import ftplib functions
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Documentation |
# -----------------
# [1] - '''_content'''                                                                                          ===> to create documentation of function as single line
# [2] - """_content"""                                                                                          ===> to create documentation of function as multiple line
# [3] - _functionName.__doc__                                                                                   ===> to show documentation of function
# [4] - help(_funcutionName)                                                                                    ===> to show documentation of function
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Exception Errors |
# --------------------
# [1] - raise Exception(_data)                                                                                  ===> to create custom error, usually in if conditions, after that willn't execute
# [2] - raise ValueError(_data)                                                                                 ===> to create custom error, usually in if conditions, after that willn't execute
# 
# [3] - try :                                                                                                   ===> to try execute command
#           _command
#       except _errorType :                                                                                     ===> if error shown will execute second command
#           _command
#       except _errorType :
#           _command
#       ...
#       else :                                                                                                  ===> if not error found
#           _command
#       finally :                                                                                               ===> execute this command anyway
#           _command
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | OOP |
# -------
# [1] - class _className2(_className1, _className3) :                                                           ===> to derived the _className2 from _className1
#           _attribute1 = _data
#           _attribute2 = _data
#           ...
#           def __init__(self, _param1, _param2, ...) :                                                         ===> it must be found in class, self is as _className, (_defaultMethod)
#               self._attribute1 = _data or _param1 or _param2 or ...                                           ===> if attribute begian with __ can't be shown and modified outside the class (_privateAttribute), or if begian with _ it
#               self._attribute2 = _data or _param1 or _param2 or ...                                                refer to (_protectedAttribute)
#               _className._attribute1                                                                          ===> to accsess attributes
#               _className._attribute2
#               _className1._func1(_default, _param1, _param2, ...)                                             ===> to derived from included another class specific function
#               _className1._func2(_default, _param1, _param2, ...)                                             ===> to derived from included another class specific function
#               super()._func1(_default, _param1, _param2, ...)                                                 ===> to derived from included another class specific function
#               super()._func2(_default, _param1, _param2, ...)                                                 ===> to derived from included another class specific function
#               ...
#           def __str__(self, _param1, _param2, ...)                                                            ===> (_readableFunc)
#               return self._attribute1 + self._attribute2 + ...
#           def __len__(self, _param1, _param2, ...)                                                            ===> (_lengthFunc), to execute len(_className)
#               return len(_data)
#           def _instanceMethod(self, _param1, _param2, ...) :                                                  ===> (_instanceMethod)
#               self._attribute1 = _data or _param1 or _param2 or ...
#               self._attribute2 = _data or _param1 or _param2 or ...
#               ...
#           @classmethod
#           def _classMethod(cls, _param1, _param2, ...) :                                                      ===> (_classMethod), cls ==> to get class
#               cls._instanceMethod1
#               cls._instanceMethod2
#               ...
#           @staticmethod
#           def _staticMethod(_param1, _param2, ...) :                                                          ===> (_staticMethod), to delete self object
#               _statement1
#               _statement2
#               ...
#           @property
#           def _propertyMethod() :                                                                             ===> (_propertyMethod) to set as property if without () and give error if within ()
#               _statement1
#               _statement2
#               ...
#           _method1
#           _method2
#           ...
# 
#       _handle = _className(_data1, _data2, ...)                                                               ===> to execute class, and must put argument if no data in this argument
# 
# [2] - _handle.__class__                                                                                       ===> to show properties of this class, _data.__class__ to print type of data
# [3] - _handle._attribute                                                                                      ===> to access attribute
# [4] - _handle._instanceMethod(_data1, _data2, ...)                                                            ===> to execute function, (_handle._instanceMethod) to show properties
# [5] - _handle._classMethod(_data1, _data2, ...)                                                               ===> to execute function, (_handle._classMethod) to show properties
# [6] - _handle._staticMethod(_data1, _data2, ...)                                                              ===> to execute function, (_handle._staticMethod) to show properties
# [7] - _handle._propertyMethod                                                                                 ===> to execute function
# [8] - _handle.mro()                                                                                           ===> to show properties of this class and derived classes
# [9] - print(_handle.__className___privateAttribute)                                                           ===> to print _privateAttribute
# [10] - print(_handle._attribute)                                                                              ===> to print attribute
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Advanced |
# ------------
# [1] - __name__                                                                                                ===> built in variable and equal __main__ if function is running from file directly not from module
# [2] - class _className(unittest.TestCase) :                                                                   ===> to define as class for unit test
#           _statement
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Errors type |
# ---------------
# [1] - AssertionError
# [2] - 
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Reference |
# -------------
# [1] - https://pyformat.info
# [2] - https://docs.python.org/3/
# [3] - https://pypi.org/
# [4] - https://strftime.org/
# [5] - https://docs.python.org/3/library/exceptions.html
# [6] - https://replit.com
# [7] - https://pythex.org/                                                                                     ===> regular expression
# [8] - https://www.debuggex.com/cheatsheet/regex/python                                                        ===> regular expression
# [9] - https://regex101.com/
# [10] - https://sqlitebrowser.org/
# [11] - https://docs.python.org/3/library/unittest.html
# 
# [12] - https://docs.djangoproject.com/en/4.0/intro/tutorial01/
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# | Django |
# ----------
# [1] - django-admin startproject _name                                                                         ===> to create project in terminal
# [2] - python ./manage.py runserver _port                                                                      ===> to run local host
# 
# [3] - python ./manage.py startapp polls                                                                       ===> to create poll app (website)
# [4] - edit ./polls/views.py                                                                                   ===> to edit website
# 
# [5] - create file ./polls/urls.py                                                                             ===> to call view.py and add this code
# --------------------------------------------------------------------------------------------------------------
# from django.urls import path                                                                                 |
# from . import views                                                                                          |
# urlpatterns = [path('', views.index, name='index'), ]                                                        |
# --------------------------------------------------------------------------------------------------------------
# [6] - edit file ./_name/urls.py                                                                               ===> to call view.py and add this code (to set the path in domine)
# --------------------------------------------------------------------------------------------------------------
# from django.urls import path, include                                                                        |===> add function include()
# path('_name1/', include('polls.urls')),                                                                      |===> add into list was called urlpatterns
# --------------------------------------------------------------------------------------------------------------
# 
# [8] - edit file ./_name/settings.py                                                                           ===> to edit database
# --------------------------------------------------------------------------------------------------------------
# 'polls.apps.PollsConfig',                                                                                    |===> in INSTALLED_APPS list, to add my app to database
# --------------------------------------------------------------------------------------------------------------
# [9] - edit file ./_name/models.py                                                                             ===> to add model add those (to create table in database)
# --------------------------------------------------------------------------------------------------------------
# class Question(models.Model):                                                                                |
#     _var1 = models.CharField(max_length=200)                                                                 |===> question
#     _var2 = models.DateTimeField('date published')                                                           |===> question publication date
# class Choice(models.Model):                                                                                  |
#     _var3 = models.ForeignKey(Question, on_delete=models.CASCADE)                                            |===> 
#     _var4 = models.CharField(max_length=200)                                                                 |
#     _var5 = models.IntegerField(default=0)                                                                   |
# --------------------------------------------------------------------------------------------------------------
# [10] - python ./manage.py shell                                                                               ===> to run the project as shell
# --------------------------------------------------------------------------------------------------------------
# from polls.models import Choice, Question  # Import the model classes we just wrote.                         |
# Question.objects.all()                                                                                       |===> to show all in Question object
# from django.utils import timezone                                                                            |===> Create a new Question
#                                                                                                              |===> Support for time zones is enabled in the default settings file, so Django expects a datetime with tzinfo for pub_date. Use timezone.now()
# q = Question(question_text=_data, pub_date=timezone.now())                                                   |===> instead of datetime.datetime.now() and it will do the right thing
# q.save()                                                                                                     |===> to save
# q.id                                                                                                         |===> to show the id of data
# q.question_text                                                                                              |===> to show the data of this object
# q.pub_date                                                                                                   |===> to show the publication date
# q.question_text = _data                                                                                      |===> to set the value
# q.save()                                                                                                     |===> to save
# Question.objects.all()                                                                                       |===> to show all in Question object
# --------------------------------------------------------------------------------------------------------------
# [12] - edit file ./polls/models.py                                                                            ===> to excute the datebase
# --------------------------------------------------------------------------------------------------------------
# from django.db import models                                                                                 |
# class Question(models.Model):                                                                                |
#     # ...                                                                                                    |===> don't remove the last editing
#     def __str__(self):                                                                                       |===> in show the text in object in number 10
#         return self.question_text                                                                            |
# class Choice(models.Model):                                                                                  |
#     # ...                                                                                                    |
#     def __str__(self):                                                                                       |
#         return self.choice_text                                                                              |
# --------------------------------------------------------------------------------------------------------------
# from django.db import models                                                                                 |
# import datetime                                                                                              |===> time-zone-related utilities
# from django.utils import timezone                                                                            |===> time-zone-related utilities
# class Question(models.Model):                                                                                |
#     # ...                                                                                                    |
#     def was_published_recently(self):                                                                        |
#         return self.pub_date >= timezone.now() - datetime.timedelta(days=1)                                  |
# --------------------------------------------------------------------------------------------------------------
# [13] - python ./manage.py shell                                                                               ===> to run the project as shell
# --------------------------------------------------------------------------------------------------------------
# from polls.models import Choice, Question                                                                    |
# Question.objects.all()                                                                                       |===> show all of the objects
# Question.objects.filter(id=1)                                                                                |===> to search according the id
# Question.objects.filter(question_text__startswith='What')                                                    |===> to search according the text
# from django.utils import timezone                                                                            |
# current_year = timezone.now().year                                                                           |
# Question.objects.get(pub_date__year=current_year)                                                            |===> to set the publication date
# Question.objects.get(id=2)                                                                                   |===> get error because it is not founded
# Question.objects.get(pk=1)                                                                                   |===> to search according primary-key
# q = Question.objects.get(pk=1)                                                                               |===> to set the varible
# q.choice_set.all()                                                                                           |
# q.choice_set.create(choice_text='Not much', votes=0)                                                         |
# q.choice_set.create(choice_text='The sky', votes=0)                                                          |
# c = q.choice_set.create(choice_text='Just hacking again', votes=0)                                           |
# c.question                                                                                                   |
# q.choice_set.all()                                                                                           |
# q.choice_set.count()                                                                                         |
# Choice.objects.filter(question__pub_date__year=current_year)                                                 |
# c = q.choice_set.filter(choice_text__startswith='Just hacking')                                              |
# c.delete()                                                                                                   |
# --------------------------------------------------------------------------------------------------------------
# [15] - python ./manage.py migrate                                                                             ===> to create tables in database (to apply those changes to the database)
# [16] - python ./manage.py makemigrations polls                                                                ===> to run the model (to create migrations for those changes)
# [17] - python ./manage.py sqlmigrate polls 0001                                                               ===> to show the database
# 
# [18] - edit ./polls/views.py                                                                                  ===> to edit website
# --------------------------------------------------------------------------------------------------------------
# from django.shortcuts import render                                                                          |
# # Create your views here.                                                                                    |
# from django.http import HttpResponse                                                                         |
# def index(request):                                                                                          |
#     return HttpResponse("<h1>Hello, world. You're at the polls index.")                                      |
# def detail(request, question_id):                                                                            |
#     return HttpResponse(f"You're looking at question {question_id}")                                         |
# def results(request, question_id):                                                                           |
#     return HttpResponse(f"You're looking at the results of question {question_id}")                          |
# def vote(request, question_id):                                                                              |
#     return HttpResponse(f"You're voting on question {question_id}")                                          |
# --------------------------------------------------------------------------------------------------------------
# [19] - edit ./polls/urls.py                                                                                   ===> to set the path of website
# --------------------------------------------------------------------------------------------------------------
# from django.urls import path                                                                                 |
# from . import views                                                                                          |
# urlpatterns = [                                                                                              |
#     # ex: /polls/                                                                                            |
#     path('', views.index, name='index'),                                                                     |
#     # ex: /polls/5/                                                                                          |
#     path('<int:question_id>/', views.detail, name='detail'),                                                 |
#     # ex: /polls/5/results/                                                                                  |
#     path('<int:question_id>/results/', views.results, name='results'),                                       |
#     # ex: /polls/5/vote/                                                                                     |
#     path('<int:question_id>/vote/', views.vote, name='vote'),                                                |
# ]                                                                                                            |
# --------------------------------------------------------------------------------------------------------------
# 
# [20] - edit ./polls/views.py                                                                                  ===> to edit website, and add this code
# --------------------------------------------------------------------------------------------------------------
# from .models import Question                                                                                 |
# def index(request):                                                                                          |
#     latest_question_list = Question.objects.order_by('-pub_date')[:5]                                        |
#     output = ', '.join([q.question_text for q in latest_question_list])                                      |
#     return HttpResponse(output)                                                                              |
# --------------------------------------------------------------------------------------------------------------
# 
# [21] - mkdir ./polls/templates                                                                                ===> to create html directory
# [22] - mkdir ./polls/templates/polls                                                                          ===> to create html directory
# [23] - create file ./polls/templates/polls/index.html                                                         ===> to create html file
# --------------------------------------------------------------------------------------------------------------
# <!DOCTYPE html>                                                                                              |
# <html>                                                                                                       |
#     <head>                                                                                                   |
#         <title>django</title>                                                                                |
#     </head>                                                                                                  |
#     <body>                                                                                                   |
#         {% if latest_question_list %}                                                                        |
#         <ul>                                                                                                 |
#         {% for question in latest_question_list %}                                                           |
#             <li><a href="/polls/{{ question.id }}/">{{ question.question_text }}</a></li>                    |
#         {% endfor %}                                                                                         |
#         </ul>                                                                                                |
#         {% else %}                                                                                           |
#         <p>No polls are available.</p>                                                                       |
#         {% endif %}                                                                                          |
#     </body>                                                                                                  |
# </html>                                                                                                      |
# --------------------------------------------------------------------------------------------------------------
# [24] - edit ./polls/views.py
# --------------------------------------------------------------------------------------------------------------
# from django.http import HttpResponse                                                                         |
# from django.template import loader                                                                           |
# from .models import Question                                                                                 |
# def index(request):                                                                                          |
#     latest_question_list = Question.objects.order_by('-pub_date')[:5]                                        |
#     template = loader.get_template('polls/index.html')                                                       |
#     context = {                                                                                              |
#         'latest_question_list': latest_question_list,                                                        |
#     }                                                                                                        |
#     return HttpResponse(template.render(context, request))                                                   |
# --------------------------------------------------------------------------------------------------------------
# from django.shortcuts import render                                                                          |
# from .models import Question                                                                                 |
# def index(request):                                                                                          |
#     latest_question_list = Question.objects.order_by('-pub_date')[:5]                                        |
#     context = {'latest_question_list': latest_question_list}                                                 |
#     return render(request, 'polls/index.html', context)                                                      |
# --------------------------------------------------------------------------------------------------------------
# 
# [25] - edit ./polls/view.py                                                                                   ===> http404
# --------------------------------------------------------------------------------------------------------------
# from django.http import Http404                                                                              |
# from django.shortcuts import render                                                                          |
# from .models import Question                                                                                 |
# # ...                                                                                                        |===> with last data
# def detail(request, question_id):                                                                            |
#     try:                                                                                                     |
#         question = Question.objects.get(pk=question_id)                                                      |
#     except Question.DoesNotExist:                                                                            |
#         raise Http404("Question does not exist")                                                             |===> to raise the error
#     return render(request, 'polls/detail.html', {'question': question})                                      |
# --------------------------------------------------------------------------------------------------------------
# [26] - create file ./polls/templates/polls/detail.html                                                        ===> to show the question
# --------------------------------------------------------------------------------------------------------------
# {{ question }}                                                                                               |
# --------------------------------------------------------------------------------------------------------------
# [27] - edit ./polls/views.py                                                                                  ===> to print 404 page
# --------------------------------------------------------------------------------------------------------------
# def detail(request, question_id):                                                                            |
#     question = get_object_or_404(Question, pk=question_id)                                                   |
#     return render(request, 'polls/detail.html', {'question': question})                                      |
# --------------------------------------------------------------------------------------------------------------
# 
# 
# [18] - python ./manage.py createsuperuser                                                                     ===> to create user to adminstration the website (set the username, password, and email), run the server and go to admin page
# [19] - from django.http import HttpResponse                                                                   ===> to add django
# -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# ##############
# ## Age calc ##
# ##############
# print("Calender calculator".center(80, "#"))
# age = input("Please write ur age \\ ").strip()
# unit = input("Choose ur format u want to show \\ ").strip().lower()
# if unit == "months":
#     print(f"Ur age in months is \\ {(int(age) * 12):,}")
# elif unit == "weeks" or unit == "1":
#     print(f"Ur age in weeks is \\ {(int(age) * 12 * 4):,}:,")
# elif unit == "days" or unit == "2":
#     print(f"Ur age in days is \\ {(int(age) * 365):,}")
# elif unit == "hours" or unit == "3":
#     print(f"Ur age in hours is \\ {(int(age) * 365 * 24):,}")
# elif unit == "minutes" or unit == "4":
#     print(f"Ur age in months is \\ {(int(age) * 365 * 24 * 60):,}")
# elif unit == "seconds" or unit == "5":
#     print(f"Ur age in months is \\ {(int(age) * 365 * 24 * 60 * 60):,}")

# ####################
# ## Database light ##
# ####################
# tries    = 3
# user     = "76032002"
# password = ""
#
# while tries > 0 :
#     tries -= 1
#     password = input("Type the password \\ ")
#     if tries == 0 :
#         print("Sorry u r type wrong password 3 times, please reopen the application")
#         break
#     if password != user :
#         print("Sorry it's wrong pasword, please type it again")
#         print("----------------------------------------------")
#     else :
#         print("Correct password, have a nice day")
#         break

# ##################
# ## Database pro ##
# ##################
# users = {
#     "yoseph"  : "76032002",
#     "ali"     : "760320",
#     "mohamed" : "7603"
#     }
# triesN = 4
# triesP = 3
# flag   = False
# 
# while triesN >= 0 :
#     triesN -= 1
# 
#     if flag == True :
#         break
# 
#     if triesN == 0 :
#         print("Sorry u typed wrong password or username 3 times :(")
#         break
# 
#     # username
#     name = input("Type ur username \\ ")
#     for user in users :
# 
#         # pass
#         if name == user :
#             while triesP >= 0 :
#                 triesP -= 1
# 
#                 if triesP == 0 :
#                     triesN = 1
#                     continue
# 
#                 password = input(f"Type {name}'s password \\ ")
# 
#                 if password == users[user] :
#                     flag = True
#                     print(f"Correct {name}' password, have nice :)")
#                     break
#                 else :
#                     print("Sorry it's wrong password :(")
#         else :
#             continue
# 
#     if flag == False :
#         print(f"Sorry \"{name}\" isn't found :(")
#         print("--------------------------------")

# ###########################
# ## Remove same character ##
# ###########################
# x = "WWWoooooorrrldd"
# l = 0
# 
# def cleanWord(word) :
#     if len(word) == 1 :
#         return word
#     if word[0] == word[1] :
#         return cleanWord(word[1:])
#     l = len(word)
#     return word[0] + cleanWord(word[1:])
# print(cleanWord(x), l)

# ################
# ## Text Style ##
# ################
# def fName(x) :
#     print(f"Hello {x} :)")
# from pyfiglet import figlet_format
# from termcolor import colored
# print(colored(figlet_format("JO"), color = "red"))

# ####################
# ## Function speed ##
# ####################
# from time import time
# num = 100000000
# def speed(func) :
#     start = time()
#     func(num)
#     print(time() - start)
# 
# @speed
# def counter(num) :
#     while (num > 0) :
#         num -= 1

# ########################
# ## Regular expression ##
# ########################
# ([A-Za-z]{1,})(@{1}?)([a-z]{1,})(\.)((com|net|org|edu){1})$

# ####################
# ## Database pro x ##
# ####################
# # Welcome
# import os, pyfiglet
# print(pyfiglet.figlet_format("Welcome to JO :|"))
# print("-" * 73)
# # Craete file
# f = 0
# def adminF() -> str :
#     i = 0
#     x = 0
#     while i < 3 :
#         adminN = input("Type ur username \\ ").lower()
#         if adminN == "root" :
#             while x < 3 :
#                 adminP = input("Type ur password \\ ")
#                 if adminP == "760320" :
#                     global f
#                     f = 1
#                     i = 4
#                     break
#                 else :
#                     x += 1
#             else :
#                 print("Sorry u put wrong password 3 times :(")
#                 break
#         else :
#             print("Sorry the user is not found :(")
#         i += 1
#     else :
#         if i == 5 :
#             print("Congratulation the username and password is true :)")
#         else :
#             print("U put the user name 3 times, please reopen the application :(")
# adminF()
# fileHandleE = None
# fileHandleR = None
# if f == 1 :
#     fileHandleE = open(r"C:\xampp\htdocs\Projects\reference\database.txt", "a")
#     fileHandleR = open(r"C:\xampp\htdocs\Projects\reference\database.txt", "r")
#     fileHandleE.write("\n12")
# else :
#     pass

# #################
# ## Encybration ##
# #################
# def _enc(_dat, _stg = False) -> str:
#     '''
#     _enc(file content, strong or not in boolean) ===> encybrate the content of file
#     '''
#     x = 0
#     _dat = _dat.replace("\n", chr(1114110)).replace(" ", chr(1114111))
#     _dat = _dat.split("\n")
#     for i in _dat :
#         _dat[x] = i[::-1]
#         x += 1
#     _dat.reverse()
#     _dat = chr(1114109).join(_dat)
#     # strong encybration or not
#     if _stg == True :
#         a = -1
#         b = 99999
#         while a < 6912 :
#             a += 1
#             b += 1
#             _dat = _dat.replace(chr(a), chr(b))
#     return _dat
# def _unc(_dat) -> str:
#     '''
#     _unc(file content) ===> uncybrate the content of file
#     '''
#     x = 0
#     _dat = _dat.replace(chr(1114110), "\n").replace(chr(1114111), " ")
#     _dat = _dat.split("\n")
#     for i in _dat :
#         _dat[x] = i[::-1]
#         x += 1
#     _dat.reverse()
#     _dat = "\n".join(_dat)
#     # strong encybration or not
#     if ord(_dat[0]) > 99999 :
#         a = -1
#         b = 99999
#         while a < 6912 :
#             a += 1
#             b += 1
#             _dat = _dat.replace(chr(b), chr(a))
#     return _dat

# import cgi, os
# from sys import path
# print('content-type:text/html\r\n\r\n')
# form = cgi.FieldStorage()
# pn = str(form.getvalue("pname"))
# fle = form["filename"]
# fn = os.path.basename(fle.filename)
# open("/home/jo/Desktop/ref/" + fn, "wb").write(fle.file.read())
# print("<html>")
# print("<body>")
# print("<h1>Product Name\n(%s)</h1>"%pn)
# print("</body></html>")

# import webbrowser, requests
# # webbrowser.open("https://pypi.org")
# r = requests.get("https://web.whatsapp.com")
# print(r.status_code, r.headers, r.text, sep = "\n\n")

# from selenium import webdriver

# driver = webdriver.Chrome()
# driver.get("https://web.whatsapp.com/")
# name = input("Enter the name of usr or group : ")
# msg = input("Enter your message : ")
# count = int(input("Enter the count : "))

# input("Enter anything after scan Qr code")
# user = driver.find_element_by_xpath(f"//span[@title = \"{name}\"]")
# user.click()
# msg_box = driver.find_element_by_class_name("p3_M1")
# for i in range(count) :
#     msg_box.send_keys(msg)
#     button = driver.find_element_by_class_name("_4sWnG")
#     button.click()

import sys

print(sys.argv)

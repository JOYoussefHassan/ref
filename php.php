<?php
/*
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| syntax |
----------
<?php
    _statement_;
?>
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _datatype_ |
--------------
[001] - int
[002] - float
[003] - double
[004] - string
[005] - bool
[006] - arrray                                                                                                    ===> array(_key_ => _data_, ...)
[007] - NULL
[008] - object (class)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _builtIn_ |
-------------
[001] - echo _data_
[002] - $_name_                                                                                                 ===> _var_
[003] - define(_name_, _data_, _bool_)                                                                          ===> _bool_ to case sensitive of _name_
        const _var_                                                                                             ===> without dollar sign ($)

[003] - gettype(_data_)
[004] - var_dump(_data_)

[005] - @_statement_ || die(_data_)

[006] - rand(_intStart_, _intEnd)

[007] - print_r(_data_)                                                                                         ===> to test speceficily the array

[008] - _arrayFunc_
    [001] - count(_array_)
    [002] - in_array(_data_, _array_, _boolSensitive_)                                                          ===> _bool_ to case sensitive of _name_
    [003] - array_search(_data_, _array_, _boolSensitive_)                                                      ===> _bool_ to case sensitive of _name_
    [004] - array_key_exists(_data_, _array_, _boolSensitive_)                                                  ===> _bool_ to case sensitive of _name_, but with _key_
    [005] - array_push(_array_, _data_, ...)                                                                    ===> after last index
    [006] - array_unshift(_array_, _data_, ...)                                                                 ===> before first index
    [007] - array_pop(_array_)                                                                                  ===> remove last index
    [008] - array_shift(_array_)                                                                                ===> remove first index
    [009] - sort(_array_, _typeSort_)                                                                           ===> for keys
    [010] - rsort(_array_, _typeSort_)                                                                          ===> for keys
    [011] - asort(_array_, _typeSort_)                                                                          ===> for values
    [012] - arsort(_array_, _typeSort_)                                                                         ===> for values
    [013] - ksort(_array_, _typeSort_)                                                                          ===> for keys
    [014] - krsort(_array_, _typeSort_)                                                                         ===> for keys
    [015] - array_reverse(_array_, _boolReverse_)                                                               ===> to preserve the key
    [016] - shuffle(_array_)
    [017] - array_fill(_intStart_, _intLen_, _data_)
    [018] - array_sum(_array_)                                                                                  ===> only deal with numbers
    [019] - array_rand(_array_, _intLen_)                                                                       ===> shuffle the some of array and take the key
    [020] - array_unique(_array_)

[009] - _stringFunc_
    [001] - implode(_string_, _array_)
    [002] - explode(_stringSeparator_, _string_, _intRepeat_)
    [003] - join(_string_, _array_)
    [004] - str_split(_string_, _intLen_)                                                                       ===> according to length of each index in array
    [005] - chunk_split(_string_, _intLen_, _stringEnd_)                                                        ===> _intLen_ default value is 76, _stringEnd_ default value is '\r\n'
    [006] - str_replace(_stringSearch_, _stringReplace, _string_, _intRepeat_)                                  ===> _intRepeat_ default value is all of _string_, _stringSearch_ can be as array to replace all of the array,
                                                                                                                     _stringReplace_ can be as array to replace all of the array as paraller to _stringSearch_
    [007] - str_repeat(_string_, _intRepeat_)
    [008] - str_shuffle(_string_)
    [009] - strlen(_string_)
    [010] - addcslashes(_string_)                                                                               ===> to skip characters
    [011] - stripcslashes(_string_)
    [012] - strip_tags(_string_, _stringTag_)                                                                   ===> _stringTag_ is the allowable tags
    [013] - strtolower(_string_)
    [014] - strtoupper(_string_)
    [015] - lcfirst(_string_)
    [016] - ucfirst(_string_)
    [017] - ucwords(_string_)
    [018] - trim(_string_, _stringStartEnd_)
    [019] - str_word_count(_string_, _typeFormate_, _stringToCount_)
    [020] - parse_str(_string_, _array_)                                                                        ===> to convert data to variables, _array_ to convert data to array
    [021] - nl2br(_string_, _boolXhtml_)
    [022] - strpos(_string_, _stringSearch_, _intStart_)
    [023] - stripos(_string_, _stringSearch_, _intStart_)                                                       ===> case insensitive
    [024] - strrpos(_string_, _stringSearch_, _intStart_)                                                       ===> from right postion
    [025] - stripos(_string_, _stringSearch_, _intStart_)                                                       ===> case insensitive, from right postion
    [026] - strstr(_string_, _stringSearch_, _boolBefore_)                                                      ===> to print the data after or before the _stringSearch_
    [027] - stristr(_string_, _stringSearch_, _boolBefore_)                                                     ===> to print the data after or before the _stringSearch_, case insesitive
    [028] - strchr(_string_, _stringSearch_, _boolBefore_)                                                      ===> to print the data after or before the _stringSearch_
    [029] - strcmp(_string_, _string_)                                                                          ===> 0 -> equal, 1 -> first larger than second, -1 -> second larger than first
    [029] - strncmp(_string_, _string_, _intLen_)                                                               ===> 0 -> equal, 1 -> first larger than second, -1 -> second larger than first
    [030] - strrev(_string_)
    [031] - substr(_string_, _intStart_, _intLen_)
    [032] - substr_count(_string_, _stringSub_, _intStart_, _intLen_)
    [033] - substr_compare(_string_, _string_, _intStart_, _intLen_, _boolSensitive_)

[010] - include "_file_.php"
[011] - include_once "_file_.php"
[012] - require "_file_.php"                                                                                    ===> no execute any functions if not exists
[012] - require_once "_file_.php"
[013] - _file_
    [001] - dirname('_path')                                                                                    ===> __FILE__ it is to current file
    [002] - file_exists('_path')
    [003] - is_writable('_path')
    [004] - is_writeable('_path')
    [005] - mkdir('_dirName_')
    [006] - rmdir('_dirName_')
    [007] - is_dir('_dirName_')
    [008] - dirname('_path_', _intParentDir_)
    [009] - __FILE__                                                                                            ===> path of current file
    [010] - __DIR__                                                                                             ===> path of current directory
    [011] - basename('_path_', '._suffix_')                                                                     ===> to remove suffix
    [012] - file_put_contents('_path_', '_data_', _appendMode_ | _appendMode_ | ...)                            ===> create file if not exists
    [013] - file_get_contents('_path_', _boolInclude_, _context_, _intStart_, _intLen_)
    [014] - copy('_pathOld_', '_pathNew_')
    [015] - rename('_pathOld_', '_pathNew_')
    [016] - pathinfo('_path_', _infoType_)
    [017] - unlink('_path_')
    [018] - scandir('_path_', _intSort_)
    [019] - fopen('_path_', _openMode_)
    [020] - fread(_fileHandle_, _intLen_)
    [021] - fwrite(_fileHandle_, '_data_', _intLen_)
    [022] - fseek(_fileHandle_, _intIndex_, _whence_)
    [023] - fclose(_fileHandle_)
    [000] - chmod('_path_', _intMode_)
    [000] - filesize('_path_')

[14] - $GLOBALS['_var_']

[15] - $_SERVER['_data_']
[16] - $_GET['_name_']
[17] - $_POST['_name_']

[18] - setcookie('_name_', '_value_', time() + _intSecond_, '_path_', '_domin_', _boolSecure_, _boolHTTP_)      ===> to set and modeify and delete if time is negative
[19] - $_COOKIE['_name_']

[20] - session_start()
[21] - $_SESSION['_name_']                                                                                      ===> to set we do ($_SESSION['_name_'] = _value_)
[22] - session_unset()                                                                                          ===> to free all of sessions
[23] - session_destroy()                                                                                        ===> to destroy the session

[24] - sleep(_intSecond_)
[25] - usleep(_intMicrosecond_)
[26] - time_sleep_until(time() + _intSecond_)
[27] - exit('_data_')                                                                                           ===> exit and print data
[28] - die('_data_')

[29] - uniqid('_start_', _boolExtra_)

[30] - _filter_
    [1] - filter_list()
    [2] - filter_var(_var_, _filterType_, _filterOption_)                                                       ===> sanitize filter is more secure

[31] - _date_
    [1] - time()                                                                                                ===> current time
    [2] - date(Y _data_ m _data_ d _data_ h _data_ i _data_ s, _intSecond_)                                     ===> _intSecond_ to add to date
    [3] - date_default_timezone_get()
    [4] - date_default_timezone_set(_timezoneName_)

[32] - shal(_data_)                                                                                             ===> to hash data
[33] - namespace _name_\_class_
[0] - isset(_var_)                                                                                              ===> check the variable has found or not
[0] - empty(_var_)
[0] - header('REFRESH:_intSecond_;URL:_url_;')
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _formator_ |
--------------
[1] - _escapeSequanceCharacter_
    [1] - \n                                                                                                    ===> to new line
    [2] - \\                                                                                                    ===> to print (\)
    [3] - \'
    [4] - \"
    [5] - \t                                                                                                    ===> tab (default is 8 spaces)
    [6] - \b                                                                                                    ===> backslash
    [7] - \a                                                                                                    ===> bell
    [8] - \r                                                                                                    ===> overide from beginning of line

[2] - _operators_
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

    [12] - >                                                                                                    ===> _relationalOperators_
    [13] - <                                                                                                    ===> _relationalOperators_
    [14] - >=                                                                                                   ===> _relationalOperators_
    [15] - <=                                                                                                   ===> _relationalOperators_
    [16] - ==                                                                                                   ===> _relationalOperators_
    [17] - ===                                                                                                  ===> _relationalOperators_
    [18] - !=                                                                                                   ===> _relationalOperators_
    [19] - <>                                                                                                   ===> _relationalOperators_
    [20] - !==                                                                                                  ===> _relationalOperators_

    [21] - ++_var_                                                                                              ===> _incrementDecrementOperators_
    [22] - _var_++                                                                                              ===> _incrementDecrementOperators_
    [23] - --_var_                                                                                              ===> _incrementDecrementOperators_
    [24] - _var_--                                                                                              ===> _incrementDecrementOperators_
    
    [25] - .                                                                                                    ===> _concatenateOperator_
    [26] - .=                                                                                                   ===> _aombinedAssignment_

[3] - _typeSort_
    [1] - SORT_REGULAR
    [2] - SORT_STRING

[4] - _typeFormate_
    [1] - 0                                                                                                     ===> to return number of words
    [2] - 1                                                                                                     ===> to return the words as array
    [3] - 2                                                                                                     ===> to return the words as array and the key according to the position of words

[5] - _appendMode_
    [1] - FILE_APPEND
    [2] - LOCK_EX                                                                                               ===> to remove the content of the file and append the data
    [3] - FILE_USE_INCLUDE_PATH

[6] - _infoType_
    [1] - PATHINFO_PATHNAME
    [2] - PATHINFO_BASENAME
    [3] - PATHINFO_EXTENTION
    [4] - PATHINFO_FILENAME

[7] - _intSort_
    [1] - SCANDIR_SORT_ASCENDING
    [2] - SCANDIR_SORT_DESCENDING
    [3] - SCANDIR_SORT_NONE

[8] - _openMode_
    [1] - r                                                                                                     ===> give err if not exists
    [2] - r+                                                                                                    ===> read and write, give err if not exists
    [3] - w
    [4] - w+                                                                                                    ===> read and write
    [5] - a
    [6] - a+                                                                                                    ===> read and append
    [7] - x                                                                                                     ===> must not exist
    [8] - x+                                                                                                    ===> read and write

[9] - _whence_
    [1] - SEEK_SET
    [2] - SEEK_CUR
    [3] - SEEK_END

[10] - _filterType_
    [1] - FILTER_SANITIZE_STRING                                                                                ===> to return as string and remove tags
    [2] - FILTER_VALIDATE_INT
    [3] - FILTER_VALIDATE_EMAIL
    [4] - FILTER_VALIDATE_IP
    [5] - FILTER_VALIDATE_URL

[11] - _filterOption_                                                                                           ===> array('options' => _array_, 'flags' => _array_)
    [1] - 'options'
        [1] - 'min_range' => _int_                                                                              ===> FILTER_VALIDATE_INT
        [2] - 'max_range' => _int_                                                                              ===> FILTER_VALIDATE_INT
    [2] - 'flags'
        [1] - FILTER_FLAG_IPV4                                                                                  ===> FILTER_VALIDATE_IP
        [2] - FILTER_FLAG_IPV6                                                                                  ===> FILTER_VALIDATE_IP
        [3] - FILTER_FLAG_ALLOW_HEX                                                                             ===> FILTER_VALIDATE_INT

[12] - _visability_
    [1] - public
    [2] - private
    [3] - protected                                                                                             ===> within the self class and other classes
    [4] - final _visability_                                                                                    ===> stop override
    [5] - static _visability_
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| if_condition |
----------------
[1] - _complexIfCondition_
if (_conditionStatement_)                                                                                       ===> _conditionStatement_ (_data_ _relationalOperators_ _data_ ...)
    _statement_
elseif (_conditionStatement_)
    _statement_
...
else
    _statement_

[2] - _simpleIfCondition_
(_conditionStatement_) ? _statement_ : _statement_;                                                             ===> the first _statement_ is as after (if) and the second as after (else)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| for_loop |
------------
[1] - _for_
for (_intStart_; _intEnd_; _intStep_)                                                                           ===> _intStart_ (_var_ = _int_), _intEnd_ (_conditionStatement_), _intStep_ (_incrementDecrementOperators_)
    _statement_

[2] - _foreach_
foreach (_array as _key_ => _data)
    _statement_
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| while_loop |
--------------
[1] - _whileWhileFirst_
while (_conditionStatement_)                                                                                    ===> _conditionStatement_ (_data_ _relationalOperators_ _data_ ...)
    _statement_

[2] - _whileWhileFirst_
while (_conditionStatement_):
    _statement_
endwhile

[2] - _whileDoFirst_
do
{
    _statement_
} while (_conditionStatement_);
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| function |
------------
[1] - syntax
function _func_(_var_ = _data_, ...)                                                                            ===> parameters, add & before variable to accept differents, default values from right
{
    _statement_
    return _data_;
}

[2] - activation
_func_(_data_, ...)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| switch_condition |
--------------------
[1] - _switch_
switch (_var_)                                                                                                  ===> as multiple choice
{
    case _data_ :                                                                                               ===> the choice
        _statement_
        break;                                                                                                  ===> to stop other operations
    case _data_ :
        _statement_
        break;
    ...
    default :                                                                                                   ===> to set default choice
        _statement_
}
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| class |
---------
class _className_ extends _oldClass_ {                                                                          ===> if we add in first (final) we can't extends this class
    _var_;                                                                                                           we can use (abstract to stop exute class without extends)
    ...

    _visability_ _var_;
    ...

    _visability_ _func_;
    ...

    abstract _visability_ _func_;
}
_var_ = new _className_()
_var_ = clone _className_()
_var_._property_                                                                                                ===> to access _var_ and _func_ in class, for variables and not for constant variable
_var_::_property_

interface _polyName_ {                                                                                          ===> no functions body as abstract, and use (implants) to include this polymorphism
    _visability_ _func_;
    ...
}
_var_ = new _polyName_()

trait _traitName() {                                                                                            ===> use (use) to include this trait and it can include multi traits
    _var_;                                                                                                           we can use (abstract to stop exute class without extends)
    ...

    _visability_ _var_;
    ...

    _visability_ _func_;
    ...
}

[001] - $this._property_
[002] - self::_property_

[003] - __construct(_var_, ...)                                                                                 ===> when call class
[004] - __call($method, $pram)                                                                                  ===> if error when call method
[005] - __get($prop)                                                                                            ===> if error when call property
[006] - __set($prop, $val)                                                                                      ===> if error when call property and set the value
[007] - __clone()
[008] - __destruct()                                                                                            ===> to execute data when called
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
*/
?>
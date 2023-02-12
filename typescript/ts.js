"use strict";
// create project
/*
    [1] - npm init
    [2] - npm i typescript
    [3] - tsc --init
    [4] - nano ./tsconfig.json :
        [1] - _pos_16_14_ = ES2015
    [5] - nono ./_file_.ts
    [6] - nano ./_file_.js
    [7] - tsc                                                                       ===> to compile the data to JS
    [8] - node _file_                                                               ===> to show the output
*/
// _dataTypes_
/*
    [1] - _string_                                                                  ===> '_data_'
    [2] - _number_
    [3] - _bool_
    [4] - _array_
    [5] - enum _enum_ {
            _data_,                                                                 ===> _enum_._data_ = 0
            _data_,                                                                 ===> _enum_._data_ = 1
            ...
        }
        let _var_ : _enum_ = _enum_._data_
    [6] - _tuple
    [7] - _any_                                                                     ===> _dataTypes_


*/
// _dataTypesFunction_
/*
    [1] - string                                                                    ===> _string_
    [2] - Number                                                                    ===> _number_
    [3] - boolean                                                                   ===> _bool_
    [4] - _dataTypesFunction_[]                                                     ===> _array_

        Array<_dataTypesFunction_>
    [5] - _enum_                                                                    ===> _enum_
    [6] - [_dataTypesFunction_, _dataTypesFunction_, ...]                           ===> _tuple_
    [7] - any                                                                       ===> _any_
*/
// _builtInFunctions_
/*
    [1] - let _var_ : _dataTypesFunction_ = _dataTypes_                             ===> can't revalue of variable to another data types and can't be null, _dataTypesFunction_ to set the data type of variable

    [2] - console.log(_dataTypes_)
    
    [3] - function _functon_(_var_ : _dataTypesFunction_, _var_ : _dataTypesFunction_, ...) : _dataTypesFunction_ {
            return _dataTypes_;
        }

        _function_ = (_var_ : _dataTypesFunction_, _var_ : _dataTypesFunction_, ...) : _dataTypesFunction_ => _dataTypes_
*/
// _stringFunctions_
/*
    [1] - _string_.toUpperCase()                                                    ===> to upper case
    [2] - parseInt(_string_)                                                        ===> to convert number to string
*/
// _arrayFunctions_
/*
    [1] - _array_.filter((_var_)=> _var_ _coditionOperators_ _dataTypes_)
    [2] - _array_.find((_var_)=> _var_ _coditionOperators_ _dataTypes_)             ===> output is data find
    [3] - _array_.reduce((acc, _var_)=> acc + _var_)                                ===> to get sum of array
*/
let func = (_1, _2) => _1 + _2;
console.log(func(1, 2));

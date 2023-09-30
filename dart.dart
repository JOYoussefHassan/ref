import 'dart:core';

List<(int, int)> test = [(1, 2)];

final json = <String, dynamic>{
  'name': 'Dash',
  'age': 10,
  'color': 'blue',
};

void main(List<String> args) {
  print('\u1234');
  print(test[0].$1);
}

/*
void main(List<String> args) {
  _statement_
  ...
}
+--------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _builtinFunction_ |
+--------------------------------+
[1] - print(_data_);                                                                                                                                ===> to show the output of `_data_`
[2] - assert(_bool_);
[3] - identical(_data_, _data_);
[4] - const _data_;
[5] - _statementControler_
  [1] - return _data_                                                                                                                               ===> not with `void` _datatype_
  [2] - continue
  [3] - break
  [4] - throw _error_
[6] - _object_instance_._object_instance_....;
      _object_instance_
      _memberAccessOperator__object_instance_
      ...;
+----------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _var_ (_object_instance_) |
+----------------------------------------+
_varDeclare_ _varName_ = _data_;
'_data_${_varName_}_data_';
'_data_$_varName__data_';

[1] - _varDeclare_
  [1] - _lateVarDeclare_ (_varControl_, ...) _datatype_?                                                                                            ===> can assignned later
    [1] - late (_nothing_, var, final)
  [1] - _varControl_ (_datatype_, ...)?                                                                                                             ===> `?` to null safety
    [1] - _nothing_ (_nothing_, Object, bool, num, int, double, String, _classNem_, _enumName_, _mixinName_, _lits_, _set_, _map_, _record_)?
    [2] - var ()                                                                                                                                    ===> not with functions, no null safety
    [3] - final (Object, bool, num, int, double, String, _classNem_, _enumName_, _mixinName_, _lits_, _set_, _map_, _record_)?                      ===> not with functions
    [4] - const (Object, bool, num, int, double, String, _classNem_, _enumName_, _mixinName_, _lits_, _set_, _map_, _record_)
  [2] - _datatype_
    [1] - Object
    [2] - dynamic
    [3] - bool
    [4] - num                                                                                                                                       ===> (1, 2.1, 0xDEADBEEF, 1.5e5, ...)
    [5] - int
    [6] - double
    [7] - String                                                                                                                                    ===> '_data_'\n'...', '''_data_\n...''', r'_data_'
    [8] - _className_
    [9] - _enumName_
    [10] - _mixinName_
    [11] - List<_datatype_, ...>                                                                                                                    ===> [_data_, ...]
    [12] - Set<_datatype_, ...>                                                                                                                     ===> {_data_, ...}
    [13] - Map<_datatype_, _datatype_>                                                                                                              ===> {_data_: _data_, ...}, `_data_` in each other must matched with its `_datatype_`
    [14] - (_datatype_, ...)                                                                                                                        ===> _record_, (1, a: 2, ...)
            ({_datatype_ _varName_, ...})                                                                                                           ===> ({int a, String b, ...}), `_record_.$_intIndex_` or `_record_._varName_
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _exp_ |
+--------------------+
[1] - _data_ _arithmeticOperator_ _data_
  [1] - _arithmeticOperator_
    [1] - +
    [2] - -
    [3] - *
    [4] - /
    [5] - ~/
    [6] - %
[2] - _prefixOperator__data_
  [1] - _prefixOperator_
    [1] - ++
    [2] - --
[3] - _data__postfixOperator_
  [1] - _postfixOperator_
    [1] - ++
    [2] - --

[4] - _data_ _relationOperator_ _data_
  [1] - _relationOperator_
    [1] - ==
    [2] - !=
    [3] - >=
    [4] - <=
    [5] - >
    [6] - <
[5] - _data_ _testTypeOperator_ _datatype_
  [1] - _testTypeOperator_
    [1] - is
    [2] - is!
    [3] - as
[6] - _data_ _assignmentOperator_ _data_
  [1] - _assignmentOperator_
    [1] - =
    [2] - +=
    [3] - -=
    [4] - *=
    [5] - /=
    [6] - ~/=
    [7] - %=
    [8] - &=
    [9] - |=
    [10] - ^=
    [11] - >>=
    [12] - <<=
    [13] - >>>=

[7] - _prefixLogicalOperator__data_
  [1] - _prefixLogicalOperator_
    [1] - !
[8] - _data_ _centeralLogicalOperator_ _data_
  [1] - &&
  [2] - ||
[9] - _data_ _centralBitOperator_ _data_
  [1] - _centralBitOperator_
    [1] - &
    [2] - |
    [3] - ^
    [4] - >>
    [5] - <<
    [6] - >>>
[10] - _prefixBitOperator__data_
  [1] - _prefixBitOperator_
    [1] - ~

[11] - _data_ _nullOperator_ _data_
  [1] - _nullOperator_
    [1] - ??

[12] - _object_instance__memberAccessOperator__object_instance_
  [1] - _memberAccessOperator_
    [1] - .
    [2] - ?.
    [3] - !-
+--------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _datatype_ (List) |
+--------------------------------+
[1] - ?[_data_, ...]
[1] - [..._set_list_]                                                                                                                               ===> to spread list in list
      [...?_set_list_]
[2] - _list_.length
[3] - 
+-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _datatype_ (Set) |
+-------------------------------+
[1] - {..._set_list_}                                                                                                                               ===> to spread list in set
      {...?_set_list_}
[2] - _set_.add(_data_)
[3] - _set_.addAll(_set_)
[4] - _set_.length
+----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _datatype_ (String) |
+----------------------------------+
[1] - int.parse('_data_')
[2] - double.parse('_data_')
[3] - _int_.toString()
[4] - _double_.toStringAsFixed(_intLen_)

[5] - _escCharacter_
  [1] - \\
  [2] - \n
  [3] - \uXXXX                                                                                                                                      ===> `X` is hex integer
        \u{XXXXXX}
+----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _controlFlow_ |
+----------------------------+
[1] - _condition_
  [1] - if (_exp_) {
          _statement_
          ...
        } else if () {
          _statement_
          ...
        } else {
          _statement_
          ...
        }
  [2] - if (_exp_) _statement_;
  [3] - (_exp_) ? _statement_ : _statement_

[2] - _loop_
  [1] - _forLoop_
    [1] - for (_varDeclare_ _varName_ in _iterable_) {
            _statement_
            ...
          }
    [2] - for (_varDeclare_ _varName_ in _iterable_) _statement_;
    [3] - for (_varDeclare_ _varName_ = _intStart_; _conditionEnd_; _step_) {
            _statement_
            ...
          }
    [4] - for (_varDeclare_ _varName_ = _intStart_; _conditionEnd_; _step_) _statement_;
  [2] - _whileLoop_
    [1] - while (_conditionEnd_) {
            _statement_
            ...
          }

[3] - _exception_
  [1] - try {
          _statement_
          ...
        } on _error_ catch (e) {
          _statement_
          ...
        } finally {
          _statement_
          ...
        }
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _function_ |
+-------------------------+
[1] - _simpleFunction_
  [1] - _blockSimpleFunction_
    [1] - _varDeclare_ _blockSimpleFunctionName_(_varDeclare_ _varName_, ...) {
            _statement_
            ...
            _statementControler_;
          }
          _blockSimpleFunctionName_(_data_, ...);
    [2] - _smallSimpleFunction_
      [1] - _varDeclare_ _smallSimpleFunctionName_(_varDeclare_ _varName_, ...) => _data_;
            _smallSimpleFunctionName_(_data_);
+----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _class_ |
+----------------------+
[1] - _normalClass_
  [1] - class _normalClassName_ {
          @_metadata_
          _statement_
          ...
        }
+-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _classControl_ |
+-----------------------------+
[1] - _metadata_
  [1] - deprecated
  [2] - Deprecated(_data_)
  [3] - override
  [4] - pragma
  [5] - _className_(_data_, ...)
+------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _library_ |
+------------------------+
@_className_(_data_,...)                                                                                                                            ===> to test library
library;                                                                                                                                            ===> to set it a library
import '_importingFunction_:_path_' _libraryControl_;

[1] - _importingFunction_
  [1] - 
  [2] - dart
  [3] - package
[2] - _libraryControl_
  [1] - as _libraryName_
  [2] - show _object_instance_
  [3] - hide _object_instance_
  [4] - deferred as _libraryName_
        await _libraryName_.loadLibrary();                                                                                                          ===> to load lazily library
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
*/

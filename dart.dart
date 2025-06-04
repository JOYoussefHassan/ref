void main(List<String> args) {
  print(~1);
}

/*
dart run _path_.dart
dart --enable-asserts _path_.dart
dart pub get                                                                                        ===> to get all dependacies
*/
/*
void main(List<String> args) {
  _statement_
  ...
}
+--------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _builtinFunction_ |
+--------------------------------+
[1] - print(_data_);                                                                                                                                ===> to show the output of `_data_`
[2] - assert(_bool_, '_errString_');
[3] - identical(_data_, _data_);
[4] - const _data_;
[5] - _data_.map((_varDeclare_ _varName_) => _data_);                                                                                               ===> to pass all of itrable object to function
[6] _itrable_.forEach(_function_)
[5] - _statementControler_
  [1] - return _data_;                                                                                                                              ===> not with `void` _datatype_
  [2] - continue _switchCaseName_OR_Nothing_;
  [3] - break;
  [4] - throw _errorClass_;
    [1] - FormatException(_errString_)
    [2] - _errString_
    [3] - UnimplementedError()
  [5] - rethrow                                                                                                                                     ===> allow callers to see the exception
[6] - _object_instance_._object_instance_....;
      _object_instance_
      _memberAccessOperator_._object_instance_
      ...;
[7] - Object.hash(_data_, ...)
[8] - _cache
[9] - _data_.runtimeType
+----------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _var_ (_object_instance_) |
+----------------------------------------+
_varDeclare_ _varName_ = _data_;
_varDeclare_ [_varName_, ...] = [_data_, ...];                                                                                                      ===> _destruturing_
_varDeclare_ (_varName_, ...) = (_data_, ...);                                                                                                      ===> _destruturing_
'_data_${_varName_}_data_';
'_data_$_varName__data_';

[1] - _varDeclare_
  [1] - _lateVarDeclare_ (_varControl_, ...) _datatype_?                                                                                            ===> can assignned later
    [1] - late (_nothing_, var, final)
  [2] - _varControl_ (_datatype_, ...)?                                                                                                             ===> `?` to null safety
    [1] - _nothing_ (_nothing_, Object, bool, num, int, double, String, _classNem_, _enumName_, _mixinName_, _lits_, _set_, _map_, _record_)?
    [2] - var ()                                                                                                                                    ===> not with functions, no null safety
    [3] - final (Object, bool, num, int, double, String, _classNem_, _enumName_, _mixinName_, _lits_, _set_, _map_, _record_)?                      ===> not with functions
    [4] - const (Object, bool, num, int, double, String, _classNem_, _enumName_, _mixinName_, _lits_, _set_, _map_, _record_)
    [5] - typedef (Object, bool, num, int, double, String, _classNem_, _enumName_, _mixinName_, _lits_, _set_, _map_, _record_)                     ===> must out of main function
          typedef _varDatatype_ = _datatype_
  [3] - _datatype_
    [1] - Object
    [2] - dynamic
    [3] - bool
    [4] - num                                                                                                                                       ===> (1, 2.1, 0xDEADBEEF, 1.5e5, ...)
    [5] - int
    [6] - double
    [7] - String                                                                                                                                    ===> '_data_'\n'...', '''_data_\n...''', r'_data_'
    [8] - Symbol('_data_')
          #_data_
    [9] - Function
    [10] - _className_
          _className_(:_varParameter_, ...)
    [11] - _enumName_
    [12] - _mixinName_
    [13] - List<_datatype_>                                                                                                                         ===> [_data_, ...]
    [14] - Set<_datatype_>                                                                                                                          ===> {_data_, ...}
    [15] - Map<_datatype_, _datatype_>                                                                                                              ===> {_data_: _data_, ...}, `_data_` in each other must matched with its `_datatype_`
    [16] - (_datatype_ _varName_, ...)                                                                                                              ===> _record_, (1, a: 2, ...)
          ({_datatype_ _varName_, ...})                                                                                                             ===> ({int a, String b, ...}), `_record_.$_intIndex_` or `_record_._varName_
          (_varName_: _varDeclare_, ...)
    [17] - _genericDatatype_                                                                                                                        ===> in class as <T> to allow pass of any data
  [4] - void
  [5] - static
        in class only can be accessed without creating instance class (new class inside variable), and edit class data
    [18] - Stream
           BehaviorSubject                                                                                                                          ===> import 'package:rxdart/rxdart.dart'; and stores the initial and latest value
    [19] - Future
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
    [3] - as                                                                                                                                  ===> type casting
    [4] - case
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

[12] - _object_instance__memberAccessOperator_._object_instance_
  [1] - _memberAccessOperator_
    [1] - _nothing_
    [2] - ?
    [3] - !
    [4] - .

[13] - _object_instance__memberCheckOperator_                                                                                                       ===> in switch case only
  [1] - _memberCheckOperator_
    [1] - _nothing_
    [2] - ?
    [3] - !

var data = Test(24)
           ..data()
           ..variable = 56;
+--------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _datatype_ (List) |
+--------------------------------+
_varDeclare_ _varName_ = [_data_, ...]
_varDeclare_ [_varName_, ...] = [_data_, ...]

[1] - ?[_data_, ...]
[1] - [..._set_list_, ...]                                                                                                                          ===> to spread list in list
      [...?_set_list_, ...]
[2] - <_datatype_>[_data_, ...]
[3] - _list_.length
[4] - _list_.isEmpty
[5] - _list_.add(_data_)
[6] - _list_.addAll(_set_)
[7] - _list_.generate(_length_, (i) => ...)
+-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _datatype_ (Set) |
+-------------------------------+
_varDeclare_ _varName_ = {_data_, ...}
_varDeclare_ {_varName_, ...} = {_data_, ...}

[1] - {..._set_list_, ...}                                                                                                                          ===> to spread list in set
      {...?_set_list_, ...}
[2] - <_datatype_>{_data_, ...}
      <_datatype_, _datatype_>{_data_: _data_, ...}
[2] - _set_.add(_data_)
[3] - _set_.addAll(_set_)
[4] - _set_.length
[5] - _set_.from(_set_)                                                                                                                             ====> to equalize old set to new set
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

[6] - _string_.isEmpty
[7] - _string_.toInt()
+-------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _datatype_ (Map) |
+-------------------------------+
[1] - _map_.containsKey('_key_');
[2] - _map_.isEmpty
+----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _datatype_ (Stream) |
+----------------------------------+
await for (_varDeclare_ _varName_ in _stream_) {                                                                                                    ===> to access in stream
  ...
}

import 'dart:async';
StreamSubscription<int> subscription = _stream_.listen(                                                                                             ===> when attached to `sync function` or void
  (event) {
    ...
      subscription.pause(...);                                                                                                                      ===> to pause then resume
  },
);

[1] - _stream_.take(_int_)
[2] - _stream_.forEach(...)
[3] - _stream_.map((_varDeclare_ _varName_) => ...)
[4] - _stream_.expand((_varDeclare_ _varName_) => ...)                                                                                              ===> duplicate list
[5] - _stream_.where((_varDeclare_ _varName_) => ...)
[6] - _steam_.lastWhere((x) => ...)
[7] - _stream_.listen(...)
[8] - _stream_.handleError((e) => log(e))
+----------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _datatype_ (Future) |
+----------------------------------+

[1] - _future_.then((value) => ..., onError: (e) => ...)....
[2] - _future_.catchError((e) => ..., test: (e) => ... is _ErrorClass_)....
[3] - _future_.whenComplete(() => ...)....
[4] - Future.value(_data_)
[5] - Future.error(_data_)
[6] - Future.delayed(_Duration_, () => ...)                                                                                                         ===> to handle in sync function or void
[7] - Future.sync(() => ...)
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
          for (var MapEntry(key: _varKeyName_, value: _varValueName_) in _map_.entries) {
            _statement_
            ...
          }
    [2] - for (_varDeclare_ _varName_ in _iterable_) _statement_;
    [3] - for (_varDeclare_ _varName_ = _intStart_; _conditionEnd_; _step_) {
            _statement_
            ...
          }
    [4] - for (_varDeclare_ _varName_ = _intStart_; _conditionEnd_; _step_) _statement_;
    [5] - await for (...) {
            ...
          }
  [2] - _whileLoop_
    [1] - while (_conditionEnd_) {
            _statement_
            ...
          }

[3] - _exception_
  [1] - try {
          _statement_
          ...
        } on _error_ catch (_errVarName_, _stakeTraceVarName_) {
          _statement_
          ...
        } finally {
          _statement_
          ...
        }
[4] - _switch_
  [1] - _dataSwitch_
    [1] - switch (_data_) {
            _switchCaseName_:
            case _relationOperator_ _exp_ ... when _bool_:
              _statement_;
              ...
              _statementControler_;
            ...
            default:
              _statement_;
              ...
              _statementControler_;
          }
    [2] - switch (_data_) {
            _relationOperator_ _exp_ ... when _bool_=> _data_,
            ...
            _ => _data_,                                                                                                                          ===> the default data
          };
  [2] - _varSwitch_                                                                                                                               ===> to check _data_ has same data type or not
    [1] - switch (_data_) {
            _switchCaseName_:
            case _varDeclare_ ... when _bool_:
              _statement_;
              ...
              _statementControler_;
            ...
            default:
              _statement_;
              ...
              _statementControler_;
          }
    [2] - switch (_data_) {
            _varDeclare_ ... when _bool_ => _data_,
            ...
            _ => _data_,
          };
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _function_ |
+-------------------------+
external _function_

[1] - _simpleFunction_
  [1] - _blockSimpleFunction_
    [1] - _varDeclare_ _blockSimpleFunctionName_<_genericDatatype_, ...>(_pram_, ..., {required _varDeclare_ _varName_ = _data_, [required _varDeclare_ _varName_ = _data_, ...], ...}) {
            _statement_
            ...
            _statementControler_;
            return _data_;
          }
          _blockSimpleFunctionName_<_genericDatatype_, ...>(_dataPram_, ..., _varName_: _data_, ...);
    [2] - _smallSimpleFunction_
      [1] - _varDeclare_ _smallSimpleFunctionName_<_genericDatatype_, ...>(_pram_, ..., {required _varDeclare_ _varName_ = _data_, [required _varDeclare_ _varName_ = _data_, ...], ...}) => _data_;
            _smallSimpleFunctionName_<_genericDatatype_, ...>(_dataPram_, ..., _varName_: _data_, ...);
[3] - _varFunction_
  [1] - _varDeclare_ Function(_dataType_, ...) _varFunctionName_ = _function_

        _varFunctionName_(varName_: _data_, ...);
[4] - _syncFunction_
  [1] - Itarable<_datatype_> _syncFunctionName_<_genericDatatype_, ...>(_pram_, ..., {required _varDeclare_ _varName_ = _data_, [required _varDeclare_ _varName_ = _data_, ...], ...}) sync* {
            _statement_
            ...
            _statementControler_;
            yield _data_;
          }

          _syncFunctionName_<_genericDatatype_, ...>(_dataPram_, ..., _varName_: _data_, ...);
  [2] - Itarable<_datatype_> _syncFunctionName_<_genericDatatype_, ...>(_pram_, ..., {required _varDeclare_ _varName_ = _data_, [required _varDeclare_ _varName_ = _data_, ...], ...}) sync* {
            _statement_
            ...
            _statementControler_;
            yield* _syncFunctionName_(_varName_: _data_, ...);
          }

          _syncFunctionName_<_genericDatatype_, ...>(_dataPram_, ..., _varName_: _data_, ...);
[5] - _asyncFunction_
  [1] - Stream<_datatype_> _asyncFunctionName_<_genericDatatype_, ...>(_pram_, ..., {required _varDeclare_ _varName_ = _data_, [required _varDeclare_ _varName_ = _data_, ...], ...}) async* {
            _statement_
            ...
            _statementControler_;
            yield _data_;
          }

          _syncFunctionName_<_genericDatatype_, ...>(_dataPram_, ..., _varName_: _data_, ...);
  [2] - Stream<_datatype_> _syncFunctionName_<_genericDatatype_, ...>(_pram_, ..., {required _varDeclare_ _varName_ = _data_, [required _varDeclare_ _varName_ = _data_, ...], ...}) {            ===> import 'dart:async';
          StreamController controller StreamController<_datatype_>(
            onListen: _function_,
            onPause: _function_,
            onResume: _function_,
            onCancel: _function_,
          )._command_;
            [1] - add(_data_)
            [2] - close()
            [3] - sink.add(_data_)
            [4] - stream
            [5] - close
          _statement_
            ...
          _statementControler_;
          return controller.stream;
        }
+----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _class_ |
+----------------------+
_varDeclare_ = _className_(_data_, ...);
_varDeclare_ = new _className_(_data_, ...);
_varDeclare_ = const _className_(_data_, ...);

_varDeclare_ = _className_._functionMethod_;
_varDeclare_ = new _className_._functionMethod_;
_varDeclare_ = const _className_._functionMethod_;

[1] - _normalClass_
  [1] - class _normalClassName_<_genericDatatype_extends _className_, ...>
        extends _className_, ..., _abstractMixinName_, ...
        implements _className_, ...
        with _mixinName_, ... {
          const _normalClassName_({required this._propertyVarName_, ..., required super._propertyVarName_, ...}) : _propertyVarName_ = _data_, ...;    ===> to init `_propertyVarName_` with data and `,` is as `or`
          factory _normalClassName_({required this._propertyVarName_, ..., required super._propertyVarName_, ...}) => _data_;
          @_metadata_
          _statement_;
          ...
          String greet(...) => _data_;                                                                                                                 ===> when call class will see that output
          _varDeclare_ get _propertyVarName_ => _data_;
          _varDeclare_ get _propertyVarNameImplementClass_ => _data_;
          set _propertyVarName_(_varDeclare_) => _data_;
          set _propertyVarNameImplementClass_(_varDeclare_) => _data_;
          ...
          _normalClassName_._fuctionMethod_ : _propertyVarName_ = _value_, ...;
          factory _normalClassName_._fuctionMethod_ : _propertyVarName_ = _value_, ...;
          _functionMethod_;
          _propertyVar_;
          ...
        }
[2] - _abstractClass_
  [1] - abstract class _abstractClassName_<_genericDatatype_ extends _className_, ...>
        extends _className_, ..., _abstractMixin_, ...
        implements _className_, ...
        with _mixinName_, ... {
          const _abstractClassName_({required this._propertyVarName_, ..., required super._propertyVarName_, ...});
          @_metadata_
          _statement_;
          ...
          String greet(...) => _data_;                                                                                 ===> when call class will see that output
          _varDeclare_ get _propertyVarName_ => _data_;
          _varDeclare_ get _propertyVarNameImplementClass_ => _data_;
          ...
           _abstractClassName_._fuctionMethod_ : _propertyVarName_ = _value_, ...;
          _functionMethod_;
          _propertyVar_;
          ...
        }
[3] - _sealedClass_
  [1] - sealed class _sealedClassName_<_genericDatatype_ extends _className_, ...>
        extends _className_, ..., _abstractMixinName_, ...
        implements _className_, ...
        with _mixinName_, ...
        permits _className_, ... {                                                                                     ===> to restrict inheritance to specific classes
          const _sealedClassName_({required this._propertyVarName_, ..., required super._propertyVarName_, ...});
          @_metadata_
          _statement_;
          ...
          String greet(...) => _data_;                                                                                 ===> when call class will see that output
          _varDeclare_ get _propertyVarName_ => _data_;
          _varDeclare_ get _propertyVarNameImplementClass_ => _data_;
          ...
           _sealedClassName_._fuctionMethod_ : _propertyVarName_ = _value_, ...;
          _functionMethod_;
          _propertyVar_;
          ...
        }
[4] - _classEditor_
  [1] - @immutable                                                                                                                                                                                        ===> whose state cannot be modified after creation and can be before class
  [2] - @override
+----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _mixin_ |                                                                                               ===> to be reused
+----------------------+
[1] - _normalMixin_
  [1] - mixin _normalMixinName_ on _className_, ... {
          _statement_;
          ...
        }
[2] - _abstractMixin_
  [1] - abstract mixin class _abstractMixinName_ on _className_, ... {
          _statement_;
          ...
        }
+----------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _enum_ |
+---------------------+
[1] - _normalEnum_
  [1] - enum _normalEnumName_ implements _className_ {
          _propertyValueName_(_childPropertyVarName_: _childPropertyValueName_, ...),
          ...;
          _normalEnumName_({
            required this._propertyVarName_,
            ...
          });
          factory _normalEnumName_({
            required this._propertyVarName_,
            ...
          }) => _data_;
          final _varDeclare_ _propertyVarName_;
          ...
          _functionMethod_
          ...
        }

_enumName_._propertyValueName_;
_enumName_._propertyValueName_.index;
_enumName_.values;
+-----------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _classControl_ |
+-----------------------------+
@_metadata_
_className_ opertator _operater_(_varDeclare_) => _data_;

@_metadata_
int get hashCode => _data_;

@_metadata_
set contrast(_varDeclare_) {_statement_}

@_metadata_
void noSuchMethod(Invocation _varName_) {_statement_}

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
+----------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _library_: _extensionEdit_ |
+----------------------------+
extension _className_ on _libraryClassName_ {
  ...
}
+--------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _library_: dart:io |
+--------------------+
[1] - stdin.readLineSync()
[2] - File('_filePath_')
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _library_: dart:isolate |                                                                                                                          ===> to take own thread (part of memory in separate from the remain app)
+-------------------------+
[1] - Isolate.run(...)                                                                                                                               ===> run one function
[2] - Isolate.spwan(...)                                                                                                                             ===> a group of functions
[3] - Isolate.spwanUri(...)
+-------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _library_: dart:convert |                                                                                                                          ===> to deal with JSON (Map)
+-------------------------+
[
  {'_strPrameter_': _value_},
  ...
]
{
  '_strPrameter_': _value_
}

[1] - jsonDecode('_strJson_')
[2] - jsonEncode(_json_)
[3] - utf8.decode(_listBinaryJson_)                                                                                                                  ===> to convert to string
[4] - utf8.encode('_str_')
+---------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _library_: package:json_annotation/json_annotation.dart |                                                                                          ===> dart pub add json_serializable
+---------------------------------------------------------+
+-----------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _library_: package:built_value/....dart |                                                                                                          ===> dart pub add built_value
+-----------------------------------------+
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| _library_: package:test/test.dart |
+-----------------------------------+
@TestOn('_enviroment_')
@Tag('_metadata_')
https://dart.dev/language/enums
https://dart.dev/language/extension-types
https://dart.dev/language/class-modifiers
*/

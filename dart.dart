int test() => 1;

void main() {
  var name = 'Voyager I';
  print('Hello, World! $name');
}

/*
void main() {
  _statement_;
  ...
}
+--------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _builtinFunction_ |
+--------------------------------+
[1] - print(_data_);                                                                                        ===> to show the output of `_data_`
[2] - _statementControler_
  [1] - return _data_                                                                                       ===> not with `void` _datatype_
  [2] - continue
  [3] - break
  [4] - throw _error_
+----------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _var_ (_object_instance_) |
+----------------------------------------+
_varDeclare_ _varName_ = _data_;

[1] - _varDeclare_
  [1] - _varControl_ (_datatype_, ...)
    [1] - (int)
    [1] - var ()                                                                                            ===> not with functions
    [2] - final (int, _className_)                                                                          ===> not with functions
  [2] - _datatype_
    [1] - int
    [2] - _className_
    [3] - _enumName_
    [4] - _mixinName_
+----------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _controlFlow_ |
+----------------------------+
[1] - _condition_
  [1] - if () {
          _statement_;
          ...
        } else if () {
          _statement_;
          ...
        } else {
          _statement_;
          ...
        }

[2] - _loop_
  [1] - _forLoop_
    [1] - for (_varDeclare_ _varName_ in _iterable_) {
            _statement_;
            ...
          }
    [2] - for (_varDeclare_ _varName_ = _intStart_; _conditionEnd_; _step_) {
            _statement_;
            ...
          }
  [2] - _whileLoop_
    [1] - while (_conditionEnd_) {
            _statement_;
            ...
          }

[3] - _exception_
  [1] - try {
          _statement_;
          ...
        } on _error_ catch (e) {
          _statement_;
          ...
        } finally {
          _statement_;
          ...
        }
+-------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _function_ |
+-------------------------+
[1] - _simpleFunction_
  [1] - _blockSimpleFunction_
    [1] - _varDeclare_ _blockSimpleFunctionName_(_varDeclare_ _varName_, ...) {
            _statement_;
            ...
            _statementControler_;
          }
          _blockSimpleFunctionName_(_data_, ...);
    [2] - _smallSimpleFunction_
      [1] - _varDeclare_ _smallSimpleFunctionName_(_varDeclare_ _varName_, ...) => _data_;
            _smallSimpleFunctionName_(_data_);
+----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _class_ |
+----------------------+
[1] - _normalClass_
  [1] - 
+------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------
| _statement_: _library_ |
+------------------------+
import '_importingFunction_:_path_'

[1] - _importingFunction_
  [1] - 
  [2] - dart
  [3] - package
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
*/

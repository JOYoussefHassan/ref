/*
+------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| init |
+------+
--- terminal
    > npm init -y
    > npm install --save-dev typescript @types/node @types/nodemon ts-node nodemon
    > npm install _packageName_ @types/_packageName_
    > npx tsc --init
--- package.json
    | {
    |   "name": "_projectName_",
    |   "version": "_version_",
    |   "main": "_pathIndex_.js",
    |   "scripts": {
    |     ...
    |     "build": "tsc",
    |     "start": "node _pathIndex_.js",
    |     "dev": "nodemon --exec ts-node _pathIndex_.ts"
    |   },
    |   ...
    | }
--- tsconfig.json
    | {
    |    "compilerOptions": {
    |      ...
    |      "rootDir": "./_pathTsDir",
    |      "outDir": "./_pathJsDir_",
    |      ...
    |    }
    | }
--- terminal
    > npm run build
    > npm start
+-----+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ref |
+-----+
_datatype_
--- void
--- boolean
--- number
--- string
--- bigint
--- symbol
--- any
--- unknown
--- never
--- null
--- undefined
--- Promise<_datatype_>
--- Generator<_datatype_>
--- _datatype_
--- (_datatype_ | ...)[]
--- _datatype_[]
--- _datatype_<_datatype, ...>

_varPrefix_
--- readonly
--- let
--- const
--- var

_varSuffix_
--- _nothing_
--- ?

_varDeclaration_
--- _var_ _varSuffix_: _datatype_
--- [_var_: _datatype_, ...]
--- {_var_: _datatype_, ...}

_interface_ (as `{var: _data_, ...}`)
interface _interfaceName_ {
  _varDeclaration_,
  ...
}
*/

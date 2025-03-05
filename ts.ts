/*
+------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| init |
+------+
--- terminal
    > npm init -y
    > npm install express
    > npm install --save-dev typescript @types/node @types/express ts-node nodemon
    > npm install _packageName_ @types/_packageName_
    > npx tsc --init
--- package.json
    | {
    |   "name": "_projectName_",
    |   "version": "_version_",
    |   "main": "_pathIndex_.js",
    |   "scripts": {
    |     "build": "tsc",
    |     "start": "node _pathIndex_.js",
    |     "dev": "nodemon --exec ts-node ./src/index.ts"
    |   },
    |   ...
    | }
--- terminal
    > npm run build
    > npm start
+-----+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| ref |
+-----+
_datatype_
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
--- _datatype_
--- _datatype_[_datatype_, ...]
--- _datatype_<_datatype, ...>
--- [_var_: _datatype_, ...]
--- {_var_: _datatype_, ...}

_varPrefix_
--- readonly
--- let
--- const
--- var

_varSuffix_
--- _nothing_
--- ?

_varDeclaration_
--- _varPrefix_ _var_ _varSuffix_: _datatype_
*/

var http = require('http');

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.end('Hello World!');
}).listen(8080);

/*
A RESTful API (Representational State Transfer Application Programming Interface) is a set of web services that allow applications to communicate with each other over the internet using. RESTful APIs are designed to be simple, scalable, and stateless, making them a popular choice for building web services.


Socket.io: For real-time communication, Socket.io is a go-to library. It enables bidirectional communication between the server and clients using WebSockets or fallback mechanisms.
Express.js: Express is a popular web application framework for Node.js. It simplifies routing, middleware handling, and request/response management. Many developers choose Express for building APIs, web servers, and single-page applications.

CORS (Cross-Origin Resource Sharing): control access to resources (like APIs or fonts) on a web page from a different domain than the one serving the web page.
CSP (Content Security Policy): prevent cross-site scripting (XSS), clickjacking, and other code injection attacks.

core modules
--- http
--- fs
--- assert
--- path
--- process
--- os
--- querystring
--- url

http methods (_httpMethod_):
--- CONNECT
--- GET
--- POST
--- DELETE
--- PATCH (edit)
--- PUT
--- HEAD
--- OPTIONS
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- the url path can be anything
--- error types
    EACCES     - Permission denied
    EADDRINUSE - Address already in use
    ECONNRESET - Connection reset by peer
    EEXIST     - File exists
    EISDIR     - Is a directory
    EMFILE     - Too many open files in system
    ENOENT     - No such file or directory
    ENOTDIR    - Not a directory
    ENOTEMPTY  - Directory not empty
    ENOTFOUND  - DNS lookup failed
    EPERM      - Operation not permitted
    EPIPE      - Broken Pipe
    ETIMEDOUT  - Operation timed out
+---------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| terminal: npm |
+---------------+
npm root -g                                                                                     ===> to get packages global path
npm root                                                                                        ===> to get packages path
npm list -g                                                                                     ===> to list global packages
npm list                                                                                        ===> to list packages
npm version _version_
--- patch
--- minor
--- major
npm login
npm publish                                                                                     ===> to publish package
npm unpublish _packageName_                                                                     ===> to unpublish package
npm search _packageName_
npm init -y
npm install _packageName_@version _options_
npm install -g _packageName_@version _options_                                                  ===> `-g` is meaning global
npm update _packageName_
npm update -g _packageName_
npm uninstall _packageName_
npm uninstall _packageName_ -g
npm run _taskName_
npm start

_options_
--- --save (-S)
--- --no-save
--- --save-dev (-D)
--- --save-optional (-O)
--- --no-optional
+----------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| terminal: node |
+----------------+
node (open bash REPL)
--- .save _filePath_.js
--- .load _filePath_.js (to load in REPL)
--- .editor
--- .help
--- .break
--- .clear
--- .exit
node _nodejsFileName_.js
node debug _nodejsFileName_.js
node --inspect _nodejsFileName_.js                                                               ===> to enable debugging
node --inspect=_host_:_port_ _nodejsFileName_.js
node --inspect-brk _nodejsFileName_.js
--- node inspect _nodejsFileName_.js                                                             ===> to open debugging inspector CLI
--- edge://inspect                                                                               ===> to open debugging inspector in edge
--- chrome://inspect                                                                             ===> to open debugging inspector in chrome
--- `run and debug` in vscode
node --prof _nodejsFileName_.js                                                                  ===> to display CPU activity and time
node --prof-process isolate-0xnnnnnnnnnnnn-v8.log                                                ===> to summerize CPU activity and time

https://nodejs.org/en/learn/getting-started/debugging#command-line-options
+-------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| terminal: nodemon |
+-------------------+
nodemon _nodejsFileName_.js
+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------
| node project: package.json |
+----------------------------+
{
  "type": "module",                                                                              ===> add if the package will be published, then add `README.md`
  "scripts": {
      "start": "node _command_"
  }
}
+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| node project: main.js |
+-----------------------+
var http = require('http')
http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.end('Hello World!');
}).listen(_portNumber_, '_hostName_', () => ...);
+-------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| module: including |
+-------------------+
--- module.exports = _propertyORMethodName_
    var _moduleVarName_ = require('_moduleName_');                                                                    ===> cjs, js (sync)
--- exports._propertyORMethodName_ = _data_
    var _moduleVarName_ = require('_moduleName_');                                                                    ===> cjs, js (sync)
--- var _customModuleVarName_ = require('_modulePath_');
--- export { _propertyORMethodName_ as _propertyORMethodNewName_, ... };
    import _dataImported_ from _module_ with { _importAttribute_: '_data_', ... };                                    ===> mjs (async)
      --- _dataImported_: (
            { _propertyORMethodName_ as _propertyORMethodNewName_, ... },
            _propertyORMethodName_,
            *
          )
      --- _module_: (
            '_modulePah_.mjs?_attributeName_=_value_&...',
            '_modulePah_.cjs?_attributeName_=_value_&...',
            '_jsonPath_.json', '_packageName_:_moduleName_,_statement_;'
          )
          --- _packageName_: (node, data)
      --- _importAttribute_: (type: 'json')
    await import(_module_, { with: { _importAttribute_: '_data_' } });
--- import._importData_
    --- meta
    --- meta.dirname
    --- meta.filename
    --- meta.url
    --- meta.resolve('_anyFilePath_')
+----------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| module: create |
+----------------+
--- exports._moduleFunctionName_ = function () {
      ...
    };
--- export const _packageName_ = {
      _propertyORMethodName_: _statement_,
      ...
    }
+------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| module: built in |
+------------------+
| module (no need to imported)                                                             ===> to print module data
+------------------------------------------------------------------------------------------
| http
const http = require('http');
--- http.createServer(function (req, res) {...}).listen(_portNumber_, () {...});
    --- req.url;

    --- res.statusCode = _statusCode_;

    --- res.writeHead(_statusCode_, {'Content-Type': '_fileType_'});
    --- res.setHeader('Content-Type', '_fileType_');
        --- _fileType_: text/html, application/json, text/plain
    --- res.write(_data_);
        --- _data_: _data_, JSON.stringify(_json_)
    --- res.end('_data_');
+------------------------------------------------------------------------------------------
| net
const net = require('net');
--- net.createServer((socket) => {...}).listen(_portNumber_);
    --- socket.on('close', () => {...});
+------------------------------------------------------------------------------------------
| url
--- url.parse(req.url, true)._function_
    --- query._prameters_                                                                  ===> as `http://www.example.com/?year=gffj
        --- _parameterName_
    --- query.search                                                                       ===> as `?year=gffj`
    --- query.host
    --- query.pathname
+------------------------------------------------------------------------------------------
| fs (file server)
--- fs.readFile('_filePath_', function (error, data) {
      ...
      return res.end();
    });
--- fs.readFileSync('_filePath_', {encoding: "_encoding_", flag: "_flag_"}, function (error, data) {
      ...
      return res.end();
    });
--- fs.appendFile('_filePath_', '_data_', function (error) {
      ...
      throw error;
    });
--- fs.writeFile('_filePath_', '_data_', function (error) {                                  ===> replace the content of file
      ...
      throw error;
    });
--- fs.open('_filePath_', '_openType_', (error, file) {                                      ===> _openType_ as 'w+'
      ...
      throw error;
    });
--- fs.unlink('_filePath_', function (error) {
      ...
      throw error;
    });
--- fs.rename('_filePath_', '_newFileName_', function (error) {
      ...
      throw error;
    });
--- fs.createReadStream('_filePath_').on('open', function (chunk) {...});
+------------------------------------------------------------------------------------------
| events
var eventEmitter = new events.EventEmitter();
--- eventEmitter.on('_eventName_', function (_param_, ...) {...});
--- eventEmitter.emit('_eventName_', _valueParam_);                                         ===> to run event
--- eventEmitter.once()
--- eventEmitter.off()
    eventEmitter.removeListener()
--- eventEmitter.removeAllListeners()
+------------------------------------------------------------------------------------------
| formidable
var form = new formidable.IncomingForm();                                                  ===> to accept post data
--- form.parse(req, function (error, fields, files) {...});
    --- files.filetoupload.filepath
    --- files.filetoupload.originalFilename
+------------------------------------------------------------------------------------------
| nodemailer
var transporter = nodemailer.createTransport({
  service: '_serviceName_',                                                                ===> as gmail
  auth: {
    user: '_email_',
    pass: '_password_'
  }
});
var mailOptions = {
  from: '_email_',
  to: '_email_',
  subject: '_subject',
  text: '_text_'
};
--- transporter.sendMail(mailOptions, function(error, info) {
      ...
      throw error;
    });
+------------------------------------------------------------------------------------------
| mysql
var mysqlConnection = mysql.createConnection({
  host: 'localhost',
  user: '_username_',
  password: '_password_',
  database: '_databaseName_',                                                              ===> if found
});
--- mysql.escape(_data_);                                                                  ===> to prevent sql injection
--- mysqlConnection.connect(function (error) {
      ...
      throw error;
    });
--- mysqlConnection.query('_sqlQuery_', _valuesList_, function (error, result, fields) {   ===> as [['John', 'Highway 71'], ...] to be replace with vars of sql query or `?`, fields is the each column properties
    --- result.affectedRows
      ...
      throw error;
    });
+------------------------------------------------------------------------------------------
| sqlite3
const sqlite3 = require('sqlite3').verbose();
const sqlite3Database = new sqlite3.Database('_filePath_.db');
const sqlite3Database = new sqlite3.Database(':memory:');                                  ===> to store in ram
sqlite3Database.serialize(() => {
  --- sqlite3Database.map('_sqlQuery_', function () {...});
  --- sqlite3Database.exec('_sqlQuery_', function () {...});
  --- sqlite3Database.run('_sqlQuery_', _valuesList_, function () {...});
  --- sqlite3Database.get('_sqlQuery_', _valuesList_, function (error, row) {...});
  --- sqlite3Database.all('_sqlQuery_', _valuesList_, function (error, rows) {...});
  --- sqlite3Database.each('_sqlQuery_', _valuesList_, function (error, row) {...});
  const sqlite3Statement = sqlite3Database.prepare('_sqlQuery', _valuesList_, function () {...});
  --- sqlite3Statement.reset(function () {...});
  --- sqlite3Statement.finalize(function () {...});
  --- sqlite3Statement.run(_valuesList_, function () {...});
  --- sqlite3Statement.get(_valuesList_, function () {...});
  --- sqlite3Statement.all(_valuesList_, function () {...});
  --- sqlite3Statement.each(_valuesList_, function () {...});
  --- sqlite3Statement.bind(_valuesList_, function () {...});
});
sqlite3Database.close();

https://www.tutorialspoint.com/sqlite
*/
/*
+-------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------
| module: debug inspector |
+-------------------------+
| module (no need to imported)                                                             ===> to print module data
+------------------------------------------------------------------------------------------
| chrome-remote-interface
const dp = require('chrome-remote-interface');

async function test() {
  const client = await dp();
  const {Profiler, Runtime} = client;

  await Profiler.enable();
  await Profiler.setSamplingInterval({interval: 500});

  await Profiler.start();
  await Runtime.evaluate({expression: 'startTest();'});
  await sleep(800);

  const data = await Profiler.stop();
  require('fs').writeFileSync(
    'data.cpuprofile',
    JSON.stringify(data.profile),
  );
};

test().then((result) => {
    console.log(result);
})
.catch((error) => {
    console.log(error);
});
+------------------------------------------------------------------------------------------
| inspector
const inspector = require('inspector');
const fs = require('fs');
const session = new inspector.Session();

session.connect();
session.post('Profiler.enable');
session.post('Profiler.start');

setTimeout(function () {
  session.post(
    'Profiler.stop', 
    function (err, data) {
      fs.writeFileSync(
        'data.cpuprofile',
        JSON.stringify(data.profile),
      );
    },
  );
}, 8000);
*/
/*
+----------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| module: npm packages |
+----------------------+
| module (no need to imported)                                                             ===> to print module data
+------------------------------------------------------------------------------------------
| console
const console = require('console');
--- console.trace('_data_ %d', 39);
https://www.geeksforgeeks.org/node-js-console-complete-reference
+------------------------------------------------------------------------------------------
| bcrypt (password)
| => salt: random value before hashing
| => cost: complexity of hashing
const bcrypt = reqiure('bcrypt');
const PASSWORD = '_password_';
let hashedPassword = bcrypt.hashSync(PASSWORD, _intSalt_);
--- bcrypt.hashSync(PASSWORD, _intSalt_);
--- bcrypt.hash(PASSWORD, _intSalt_);                                                      ===> as Promise<string>
--- bcrypt.compare(PASSWORD, _1);                                                          ===> as Promise<bool>
--- bcrypt.getSalt(_intSalt_);                                                             ===> as Promise<string> to randomize salt
+------------------------------------------------------------------------------------------
| scrypt (password storage and cryptocurrency)
+------------------------------------------------------------------------------------------
| crypto (data)
const crypto = reuqire('crypto');
https://www.geeksforgeeks.org/node-js-crypto-complete-reference

[1] - sha256 (hash data)
const DATA = '_data_';
let hashed = crypto.hash('sha256', DATA, '_datatype_');                                   ===> as string, and hashed not changed as `bcrypt`

_datatype_:
--- hex
--- binary
--- base64
--- base64url
--- buffer

[2] - encryption and decryption
const algorithm = 'aes-256-ctr'
const secretKey = 'vOVH6sdmpNWjRRIqCc7rdxq01lwHzfr3'

const encrypt = text => {
  const iv = crypto.randomBytes(16)
  const cipher = crypto.createCipheriv(algorithm, secretKey, iv)
  const encrypted = Buffer.concat([cipher.update(text), cipher.final()])
  return {
    iv: iv.toString('hex'),
    content: encrypted.toString('hex')
  }
}

const decrypt = hash => {
  const decipher = crypto.createDecipheriv(algorithm, secretKey, Buffer.from(hash.iv, 'hex'))
  const decrpyted = Buffer.concat([decipher.update(Buffer.from(hash.content, 'hex')), decipher.final()])
  return decrpyted.toString()
}

const hash = encrypt('Hello - World!')
+------------------------------------------------------------------------------------------
| chalk
const chalk = require('chalk');
--- chalk._colorName_(_data_);
--- chalk.bg_colorName_(_data_);
--- chalk.rgb(_int_, _int_, _int_)(_data_);
--- chalk._textStyle_(_daat_);
+------------------------------------------------------------------------------------------
| idle-gc
const idle = require('idle-gc');
--- idle.ignore();
+------------------------------------------------------------------------------------------
| express express-session cookie-parser cors
const express = require('express');
const session = require('express-session');
const cookies = require('cookie-parser');
const cors = require('cors');

const app = express();
app.use(cookies());
app.use(session(secret: '_data_', saveUninitialized: _bool_, resave: _bool_);
app.use(cors({
  origin: '_HTTP_://_HOST_:_PORT_',
  metods: [_httpMethod_, ...],
  credentials: _bool_,
  maxAge: _int_,
});
app.use((req, res, next) => {
  res.status(404)....
  ...
});

--- app.get('/_path_', (res, req, next) {...}).listen(_portNumber_, () {...});
    --- res.send('_data_');
    --- res.setHeader('_headerName_', _headerData_);
        --- 'Content-type': 'text/html' - 'application/json' - 'text/plain'
        --- 'Content-Security-Policy-Report-Only': "_security_; ..."                       ===> CORS
            --- default-src 'self' 'sha256-_hashed_' _url_ ...
            --- font-src 'self' 'sha256-_hashed_' _url_ ...
            --- img-src 'self' 'sha256-_hashed_' _url_ ...
            --- script-src 'self' 'sha256-_hashed_' _url_ ...                              ===> `sha256-...` in `<script nonce="EDNnf03nceIOfn39fn3e9h3sdfa">`
            --- style-src 'self' 'sha256-_hashed_' _url_ ...
            --- frame-src 'self' 'sha256-_hashed_' _url_ ...
    --- req.session.view;
    --- req.session.user;
    --- req.session.save();
    --- req.session.destroy();
+------------------------------------------------------------------------------------------
| assert (AssertionError if false)
const assert = require('assert').strict;
--- assert(_bool_);
--- assert.match('_data_', /_data_/);                                                      ===> `/` to sea
--- assert.strictEqual(_data_, _data_);
--- assert.deepStrictEqual(_data_, _data_);
--- assert.notEqual(_data_, _data_);
--- assert.notDeepEqual(_data_, _data_);
--- assert.notDeepStrictEqual(_data_, _data_);
--- assert.doesNotThrow(() {...}, _data_, _data_);                                         ===> throw custom error
--- assert.fail(new _Error_);
--- assert.ifError(_data_);
--- assert.ok(_bool_, '_data_');                                                           ===> `_data_` is output if error or false
--- assert.rejects(async () {...}, (err) => _bool_);
+------------------------------------------------------------------------------------------
| Express, AdonisJS, MeteorJS, NestJS, SailsJS, Hapi, Loopback.io, Feathers, MEAN, KoaJS
*/
/*
to continue
https://nodejs.org/en/learn/getting-started/nodejs-the-difference-between-development-and-production
https://nodejs.org/en/learn/getting-started/nodejs-with-webassembly
https://nodejs.org/en/learn/getting-started/security-best-practices
https://www.geeksforgeeks.org/node-js-child-process
https://www.geeksforgeeks.org/how-to-use-session-variable-with-node-js
*/


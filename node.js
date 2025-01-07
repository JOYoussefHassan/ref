var http = require('http');

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.end('Hello World!');
}).listen(8080);

/*
A RESTful API (Representational State Transfer Application Programming Interface) is a set of web services that allow applications to communicate with each other over the internet using. RESTful APIs are designed to be simple, scalable, and stateless, making them a popular choice for building web services.


Socket.io: For real-time communication, Socket.io is a go-to library. It enables bidirectional communication between the server and clients using WebSockets or fallback mechanisms.


Express.js: Express is a popular web application framework for Node.js. It simplifies routing, middleware handling, and request/response management. Many developers choose Express for building APIs, web servers, and single-page applications.


core modules
--- http
--- fs
--- assert
--- path
--- process
--- os
--- querystring
--- url
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
--- node inspect _nodejsFileName_.js                                                             ===> to open debugging inspector CLI
--- edge://inspect                                                                               ===> to open debugging inspector in edge
--- chrome://inspect                                                                             ===> to open debugging inspector in chrome
--- `run and debug` in vscode
node --prof _nodejsFileName_.js                                                                  ===> to display CPU activity and time
node --prof-process isolate-0xnnnnnnnnnnnn-v8.log                                                ===> to summerize CPU activity and time

https://nodejs.org/en/learn/getting-started/debugging#command-line-options
+----------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------
| node project: package.json |
+----------------------------+
{
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
+------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| module: built in |
+------------------+
| module (no need to imported)                                                             ===> to print module data
+------------------------------------------------------------------------------------------
| http
--- http.createServer(function (req, res) {...}).listen(_portNumber);
    --- res.writeHead(_statusCode_, {'Content-Type': '_fileType_'});
    --- res.setHeader('Content-Type', '_fileType_');
        --- _fileType_: text/html, application/json, text/plain
    --- res.write(_data_);
        --- _data_: _data_, JSON.stringify(_json_)
    --- res.end('_data_');
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
--- fs.createReadStream('_filePath_').on('open', function () {...});
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
to continue
https://nodejs.org/en/learn/getting-started/nodejs-the-difference-between-development-and-production
https://nodejs.org/en/learn/getting-started/nodejs-with-webassembly
https://nodejs.org/en/learn/getting-started/security-best-practices
*/


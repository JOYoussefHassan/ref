var http = require('http');

http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.end('Hello World!');
}).listen(8080);

/*
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- the url path can be anything
+----------------+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| terminal: node |
+----------------+
node _nodejsFileName_.js
+-----------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| node project: main.js |
+-----------------------+
var http = require('http')
http.createServer(function (req, res) {
  res.writeHead(200, {'Content-Type': 'text/html'});
  res.end('Hello World!');
}).listen(_portNumber_);
+-------------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| module: including |
+-------------------+
--- var _moduleVarName_ = require('_moduleName_');
--- var _customModuleVarName_ = require('_modulePath_');
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
    --- res.writeHead(_statusCode_, {'Content-Type': 'text/_fileType_'});
    --- res.write(_data_);
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
--- eventEmitter.on('_eventName_', function () {...});
--- eventEmitter.emit('_eventName_');                                                      ===> to run event
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
--- sqlite3Database.map('_sqlQuery', function () {...});
--- sqlite3Database.exec('_sqlQuery', function () {...});
--- sqlite3Database.run('_sqlQuery', _valuesList_, function () {...});
--- sqlite3Database.get('_sqlQuery', _valuesList_, function (error, row) {...});
--- sqlite3Database.all('_sqlQuery', _valuesList_, function (error, rows) {...});
--- sqlite3Database.each('_sqlQuery', _valuesList_, function (error, row) {...});
const sqlite3Statement = sqlite3Database.run('_sqlQuery', _valuesList_, function () {...});
--- sqlite3Statement.reset(function () {...});
--- sqlite3Statement.finalize(function () {...});
--- sqlite3Statement.run(_valuesList_, function () {...});
--- sqlite3Statement.get(_valuesList_, function () {...});
--- sqlite3Statement.all(_valuesList_, function () {...});
--- sqlite3Statement.each(_valuesList_, function () {...});
--- sqlite3Statement.bind(_valuesList_, function () {...});
sqlite3Database.close();
*/

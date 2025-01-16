/*
_data_
--- '...'
--- 45
--- 45.5
--- #07/31/1996#
    DATE         - format YYYY-MM-DD
    DATETIME     - format: YYYY-MM-DD HH:MI:SS
    TIMESTAMP    - format: YYYY-MM-DD HH:MI:SS
    YEAR         - format YYYY or YY
--- '1996-07-31'
--- ANY(...)
--- ALL(...)

CREATE DATABASE _databaseName_;
DROP DATABASE _databaseName_;
BACKUP DATABASE _databaseName_ TO DISK '_filePath_.bak' WITH DIFFERENTIAL;

CREATE TABLE _tableName_ (_columnName_ _datatype_, ...);
CREATE TABLE _tableName_ AS _selectCommand_;
DROP TABLE _tableName_;
TRUNCATE TABLE _tableName_;                                                                                                              ===> clear table without delete table
ALTER TABLE _tableName_
    ADD (_columnName_ _datatype_ NOT NULL, ...)
    ADD CONSTRAINT _uniqueName_ UNIQUE (_columnName_, ...)
    ADD CONSTRAINT _primarykeyName_ PRIMARY KEY (_columnName_, ...)
    DROP COLUMN (_columnName_, ...)
    DROP CONSTRAINT (_columnName_, ...)                                                                                                  ===> to drop primary key and unique
    RENAME COLUMN _oldTableName TO _newTableName_
    ALTER COLUMN (_columnName_ _datatype_ _constraintColumn_, ...);
--- _constraintColumn_ (NOT NULL, UNIQUE, PRIMARY KEY, CHECK(_bool_), DEFAULT _data_, AUTO_INCREMENT)
--- _columnName_ => can be (FOREIGN KEY (_columnName_) REFERENCES _otherTableName_(_columnName_))

CREATE INDEX _indexName_ ON _tableName_ (_columnName_, ...);
CREATE UNIQUE INDEX _indexName_ ON _tableName_ (_columnName_, ...);
DROP INDEX _tableName_._indexName_;

SELECT _function_(DISTINCT *, _newTableName_._columnName_ + '...' + _newTableName_._columnName_ ..., ...) [_newColumnName_]
AS [_newColumnName_] + '...', AS ...                                                                                                     ===> may "_newColumnName_"
(CASE
    WHEN (_newTableName_._columnName_ _conditionOperator_ _data_) _logicalOerator_ ... THEN _data_
    ...
    ELSE _data_
END AS [_newColumnName_] + '...')
INTO _newTableName_ IN '_database_.mdb'
FROM _tableName_ AS _newTableName_, FROM ...
WHERE EXISTS (_newTableName_._columnName_ _conditionOperator_ _data_) _logicalOerator_ ...                                               ===> can be use select query
    ORDER BY _newTableName_._columnName_ _order_, ...                                                                                    ===> these commands below can be in other order
    GROUP BY _newTableName_._columnName_ ... _order_ ...
    LIMIT _num_
    FETCH FIRST _num_ ROWS ONLY
    ROWNUM _conditionOperator_ _num_
    _joinType_ JOIN _otherTableName_ ON _newTableName_._columnName_=_otherTableName_._coilumnName_
    HAVING (_newTableName_._columnName_ _conditionOperator_ _data_) _logicalOerator_ ...                                                ===> can use COUNT, MIN, MAX, SUM, AVG
_unionType_ _selectCommand_;
--- DISTINCT => print without doublicates
--- _tableName_ => can be as query
--- _function_ (_nothing_, CONCAT, TOP _num_, COUNT, MIN, MAX, SUM, AVG)
--- _conditionOperator_ (=, >, <, >=, <=, <> not equal, BETWEEN _intORString_ AND _intORString_, LIKE _regText_, IN (_data_, ...), IN (_selectCommand_))
--- _logicalOerator_ (AND, OR, NOT, IS NULL, IS NOT NULL, ISNULL(_data_, _data_))
--- _order_ (ASC, DESC)
--- _regText_ (% in start or end mean anything, _ character or number, * character or number or nothing, ? character, # number, [abc...], [a-...], [!...], )
--- _num_ (_int_, _int_ PERSENT)
--- _joinType_ (_nothing_ (INNER), LEFT (OUTER), RIGHT (OUTER), FULL (FULL OUTER))
--- _unionType_ (UNION without doublicates, UNION ALL with doublicates)

INSERT INTO _tableName (_columnName_, ...)
VALUES (_data_, ...), ...;                                                                                                              ===> can be as query

UPDATE _tableName_
SET _columnName_ = _data_, ...
WHERE (_columnName_ _conditionOperator_ _data_) _logicalOerator_ ...;

DELETE FROM _tableName_
WHERE (_columnName_ _conditionOperator_ _data_) _logicalOerator_ ...;

DROP TABLE _tableName_;
*/

/*
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
| php |
-------
[1] - _sqlConnection_
_varConnection_ = new PDO('mysql:host=' . _hostName_ . ';dbname=' . _databaseName_ . ', _userName_, _password_);    ===> to  connect, we can connect to MySQL without connection to database to create database or switch
_varConnection_->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
_varConnection_ = null;                                                                                             ===> to close

[2] - _command_
_varConnection_.exec(_sqlCommand_);                                                                                 ===> to execute the SQL command

_varStatement_ = _varConnection_->prepare(_sqlCommand_);
_varStatement_->execute();                                                                                          ===> to execute the SQL command
_varStatement_->setFetchMode(PDO::FETCH_ASSOC);
_varStatement_->fetchAll();                                                                                         ===> to return as array

[3] - error
try {
    _sqlConnection_
    _sqlCommand_
} catch (PDOException $e) {
    echo $e->getMessage();                                                                                          ===> to get the error
};
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
*/
/*
_datatype
    [1] - CHAR(_intSize)                                                                                            ===> The size parameter specifies the column length in characters - can be from 0 to 255
    [2] - VARCHAR(_intSize)                                                                                         ===> The size parameter specifies the column length in characters - can be from 0 to 65535
    [3] - TEXT
    
*/
/*
    [1] - _actions :
        [1] - _datatype(_lengthOrValues)
        [2] - _attribute
        [3] - CHARACTER SET _charset COLLATE _charsetOfCharset
        [4] - _null
        [5] - DEFAULT _default
        [6] - _autoIncrement
        [7] - COMMENT '_comment';
        [9] - , UNIQUE(`_name1`, `_name2`, ...);
        [10] - , PRIMARY KEY(`_name1`, `_name2`, ...);
        [11] - , CONSTRAINT `_constraintName` FOREIGN KEY(`_nameInCurrentTable`) REFERENCES _otherTable(`_nameInOtherTable`) ON UPDATE _onUpdate_or_onDelete ON DELETE _onUpdate_or_onDelete;
    [2] - _position
        [1] - AFTER `_name`;
        [2] - FRIST
    [3] - _engine :
        [1] - ENGINE = InnoDB
    [4] - _onUpdate_or_onDelete :
        [1] - CASCADE
        [2] - SET NULL
        [3] - NO ACTION
        [4] - RESTRICT
    [5] - _valueFunction :
        [1] - `_name1`, `_name2`, ... AS `_customName`

        [2] - LEFT(`_name1`, '_numberOfCharacter'), LEFT(`_name2`, '_numberOfCharacter'), ... AS `_customName`
        [3] - RIGHT(`_name1`, '_numberOfCharacter'), RIGHT(`_name2`, '_numberOfCharacter'), ... AS `_customName`
        [4] - MID(`_name1`, '_numberOfPosition', '_numberOfCharacter'), MID(`_name2`, '_numberOfPosition', '_numberOfCharacter'), ... AS `_customName`

        [5] - LENGTH(`_name1`), LENGTH(`_name2`), ... AS `_customName`
        [6] - CHAR_LENGTH(`_name1`), CHAR_LENGTH(`_name2`), ... AS `_customName`
        [7] - CHARACTER_LENGTH(`_name1`), CHARACTER_LENGTH(`_name2`), ... AS `_customName`

        [8] - LCASE(`_name1`), LCASE(`_name2`), ... AS `_customName`
        [9] - LOWER(`_name1`), LOWER(`_name2`), ... AS `_customName`
        [10] - UCASE(`_name1`), UCASE(`_name2`), ... AS `_customName`
        [11] - UPPER(`_name1`), UPPER(`_name2`), ... AS `_customName`

        [12] - REPEAT(`_name1`, '_numberOfRepeats'), REPEAT(`_name2`, '_numberOfRepeats'), ... AS `_customName`
        [13] - REPLACE(`_name1`, '_oldData', '_newData'), REPLACE(`_name2`, '_oldData', '_newData'), ... AS `_customName`
        [14] - REVERSE(`_name1`), REVERSE(`_name2`), ... AS `_customName`

        [15] - CONCAT(`_name1`, `_name2`, '_data1', '_data2', _valueFunction1, _valueFunction2, ...), CONCAT(`_name1`, `_name2`, '_data1', '_data2', _valueFunction1, _valueFunction2, ...), ... AS `_customName`
        [16] - CONCAT_WS('_separator', `_name1`, `_name2`, '_data1', '_data2', _valueFunction1, _valueFunction2, ...), CONCAT_WS('_separator', `_name1`, `_name2`, '_data1', '_data2', _valueFunction1, _valueFunction2, ...), ... AS `_customName`

        [17] - INSERT(`_name1`, '_numberOfPosition', '_numberOfLength', `_newName1`_or_'_newData1'), INSERT(`_name2`, '_numberOfPosition', '_numberOfLength', `_newName2`_or_'_newData2'), ... AS `_customName`

        [18] - TRIM(_trimOption) , TRIM(_trimOption) , ... AS `_customName`
        [19] - LTRIM(`_name1`) , LTRIM(`_name2`) , ... AS `_customName`
        [20] - RTRIM(`_name1`) , RTRIM(`_name2`) , ... AS `_customName`
        
        [21] - LPAD(`_name1`, '_length', '_paddedData'), LPAD(`_name2`, '_length', '_paddedData'), ... AS `_customName`
        [22] - RPAD(`_name1`, '_length', '_paddedData'), RPAD(`_name2`, '_length', '_paddedData'), ... AS `_customName`

        [22] - CEIL(`_name1`), CEIL(`_name2`), ... AS `_customName`
        [23] - FLOOR(`_name1`), FLOOR(`_name2`), ... AS `_customName`
        [24] - ROUND(`_name1`, '_numberOfDecimal'), ROUND(`_name2`, '_numberOfDecimal'), ... AS `_customName`

        [25] - TRUNCATE(`_name1`, '_numberOfDecimal'), TRUNCATE(`_name2`, '_numberOfDecimal'), ... AS `_customName`
        [26] - POW(`_name1`, '_numberOfPower'), POW(`_name2`, '_numberOfPower'), ... AS `_customName`
        [27] - POWER(`_name1`, '_numberOfPower'), POWER(`_name2`, '_numberOfPower'), ... AS `_customName`
        [28] - MOD(`_name1`, '_numberOfModules'), POW(`_name2`, '_numberOfModules'), ... AS `_customName`

        [29] - CURRENT_TIME(), CURRENT_TIME(), ... AS `costomName`
        [30] - CURTIME(), CURTIME(), ... AS `costomName`
        [31] - CURRENT_TIME, CURRENT_TIME, ... AS `costomName`
        [32] - CURRENT_DATE(), CURRENT_DATE(), ... AS `costomName`
        [33] - CURDATE(), CURDATE(), ... AS `costomName`
        [34] - CURRENT_DATE, CURRENT_DATE, ... AS `costomName`
        [35] - CURRENT_TIMESTAMP(), CURRENT_TIMESTAMP(), ... AS `costomName`
        [36] - NOW(), NOW(), ... AS `costomName`
        [37] - CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, ... AS `costomName`
        [38] - DAYNAME('_date'), DAYNAME('_date'), ... AS `costomName`
        [39] - DAY(), DAY(), ... AS `costomName`
        [40] - DAYOFMONTH('_date'), DAYOFMONTH('_date'), ... AS `costomName`
        [41] - DAYOFWEEK('_date'), DAYOFWEEK('_date'), ... AS `costomName`
        [42] - DAYOFYEAR('_date'), DAYOFYEAR('_date'), ... AS `costomName`
        [43] - MONTH('_date'), MONTH('_date'), ... AS `costomName`
        [44] - MONTHNAME('_date'), MONTHNAME('_date'), ... AS `costomName`
        [45] - HOUR('_date'), HOUR('_date'), ... AS `costomName`
        [46] - MINUTE('_date'), MINUTE('_date'), ... AS `costomName`

        [47] - DATEDIFF('_date1', '_date2'), DATEDIFF('_date1', '_date2'), ... AS `costomName`

        [48] - *

    [6] - _orderFormat :
        [1] - ASC
        [2] - DESC
    [7] - _trimOption
        [1] - LEADING '_data' FROM `_name`
        [2] - TRAILING '_data' FROM `_name`
        [3] - BOTH '_data' FROM `_name`
    [8] - _date : YYYY-MM-DD HH-Mi-SS
*/
/*
    [1] - _database :
        [1] - _create :
            [1] - CREATE DATABASE `_databaseName`;
            [2] - CREATE DATABASE IF NOT EXISTS `_databaseName`;
        [2] - _drop :
            [1] - DROP DATABASE `_databaseName`;
            [2] - DROP DATABASE IF EXISTS `_databaseName`;
        [3] - _show :
            [1] - SHOW DATABASES;
            [2] - SHOW DATABASES LIKE '_databaseName';

            [3] - SHOW TABLES;
        [4] - _use
            [1] - USE `_databaseName`;
    [2] - _table :
        [1] - _create :
            [1] - CREATE TABLE `_databaseName` . `_tableName` (`_name1` _actions, `_name2` _actions) _engine;
            [2] - CREATE TABLE IF NOT EXISTS `_databaseName` . `_tableName` (`_name1` _actions, `_name2` _actions) _engine;
        [2] - _drop :
            [1] - DROP TABLE `_databaseName` . `_tableName`;
            [2] - DROP TABLE IF NOT EXISTS `_databaseName` . `_tableName`;
        [3] - _show :
            [1] - DESCRIBE `_databaseName` . `_tableName`;
            [2] - SHOW COLUMNS FROM `_databaseName` . `_tableName`;
            [3] - SHOW FIELDS FROM `_databaseName` . `_tableName`;

            [4] - SHOW CREATE TABLE `_databaseName` . `_tableName`;

            [5] - SHOW TABLE STATUS;
        [4] - _editTable :
            [1] - RENAME TABLE `_databaseName` . `_oldTableName` TO `_newTableName`;
            [2] - ALTER TABLE `_databaseName`. `_tableName` CONVERT TO CHARACTER SET _charSet;
        [5] - _editColumn :
            [1] - ALTER TABLE `_databaseName` . `_tableName` ADD `_name` _actions _position;
            [2] - ALTER TABLE `_databaseName` . `_tableName` DROP `_name`;

            [3] - ALTER TABLE `_databaseName` . `_tableName` CHANGE `_oldName` `_newName` _actions _position;
            [4] - ALTER TABLE `_databaseName` . `_tableName` MODIFY `_name` _actions _position;
    [3] - _values :
        [1] - INSERT INTO `_databaseName` . `_tableName` (`_name1`, `_name2`, ...) VALUES ('_value1'_or_valueFunction1, '_value2'_or_valueFunction2, ...);
        [2] - SELECT _valueFunction1, _valueFunction2, ... FROM `_databaseName` . `_tableName` ORDER BY _valueFunction _orderFormat;
        [3] - UPDATE `_databaseName` . `tableName` SET `_name` = '_newValue' WHERE `_tableName` . `_name` = '_oldValue';
        [4] - UPDATE `_databaseName` . `tableName` SET `_name` = _selectFunction;
        [5] - DELETE FROM `_databaseName` . `tableName` WHERE `_tableName` . `_name` = '_value';
*/
/*
    [1] - CREATE DATABASE _databaseName;
    [2] - CREATE DATABASE IF NOT EXISTS _databaseName;
    [3] - DROP DATABASE _databaseName;
    [4] - DROP DATABASE IF EXISTS _databaseName;

    [5] - CREATE TABLE IF NOT EXISTS `_databaseName` . `_tableName` (`_name1` _datatype NOT NULL PRIMARY KEY UNIQUE, `_name2` _datatype NOT NULL PRIMARY KEY UNIQUE, ...);
    [6] - DROP TABLE IF EXISTS `_databaseName` . `_tableName`;
    [7] - _showTables :
        [1] - DESCRIBE `_databaseName` . `_tableName`;
        [2] - SHOW COLUMNS FROM `_databaseName` . `_tableName`;
        [3] - SHOW FIELDS FROM `_databaseName` . `_tableName`;

        [4] - SHOW CREATE TABLE `_databaseName` . `_tableName`;

        [5] - SHOW TABLE STATUS;
    [8] - RENAME TABLE `_databaseName` . `_oldTableName1` TO `_newTableName1`, RENAME TABLE `_databaseName` . `_oldTableName2` TO `_newTableName2`, ...;

    [9] - ALTER TABLE `_databaseName` . `_tableName` ADD `_name2` _datatype(_lengthOrValues) NOT NULL PRIMARY KEY UNIQUE AFTER `_name1`, ADD `_name3` _datatype NOT NULL PRIMARY KEY UNIQUE AFTER `_name2`, ...;
    [9] - ALTER TABLE `_databaseName` . `_tableName` ADD `_name2` _datatype(_lengthOrValues) NOT NULL PRIMARY KEY UNIQUE FRIST;
    [10] - ALTER TABLE `_databaseName` . `_tableName` DROP `_name1`, DROP `_name2`, ...;
    [11] - ALTER TABLE `_databaseName` . `_tableName` CHANGE `_oldName2` `_newName2` _datatype(_lengthOrValues) NOT NULL PRIMARY KEY UNIQUE AFTER `_name1`;
    [12] - ALTER TABLE `_databaseName` . `_tableName` CHANGE `_oldName2` `_newName2` _datatype(_lengthOrValues) NOT NULL PRIMARY KEY UNIQUE FRIST;
    [13] - ALTER TABLE `_databaseName` . `_tableName` MODIFY `_name2` _datatype(_lengthOrValues) NOT NULL PRIMARY KEY UNIQUE;
    [14] - ALTER TABLE `_databaseName`. `_tableName` CONVERT TO CHARACTER SET _charSet;

    [6] - SELECT * FROM `_databaseName` . `_tableName`;

    [5] - INSERT INTO `_databaseName` . `_tableName` (`_name1`, `_name2`, ...) VALUES ('_value1', '_value2', ...);
    [6] - ALTER TABLE `_databaseName` . `_tableName` ADD `_name2` _datatype(_lengthOrValues) NOT NULL PRIMARY KEY UNIQUE AFTER `_name1`, ADD `_name3` _datatype NOT NULL PRIMARY KEY UNIQUE AFTER `_name2`, ...;
    [6] - ALTER TABLE `_databaseName` . `_tableName` DROP `_name1`, DROP `_name2`, ...;
    [7] - ALTER TABLE `_databaseName` . `_tableName` CHANGE `_oldName` `_newName` _datatype(_lengthOrValues) NOT NULL PRIMARY KEY UNIQUE;

    [7] - SHOW DATABASES;
    [8] - SHOW DATABASES LIKE '_databaseName';
    [8] - USE `_databaseName`;
    [] - ADD UNIQUE(`_name1`, `_name2`, ...);
    [] - DROP INDEX `_name`;
    [] - DROP PRIMARY KEY;
*/
/*
https://www.tutorialspoint.com/sqlite (for sqlite3)
*/

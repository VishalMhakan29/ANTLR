lexer grammar DB2Lexer;

options {caseInsensitive = true;}
//fragment IDENTIFIER_NAME:                        [A-Z,a-z,_];
DECLOB:                                 'DECLOB';
NONE:                                   'NONE';
PRECISON:                               'PRECISON';
SMALLINT:                               'SMALLINT';
INTEGER:                                'INTEGER';
INT:                                    'INT';
BIGINT:                                 'BIGINT';
DECIMAL:                                'DECIMAL';
DEC:                                    'DEC';
NUMERIC:                                'NUMERIC';
NUM:                                    'NUM';
FLOAT:                                  'FLOAT';
REAL:                                   'REAL';
DOUBLE:                                 'DOUBLE';
NCLOB:                                  'NCLOB';
DOUBLE_PRECISION:                       'DOUBLE PRECISION';
BINARY_LARGE_OBJECT:                    'BINARY LARGE OBJECT';
NCHAR_LARGE_OBJECT:                     'NCHAR LARGE OBJECT';
NATIONAL_CHARCTER_LARGE_OBJECT:         'NATIONAL CHARCTER LARGE OBJECT';
DECFLOAT:                               'DECFLOAT';
CHARACTER:                              'CHARACTER';
CHAR_KEY:                                   'CHAR';
OCTETS:                                 'OCTETS';
CODEUNITS16:                            'CODEUNITS16';
CODEUNITS32:                            'CODEUNITS32';
VARCHAR:                                'VARCHAR';
VARYING:                                'VARYING';
BIT:                                    'BIT';
CCSID_ASCII:                            'CCSID ASCII';
CCSID_UNICODE:                          'CCSID UNICODE';
CCSID_1208:                             'CCSID 1208';
CLOB:                                   'CLOB';
BLOB:                                   'BLOB';
LARGE_OBJECT:                           'LARGE OBJECT';
GRAPHIC:                                'GRAPHIC';
VARGRAPHIC:                             'VARGRAPHIC';
DBCLOB:                                 'DBCLOB';
K:                                      'K';
M:                                      'M';
G:                                      'G';
NCHAR:                                  'NCHAR';
NATIONAL:                               'NATIONAL';
NVARCHAR:                               'NVARCHAR';
NCHAR_VARYING:                          'NCHAR_VARYING';
BINARY:                                 'BINARY';
VARBINARY:                              'VARBINARY';
DATE:                                   'DATE';
TIME:                                   'TIME';
TIMESTAMP:                              'TIMESTAMP';
XML:                                    'XML';
BOOLEAN:                                'BOOLEAN';
BINARY_VARYING:                         'BINARY VARYING';
SYSPROC:                                'SYSPROC';
DB2SECURITYLABEL:                       'DB2SECURITYLABEL';
FILE_SYSTEM_CACHING:                    'FILE SYSTEM CACHING';
NO_FILE_SYSTEM_CACHING:                 'NO FILE SYSTEM CACHING';
TRANSFERRATE:                           'TRANSFERRATE';
EXTENTSIZE:                             'EXTENTSIZE';
INITIALSIZE:                             'INITIALSIZE';
INCREASESIZE:                            'INCREASESIZE';
PERCENT:                                'PERCENT';
MAXSIZE:                                'MAXSIZE';
DATA_TAG:                               'DATA TAG';
DROPPED_TABLE_RECOVERY:                 'DROPPED TABLE RECOVERY';
AUTOMATIC:                              'AUTOMATIC';
BUFFERPOOL:                             'BUFFERPOOL';
OVERHEAD:                               'OVERHEAD';
INHERIT:                                'INHERIT';
PREFETCHSIZE:                           'PREFETCHSIZE';
STORAGE:                                'STORAGE';
AUTORESIZE:                              'AUTORESIZE';
FILE:                                   'FILE';
//START-POINT
CREATE:                                 'CREATE';
IF_NOT_EXISTS:                         'IF NOT EXISTS';
OF:                                     'OF';
LIKE:                                   'LIKE';
ORGANIZE:                               'ORGANIZE';
ROW:                                    'ROW';
COLUMN:                                 'COLUMN';
ROW_USING:                              'ROW USING';
KEY_SEQUENCE:                           'KEY SEQUENCE';
INSERT_TIME:                            'INSERT TIME';
DATA_CAPTURE:                           'DATA CAPTURE';
CHANGES:                                'CHANGES';
ADAPTIVE:                               'ADAPTIVE';
WITH_RESTRICT_ON_DROP:                  'WITH RESTRICT ON DROP';
NOT_LOGGED_INITIALLY:                   'NOT LOGGED INITIALLY';
CCSID:                                  'CCSID';
ASCII:                                  'ASCII';
UNICODE:                                'UNICODE';
SECURITY_POLICY:                        'SECURITY_POLICY';
OPTIONS:                                'OPTIONS';
LONG_VARCHAR:                           'LONG VARCHAR';
LONG_VARGRAPHIC:                        'LONG VARGRAPHIC';
//COLUMN-OPTIONS
KEYS:                                   'KEYS';
SCOPE:                                  'SCOPE';
PRIMARY:                                'PRIMARY';
UNIQUE:                                 'UNIQUE';
INLINE_LENGTH:                          'INLINE LENGTH';
COMPRESS_SYSTEM_DEFAULT:                'COMPRESS SYSTEM DEFAULT';
SECURED_WITH:                           'SECURED WITH';
NOT_HIDDEN:                             'NOT_HIDDEN';
IMPLICITLY_HIDDEN:                      'IMPLICITLY HIDDEN';
ACCESS:                                 'ACCESS';
//LOB-OPTIONS
LOGGED:                                 'LOGGED';
NOT_LOGGED:                             'NOT LOGGED';
COMPACT:                                'COMPACT';
NOT_COMPACT:                            'NOT COMPACT';
DEFINITION:                             'DEFINITION';
//REFERCES-CLAUSE
REFERENCES:                             'REFERENCES';

//RULE-CLAUSE

RESTRICT:                               'RESTRICT';
CASCADE:                                'CASCADE';
SIZE:                                   'SIZE';
//CONSTRAINT-ATTRIBUTES
ENFORCED:                               'ENFORCED';
NOT_ENFORCED:                           'NOT ENFORCED';
TRUSTED:                                'TRUSTED';
NOT_TRUSTED:                            'NOT TRUSTED';
OPTIMIZATION:                           'OPTIMIZATION';

//DEFAULT-CLAUSE
WITH:                                   'WITH';
DEFAULT:                                'DEFAULT';

//DEFAULT-VALUES

NULL:                                   'NULL';
EMPTY_CLOB:                             'EMPTY_CLOB()';
EMPTY_DBCLOB:                           'EMPTY_DBCLOB()';
EMPTY_NCLOB:                            'EMPTY_NCLOB()';
EMPTY_BLOB:                             'EMPTY_BLOB()';

//GENERATED-CLAUSE

GENERATED:                              'GENERATED';
ALWAYS:                                 'ALWAYS';
BY_DEFAULT:                             'BY DEFAULT';

//IDENTITY-OPTIONS
AS_IDENTITY:                            'AS IDENTITY';
START_WITH:                             'START WITH';
INCREMENT_BY:                           'INCREMENT BY';
NO_MINVALUE:                            'NO_MINVALUE';
MINVALUE:                               'MINVALUE';
NO_MAXVALUE:                            'NO MAXVALUE';
MAXVALUE:                               'MAXVALUE';
NO_CYCLE:                               'NO CYCLE';
CYCLE:                                  'CYCLE';
NO_CACHE:                               'NO CACHE';
CACHE:                                  'CACHE';
NO_ORDER:                               'NO ORDER';
ORDER:                                  'ORDER';

//AS-GENERATED-EXPRESSION-CLAUSE
AS:                                     'AS';

//AS-ROW-TRANSACTION-TIMESTAMP-CLAUSE
BEGIN:                                  'BEGIN';
END:                                    'END';

//AS=RPW=TRANSACTION=START-ID-CLAUSE
TRANSACTION_START_ID:                   'TRANSACTION START ID';

//PERIOD-DEFINITION
PERIOD:                                 'PERIOD';
SYSTEM_TIME:                            'SYSTEM_TIME';
BUSINESS_TIME:                          'BUSINESS_TIME';

//UNIQUE-CONSTRAINT
CONSTRAINT:                             'CONSTRAINT';
WITHOUT_OVERLAPS:                       'WITHOUT OVERLAPS';

//FUNCTIONAL-DEPENDENCY
DETERMINED_BY:                          'DETERMINED BY';

//TYPED-TABLE-OPTIONS
HIERARCHY:                              'HIERARCHY';

//UNDER-CLAUSE
UNDER:                                  'UNDER';
INHERIT_SELECT_PRIVILEGES:              'INHERIT SELECT PRIVILEGES';

//OID-COLUMN-DEFINITION
REF_IS:                                 'REF IS';
OID:                                    'OID';
USER_GENERATED:                         'USER GENERATED';

//WITH-OPTIOPNS
WITH_OPTIONS:                           'WITH OPTIONS';

//AS-RESULT-TABLE
WITH_NO_DATA:                           'WITH NO DATA';
WITH_DATA:                              'WITH DATA';

//COPY-OPTIONS
INCLUDING:                              'INCLUDING';
EXCLUDING:                              'EXCLUDING';
DEFAULTS:                               'DEFAULTS';
EXCLUDING_IDENTITY:                     'EXCLUDING IDENTITY';
INCLUDING_IDENTITY:                     'INCLUDING IDENTITY';
COLUMN_ATTRIBUTES:                      'COLUMN ATTRIBUTES';

//REFRESHABLE-TABLE-OPTIONS
DATA_INITIALLY_DEFERRED:                'DATA INITAILLY DEFERRED';
REFRESH:                                'REFRESH';
DEFERRED:                               'DEFERRED';
IMMEDIATE:                              'IMMEDIATE';
USER:                                   'USER';
REPLICATION:                            'REPLICATION';
FEDERATED_TOOL:                         'FEDERATED_TOOL';

//STAGING-TABLE-DEFINTION
FOR:                                    'FOR';
PROPAGATE_IMMEDIATE:                    'PROPAGATE IMMEDIATE';

//DIMENSIONS-CLAUSE
DIMENSIONS:                             'DIMENSION';

//SEQUENCE-KEY-SPEC
STARTING:                               'STARTING';
FROM:                                   'FROM';
ENDING:                                 'ENDING';
AT:                                     'AT';
ALLOW_OVERFLOW:                         'ALLOW OVERFLOW';
DISALLOW_OVERFLOW:                      'DISALLOW OVERFLOW';
PCTFREE:                                'PCTFREE';

//TABLESPACE-CLAUSES
//INDEX_IN:                               'INDEX IN';
LONG_IN:                                'LONG IN';

//DISTRIBUTION-CLAUSE
DISTRIBUTE_BY:                          'DISTRIBUTE BY';
HASH:                                   'HASH';
RANDOM:                                 'RANDOM';

//PARTITIONING-CLAUSE
PARTITION_BY:                           'PARTITION BY';
RANGE:                                  'RANGE';
MANAGED:                                'MANAGED';

//PARTITION-EXPRESSION
NULLS_LAST:                             'NULLS LASTS';
NULLS_FIRST:                            'NULLS FIRST';

//PARTITION-ELEMENT
PARTITION:                              'PARTITION';
EVERY:                                  'EVERY';

//STARTING-CLAUSE
INCLUSIVE:                              'INCLUSIVE';
EXCLUSIVE:                              'EXCLUSIVE';

//DURATION-LABLE
YEAR:                                   'YEAR';
YEARS:                                  'YEARS';
MONTH:                                  'MONTH';
MONTHS:                                 'MONTHS';
DAY:                                    'DAY';
DAYS:                                   'DAYS';
HOUR:                                   'HOUR';
HOURS:                                  'HOURS';
MINUTE:                                 'MINUTE';
MINUTES:                                'MINUTES';
SECOND:                                 'SECOND';
SECONDS:                                'SECONDS';
MICROSECOND:                            'MICROSECOND';
MICROSECONDS:                           'MICROSECONDS';

//AS-ROW-CHANGE-TIMESTAMP-CLAUSE
FOR_EACH_ROW_ON_UPDATE_AS_ROW_CHANGE_TIMESTAMP: 'FOR EACH ROW ON UPDATE AS ROW CHANGE TIMESTAMP';

////////////////////////////ALTER TABLE STATEMENT///////////////
ALTER:                                    'ALTER';
DROP:                                     'DROP';
ADDKEYWORD:                               'ADD';
CHARACTER_LARGE_OBJECT:                   'CHARACTER LARGE OBJECT';
EXPRESSION:                               'EXPRESSION';

SET_GENERATED:                            'SET_GENERATED';
SET_INCREMENT_BY:                         'SET_INCREMENT_BY';
SET_NO_MINVALUE:                          'SET_NO_MINVALUE';
SET_MINVALUE:                             'SET_MINVALUE';
SET_NO_MAXVALUE:                          'SET_NO_MAXVALUE';
SET_MAXVALUE:                             'SET_MAXVALUE';
SET_NO_CYCLE:                             'SET_NO_CYCLE';
SET_CYCLE:                                'SET_CYCLE';
SET_CACHE:                                'SET_CACHE';
SET_NO_CACHE:                             'SET_NO_CACHE';
SET_NO_ORDER:                             'SET_NO_ORDER';
SET_ORDER:                                'SET_ORDER';
RESTART:                                  'RESTART';
FOR_EACH_ROW_ON_UPDATE_ROW_CHANGE_TIMESTAMP:' FOR EACH ROW ON UPDATE ROW CHANGE TIMESTAMP';
AS_ROW:                                    'AS ROW';
ADD_SCOPE:                                 'ADD SCOPE';
SYSTEM_DEFAULT:                            'SYSTEM_DEFAULT';
OFF:                                       'OFF';
SECURED_WTIH:                              'SECURED WTIH';
DROP_COLUMN_SECURITY:                      'DROP COLUMN SECURITY';
ROW_ACCESS_CONTROL:                        'ROW ACCESS CONTROL';
ACTIVATE:                                  'ACTIVATE';
DEACTIVATE:                                'DEACTIVATE';
COLUMN_ACCESS_CONTROL:                     'COLUMN ACCESS CONTROL';
RENAME_COLUMN:                             'RENAME COLUMN';
DROP_DISTRIBUTION:                         'DROP_DISTRIBUTION';
MATERIALIZED:                              'MATERIALIZED';
QUERY:                                     'QUERY';
INCLUDE_LONGVAR_COLUMNS:                   'INCLUDE_LONGVAR_COLUMNS';
ACTIVATE_NOT_LOGGED_INITIALLY:             'ACTIVATE NOT LOGGED INITIALLY';
WITH_EMPTY_TABLE:                          'WITH EMPTY TABLE';
LOCKSIZE:                                  'LOCKSIZE';
BLOCKINSERT:                               'BLOCKINSERT';
APPEND:                                    'APPEND';
VOLATILE:                                  'VOLATILE';
STATIC:                                     'STATIC';
LOG_INDEX_BUILD:                            'LOG INDEX BUILD';
ADD_PARTITION:                              'ADD PARTITION';

ATTACH :                                    'ATTACH';
BUILD_MISSION_INDEXES:                      'BUILD MISSION INDEXES';
REQUIRE_MATCHING_INDEXES:                   'REQUIRE MATCHING INDEXES';
DETACH:                                     'DETACH';
INTO:                                       'INTO';
VERSIONING:                                 'VERSIONING';
USE_HISTORY_TABLE:                          'USE HISTORY TABLE';
DATA_TYPE:                                   'DATA TYPE';
MIN_VALUE:                                   'MIN VALUE';
DROP_COLUMN_SECURTIY:                       'DROP COLUMN SECURTIY';
RENAME:                                       'RENAME';

DROP_STORAGE:                               'DROP STORAGE';
REUSE_STORAGE:                              'REUSE STORAGE';
IGNORE_DELETE_TRIGGERS:                     'IGNORE DELETE TRIGGERS';
RESTRICT_WHEN_DELETE_TRIGGERS:              'RESTRICT WHEN DELETE TRIGGERS';
IMMIDIATE:                                  'IMMIDIATE';
CLUSTER:                                    'CLUSTER';
DISTRIBUTION:                               'DISTRIBUTION';
CONTINUE_IDENTITY:                          'CONTINUE IDENTITY';




//////////////////CREATE INDEX STATEMENT//////////////////
INDEX:                                    'INDEX';
ON:                                       'ON';
BUSINESS_TIME_WITHOUT_OVERLAPS:           'BUSINESS_TIME WITHOUT OVERLAPS';
ASC:                                      'ASC';
DESC:                                     'DESC';
PARTITIONED:                              'PARTITIONED';
NO_PARTITIONED:                           'NO PARTITIONED';
SPECIFICATION_ONLY:                       'SPECIFICATION ONLY';
INCLUDE:                                  'INCLUDE';
EXTEND_USING:                             'EXTEND USING';
LEVEL2PCTFREE:                            'LEVEL2PCTFREE';
MINPCTUSED:                               'MINPCTUSED';
ALLOW_REVERSE_SCANS:                      'ALLOW REVERSE SCANS';
DISALLOW_REVERSE_SCANS:                   'DISALLOW REVERSE SCANS';
PAGE_SPLIT_SYMMETRIC:                     'PAGE SPLIT SYMMETRIC';
PAGE_SPLIT:                               'PAGE SPLIT';
HIGH:                                     'HIGH';
LOW:                                      'LOW';
COLLECT:                                  'COLLECT';
SAMPLED:                                  'SAMPLED';
UNSAMPLED:                                'UNSAMPLED';
DETAILED:                                 'DETAILED';
STATISTICS:                               'STATISTICS';
COMPRESS:                                 'COMPRESS';
NO:                                       'NO';
YES:                                      'YES';

//XML INDEX SPECIFICATION
GENERATE_KEY_USING_XMLPATTERN:            'GENERATE KEY USING XMLPATTERN';

//NAMESPACE DECLARATION
DECLARE_NAMESAPCE:                        'DECLARE NAMESPACE';
DECLARE_DEFAULT_ELEMENT_NAMESPACE:        'DECLARE DEFAULT ELEMENT NAMESPACE';

//FORWARD AXIS

CHILD:                                    'CHILD::';
fragment ANNOTATION:                      [@];
ATTRIBUTE:                                'ATTRIBUTE::';
DESCENDANT:                               'DESCENDANT::';
SELF:                                     'SELF::';
DESCENDANT_OR_SELF:                       'DESCENDANT-OR-SELF::';


//XMLKIND-TEST
NODE:                                     'NODE()';
TEXT:                                     'TEXT()';
COMMENT:                                  'COMMENT()';
PROCESSING_INSTRUCTION:                   'PROCESSING INSTRUCTION()';

//FUNCTION STEP
FN_UPPERCASE:                             'FN:UPPER-CASE';
FN_EXISTS:                                'FN_EXISTS';

//XMLTYPE-CALUSE
IGNORE_INVALID_VALUES:                    'IGNORE INVALID VALUES';
REJECT_INVALID_VALUES:                    'REJECT INVALID VALUES';

//DATA TYPE
HASHED:                                   'HASHES';

////////////////////CASE STATEMENT/////////////////////////
CASE:                                     'CASE';
WHEN:                                     'WHEN';
THEN:                                     'THEN';
ELSE:                                     'ELSE';


////////////////////////////FOR///////////////////////////////
ASENSITIVE:                                'ASENSITIVE';
INSENSITIVE:                               'INSENSITIVE';
CURSOR:                                    'CURSOR';
WITHOUT_HOLD:                              'WITHOUT HOLD';
WITH_HOLD:                                 'WITH HOLD';
DO:                                        'DO';
END_FOR:                                   'END FOR';

//SQL FUNCTION STATEMENT
CALL:                                      'CALL';
GET_DIAGNOSTICS:                           'GET DIAGNOSTICS';
IF:                                        'IF';
INSERT:                                    'INSERT';
ITERATE:                                   'ITERATE';
LEAVE:                                     'LEAVE';
MERGE:                                     'MERGE';
SET:                                       'SET';
SIGNAL:                                    'SIGNAL';
WHILE:                                     'WHILE';


//////////////////////////IF  ELSE STATMENT///////////////////////
ELSEIF:                                    'ELSEIF';
END_IF:                                    'END IF';



///////////////////////////WHILE STATEMENT/////////////////////////
END_WHILE:                                 'END WHILE';

///////////////////// INSERT STATEMENT///////////////////
VALUES:                                    'VALUES';
RR:                                        'RR';
RS:                                        'RS';
CS:                                        'CS';
UR:                                        'UR';


//////////////////////////////DELETE STATEMENT////////////////////

//SEARCHED DELETE
ONLY:                                      'ONLY';
SKIP_LOCKED:                               'SKIP LOCKED';
DATA:                                      'DATA';
WAIT_FOR_OUTCOME:                          'WAIT FOR OUTCOME';
NOWAIT:                                    'NOWAIT';
WAIT:                                      'WAIT';
WHERE:                                     'WHERE';

///POSITIONED DELETE
WHERE_CURRENT_OF:                          'WHERE CURRENT OF';

///////////////UPDATE STATEMENT////////////////////////


///SEARCHED UPDATE
UPDATE:                                     'UPDATE';

///////////////////FULL SELECT//////////////////////
UNION:                                      'UNION';
UNION_ALL:                                  'UNION ALL';
EXCEPT:                                     'EXCEPT';
EXCEPT_ALL:                                 'EXCEPT ALL';
INTERSECT:                                  'INTERSECT';
INTERSECT_ALL:                              'INTERSECT ALL';

///////LOCK REQUEST CLAUSE
USE_AND_KEEP:                               'USE AND KEEP';
SHARE:                                      'SHARE';
LOCKS:                                      'LOCKS';

//SELECT CLAUSE
SELECT:                                    'SELECT';
ALL:                                       'ALL';
DISTINCT:                                  'DISTINCT';

//GROUP BY CLAUSE
GROUP:                                     'GROUP';
GROUPING_SETS:                             'GROUPING SETS';
ROLLUP:                                    'ROLLUP';
CUBE:                                      'CUBE';


//HAVING CLAUSE
HAVING:                                    'HAVING';


//ORDER BY CLAUSE
ORDER_OF:                                  'ORDER OF';
INPUT_SEQUENCE:                            'INPUT SEQUENCE';
ASC_NULLS_LAST:                            'ASC NULLS LAST';
ASC_NULLS_FIRST:                           'ASC NULLS FIRST';

DESC_NULLS_FIRST:                          'DESC NULLS FIRST';
DESC_NULLS_LAST:                           'DESC NULLS LAST';
ORDER_BY:                                  'ORDER BY';

//FETCH CALUSE
FETCH_KEY:                                     'FETCH';
NEXT:                                       'NEXT';
ROWS:                                      'ROWS';

///OFFEST CALUSE
OFFSET:                                    'OFFSET';

///PERIOD CLAUSE
FOR_PORTION_OF_BUSINESS_TIME:              'FOR PORTION OF BUSINESS_TIME';
TO:                                        'TO';

////quantified predicate
SOME:                                      'SOME';
ANY:                                       'ANY';
/////logical operator
AND:                                     'AND';
OR:                                      'OR';
NOT:                                     'NOT';


////search condition
SELECTIVITY:                             'SELECTIVITY';




///array exists
ARRAY_EXISTS:                             'ARRAY_EXISTS';

///between predicate
BETWEEN:                                  'BETWEEN';


///////////CURSOR PREDICATE
OPEN:                                     'OPEN';
FOUND:                                    'FOUND';


/////EXISTS PREDICATE
EXISTS:                                   'EXISTS';

/////JSON EXISTS PREDICATE
JSON_EXISTS:                               'JSON_EXISTS';
JSON_EXISTS_FORMAT:                        FORMAT_JSON|FORMAT_BSON;
FORMAT_JSON:                                'FORMAT JSON';
FORMAT_BSON:                               'FORMAT BSON';
ON_ERROR:                                  'ON ERROR';

///SQL JSON PATH EXP
JSON_PATH_MODE:                            LAX|STRICT;
LAX:                                       'lax';
STRICT:                                    'strict';

///LIKE PREDICATE
ESCAPE:                                    'ESCAPE';

//////OVERLAPS PREDICATE
OVERLAPS:                                  'OVERLAPS';

//////////////TRIGGER EVENTS PREDICATE
INSERTING:                                  'INSERTING';
DELETING:                                   'DELETING';
UPDATING:                                   'UPDATING';


/////REGEXP PREDICATE
REGEXP_LIKE:                                'REGEXP_LIKE';



///TYPE PREDICATE
DYNAMIC_TYPE:                              'DYNAMIC TYPE';

/////////validated preodicate
VALIDATED:                                 'VALIDATED';
ACCORDING_TO_XMLSCHEMA:                    'ACCORDING TO XMLSCHEMA';
NAMESPACE:                                 'NAMESPACE';
URI:                                       'URI';
/////////implementation clause
PROVIDER:                                   'PROVIDER';
ROUTINE_SOURCE_TABLE:                       'ROUTINE_SOURCE_TABLE';
ROUTINE_SOURCE_NAME:                        'ROUTINE_SOURCE_NAME';
///////XML EXISTS
XMLEXISTS:                                  'XMLEXISTS';
PASSING:                                    'PASSING';
BY_REF:                                     'BY REF';

//////TABLE SAMPLE CLAUSE
BERNOULLI:                                   'BERNOULLI';
SYSTEM:                                      'SYSTEM';
REPEATABLE:                                  'REPEATABLE';



/////SPECIFIC CONDITION VALUE
FEDERATED:                                   'FEDERATED';
SQLSTATE:                                    'SQLSTATE';
SQLCODE:                                     'SQLCODE';
VALUE:                                       'VALUE';


/////TABLE UDF CRDINALOITY CLAUSE
CARDINALITY:                                  'CARDINALITY';
CARDINALITY_MULTIPLIER:                      'CARDINALITY MULTIPLIER';



////OUTER TABLE REFERENCE
OUTER:                                      'OUTER';


////////////ANALYZE TABLE EXPRESSION
ANALYZE_TABLE:                              'ANALYZE_TABLE';



/////////NESTED TABLE EXPRESSION
LATERAL:                                   'LATERAL';



////DATA CHANGE TABLE REFERENCE
FINAL:                                      'FINAL';
NEW:                                         'NEW';
OLD:                                         'OLD';
TABLE:                                       'TABLE';
E:                                           'E';



//UNNEST TABLE FUNCTION
UNNEST:                                    'UNNEST';

////COLLECTION DERVIED TABLE

ORDINALITY:                               'ORDINALITY';


/////////////XML TABLE FUNCTION
XMLTABLE:                                  'XMLTABLE';
COLUMNS:                                    'COLUMNS';
PATH:                                       'PATH';

///JOINED TABLE
INNER:                                      'INNER';
JOIN:                                       'JOIN';
USING:                                      'USING';
CROSS_JOIN:                                 'CROSS JOIN';
LEFT:                                       'LEFT';
RIGHT:                                      'RIGHT';
FULL:                                       'FULL';


////SPECIAL REGISTERS
CURRENT_CLIENT_ACTING:                      'CURRENT CLIENT_ACTING'|'CLIENT ACTING';
CURRENT_CLIENT_APPNAME:                     'CURRENT CLIENT_APPNAME'|'CLIENT APPNAME';
CURRENT_CLIENT_USERID:                      'CURRENT CLIENT_USERID'|'CLIENT USERID';
CURRENT_CLIENT_WRKSTNNAME:                  'CURRENT CLIENT_WRKSTNNAME'|'CLIENT WRKSTNNAME';
CURRENT_DATE:                               'CURRENT DATE'|'CURRENT_DATE';
CURRENT_DBPARTITIONNUM:                     'CURRENT  DBPARTITIONNUM';
CURRENT_DECFLOAT_ROUNDING_MODE:             'CURRENT DECFLOAT ROUNDING MODE';
CURRENT_DEFAULT_TRANSFORM_GROUP:            'CURRENT DEFAULT TRANSFORM GROUP';
CURRENT_DEGREE:                             'CURRENT DEGREE';
CURRENT_EXPLAIN_MODE:                       'CURRENT EXPLAIN MODE';
CURRENT_EXPLAIN_SNAPSHOT:                   'CURRENT EXPLAIN SNAPSHOT';
CURRENT_FEDERATED_ASYNCHRONY:               'CURRENT FEDERATED ASYNCHRONY';
CURRENT_IMPLICIT_XMLPARSE_OPTION:           'CURRENT IMPLICIT XMLPARSE OPTION';
CURRENT_ISOLATION:                          'CURRENT ISOLATION';
CURRENT_LOCALE_LC_TIME:                     'CURRENT LOCALE LC_TIME';
CURRENT_LOCK_TIMEOUT:                       'CURRENT LOCK TIMEOUT';
CURRENT_MAINTAINED_TABLE_TYPES_FOR_OPTIMIZATION:'CURRENT MAINTAINED TABLE TYPES FOR OPTIMIZATION';
CURRENT_MDC_ROLLOUT_MODE:                   'CURRENT MDC ROLLOUT MODE';
CURRENT_MEMBER:                             'CURRENT MEMBER';
CURRENT_OPTIMIZATION_PROFILE:               'CURRENT OPTIMIZATION PROFILE';
CURRENT_PACKAGE_PATH:                       'CURRENT PACKAGE PATH';
CURRENT_PATH:                               'CURRENT_PATH'|'CURRENT PATH';
CURRENT_QUERY_OPTIMIZATION:                 'CURRENT QUERY OPTIMIZATION';
CURRENT_REFRESH_AGE:                        'CURRENT REFRESH AGE';
CURRENT_SCHEMA:                             'CURRENT SCHEMA'|'CURRENT_SCHEMA';
CURRENT_SERVER:                             'CURRENT_SERVER'|'CURRENT SERVER';
CURRENT_SQL_CCFLAGS:                        'CURRENT SQL_CCFLAGS';
CURRENT_TEMPORAL_BUSINESS_TIME:             'CURRENT TEMPORAL BUSINESS_TIME';
CURRENT_TEMPORAL_SYSTEM_TIME:               'CURRENT TEMPORAL SYSTEM_TIME';
CURRENT_TIME:                               'CURRENT TIME'|'CURRENT_TIME';
CURRENT_TIMESTAMP:                          'CURRENT TIMESTAMP'|'CURRENT_TIMESTAMP';
CURRENT_TIMEZONE:                           'CURRENT_TIMEZONE'|'CURRENT TIMEZONE';
CURRENT_USER:                               'CURRENT_USER'|'CURRENT USER';
SESSION_USER:                                USER|'SESSION_USER';
SYSTEM_USER:                                'SYSTEM_USER';


//////////Datetime scalar functions
ADD_DAYS:                                   'ADD_DAYS';
ADD_HOURS:                                  'ADD_HOURS';
ADD_MINUTES:                                'ADD_MINUTES';
ADD_MONTHS:                                 'ADD_MONTHS';
ADD_SECONDS:                                'ADD_SECONDS';
ADD_YEARS:                                  'ADD_YEARS';
AGE:                                        'AGE';
DATE_PART:                                  'DATE_PART';
DATE_TRUNC:                                 'DATE_TRUNC';
DAYNAME:                                    'DAYNAME';
DAYOFMONTH:                                 'DAYOFMONTH';
DAYOFWEEK:                                  'DAYOFWEEK';
DAYOFWEEK_ISO:                              'DAYOFWEEK_ISO';
DAYOFYEAR:                                  'DAYOFYEAR';
DAYS_BETWEEN:                               'DAYS_BETWEEN';
DAYS_TO_END_OF_MONTH:                       'DAYS_TO_END_MONTH';
EXTRACT:                                    'EXTRACT';
FIRST_DAY:                                  'FIRST_DAY';
FROM_UTC_TIMESTAMP:                         'FROM_UTC_TIMESTAMP';
HOURS_BETWEEN:                              'HOURS_BETWEEN';
JULIAN_DAY:                                 'JULIAN_DAY';
LAST_DAY:                                   'LAST_DAY';
MIDNIGHT_SECONDS:                           'MIDNIGHT_SECONDS';
MINUTES_BETWEEN:                            'MINUTES_BETWEEN';
MONTHNAME:                                  'MONTHNAME';
MONTHS_BETWEEN:                             'MONTHS_BETWEEN';
NEXT_DAY:                                   'NEXT_DAY';
NEXT_MONTH:                                 'NEXT_MONTH';
NEXT_QUARTER:                               'NEXT_QUATER';
NEXT_WEEK:                                  'NEXT_WEEK';
NEXT_YEAR:                                  'NEXT_YEAR';
NOW:                                        'NOW';
QUARTER:                                    'QUARTER';
ROUND:                                      'ROUND';
ROUND_TIMESTAMP:                            'ROUND_TIMESTAMP';
SECONDS_BETWEEN:                            'SECONDS_BETWEEN';
THIS_MONTH:                                 'THIS_MONTH';
THIS_QUARTER:                               'THIS_QUATER';
THIS_WEEK:                                  'THIS_WEEK';
THIS_YEAR:                                  'THIS_YEAR';
TIMESTAMP_FORMAT:                           'TIMESTAMP_FORMAT';
TIMESTAMP_ISO:                              'TIMESTAMP_ISO';
TIMESTAMPDIFF:                              'TIMESTAMPDIFF';
TIMEZONE:                                   'TIMEZONE';
TO_CHAR:                                    'TO_CHAR';
TO_DATE:                                    'TO_DATE';
TO_NCHAR:                                   'TO_NCHAR';
TO_TIMESTAMP:                               'TO_TIMESTAMP';
TO_UTC_TIMESTAMP:                           'TO_UTC_TIMESTAMP';
TRUNCATE:                                   'TRUNC'|'TRUNCATE';
TRUNC_TIMESTAMP:                            'TRUNC_TIMESAMP';
VARCHAR_FORMAT:                             'VARCHAR_FORMAT';
WEEK:                                       'WEEK';
WEEK_ISO:                                   'WEEK_ISO';
WEEKS_BETWEEN:                              'WEEKS_BETWEEN';
YEARS_BETWEEN:                              'YEARS_BETWEEN';
YMD_BETWEEN:                                'YMD_BETWEEN';
////////////CONSTANTS
INFINITY:                                   'INFINITY';
SNAN:                                       'SNAN';
NAN:                                        'NAN';
INF:                                        'INF';
X:                                          'X';
UAND:                                       'U&';
N:                                          'N';
GX:                                         'GX';
BX:                                         'BX';
UX:                                         'UX';
UESCAPE:                                    'UESCAPE';

/////////comparision opreator
NOT_EQUAL_TO:                             '<>'|'^='|'!='|'¬=';
LESS_THAN:                                '<';
GREATER_THAN:                             '>';
LESS_THAN_EQUAL_TO:                       '<='|'^>'|'!>'|'¬>';
GREATER_THAN_EQUAL_TO:                    '>='|'^<'|'!<'|'¬<';
EQUAL:                                 '=';

/////BOOLEAN
IS:                                       'IS';
BOOLEAN_TRUE:                             TRUE | ON;
BOOLEAN_FALSE:                            'FALSE'|OFF;
UNKNOWN:                                  'UNKNOWN';
ERROR:                                    'ERROR';

/////////////cast specification
INTERVAL:                               'INTERVAL';
CAST:                                   'CAST';
REF:                                    'REF';

/////////xml cast spec
XMLCAST:                            'XMLCAST';

////array CONSTRUCTOR
ARRAY:                              'ARRAY';


////////ROW CHANGE EXP
CHANGE:                             'CHANGE';
TOKEN:                              'TOKEN';

////////////sequence ref
PREVIOUS:                           'PREVIOUS';

/////SUBTYPE TREATEMENT
TREAT:                              'TREAT';

///////olap specification
CUME_DIST:                          'CUME_DIST()';
PERCENT_RANK:                       'PERCENT_RANK()';
RANK:                               'RANK()';
DENSE_RANK:                         'DENSE_RANK()';
NTLE:                               'NTLE';
OVER:                               'OVER';
RESPECT_NULLS:                      'RESPECT NULLS';
IGNORE_NULLS:                       'IGNORE NULLS';
LAG:                                'LAG';
LEAD:                               'LEAD';
ROW_NUMBER:                         'ROW_NUMBER()';
AGGREGRATESPEC_RANGE_TYEP1:         'RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING';
AGGREGRATESPEC_RANGE_TYEP2:         'RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW';
FROM_FIRST:                         'FROM FIRST';
FROM_LAST:                          'FROM LAST';
RATIO_TO_REPORT:                    'RATIO_TO_REPORT';
UNBOUNDED_PRECEDING:                'UNBOUNDED PRECEDING';
UNBOUNDED_FOLLOWING:                'UNBOUNDED FOLLOWING';
PRECEDING:                          'PRECEDING';
FOLLOWING:                          'FOLLOWING';
CURRENT_ROW:                        'CURRENT ROW';
ELSE_IGNORE:                        'ELSE IGNORE';

////////////////////strucutred-type
INSTANTIABLE:                       'INSTANTIABLE';
NOT_INSTANTIABLE:                   'NOT INSTANTIABLE';
WITHOUT_COMPARISONS:                'WITHOUT COMPARISONS';
MODE_DB2SQL:                        'MODE DB2SQL';
WITH_FUNCTION_ACCESS:               'WITH FUNCTION ACCESS';
CAST_REF_AS_SOURCE_WITH:            'CAST (REF AS SOURCE) WITH';
CAST_SOURCE_AS_REF_WITH:            'CAST (SOURCE AS REF) WITH';
METHOD:                             'METHOD';
OVERRIDING:                         'OVERRIDING';
RETURNS:                            'RETURNS';
AS_LOCATOR:                         'AS LOCATOR';
SPECIFIC_NAME:                      'SPECIFIC NAME';
SET_AS_RESULT:                      'SET AS RESULT';
PARAMETER:                    'PARAMETER';
REGISTERS:                          'REGISTERS';
SPECIAL:                            'SPECIAL';
DETERMINISTIC:                      'DETERMINISTIC';
ACTION:                             'ACTION';
SUMMARY:                            'SUMMARY';
CONTAINS:                           'CONTAINS';
LANGUAGE_C:                         'LANGUAGE C';
C:                                  'C';
LANGUAGE_JAVA:                      'LANGUAGE JAVA';
LANGUAGE_OLE:                       'LANGUAGE OLE';
STYLE:                              'STYLE';
DB2GENERAL:                         'DB2GENERAL';
SQL:                                'SQL';
FENCED:                             'FENCED';
NOT_FENCED:                         'NOT FENCED';
THREADSAFE:                         'THREADSAFE';
NOT_THREADSAFE:                     'NOT THREADSAFE';
RETURNS_NULL_ON_NULL_INPUT:         'RETURNS NULL ON NULL INPUT';
NO_SQL:                             'NO SQL';
NO_SCRATCHPAD:                      'NO SCRATCHPAD';
SCRATCHPAD:                         'SCRATCHPAD';
NO_FINAL_CALL:                      'NO FINAL CALL';
FINAL_CALL:                         'FINAL CALL';
ALLOW_PARALLEL:                     'ALLOW PARALLEL';
DISALLOW_PARALLEL:                  'DISALLOW_PARALLEL';
NO_DBINFO:                          'NO DBINFO';
DBINFO:                             'DBINFO';
TYPE:                               'TYPE';
NATIONAL_CHARCTER:                  'NATIONAL_CHARACTER';
NATIONAL_CHAR:                      'NATIONAL_CHAR';
PRECISION:                          'PRECISION';

////////////distinct type
WITH_STRONG_TYPE_RULES:             'WITH STRONG TYPE RULES';
WITH_WEAK_TYPE_RULES:               'WITH WEAK TYPE RULES';
ANCHOR:                             'ANCHOR';
///////////////////////SECURITY POLICY
DB2LBACRULES:                       'DB2LBACRULES';
CALLED:                             'CALLED';
INPUT:                              'INPUT';
OVERRIDE_NOT_AUTHORIZED_WRITE_SECURITY_LABEL:'OVERRIDE NOT AUTHORIZED WRITE SECURITY LABEL';
RESTRICT_NOT_AUTHORIZED_WRITE_SECURITY_LABEL:'RESTRICT NOT AUTHORIZED WRITE SECURITY LABEL';
COMPONENTS:                                     'COMPONENTS';
////////////////GRANT
GRANT:                                          'GRANT';
PRIVILEGES:                                     'PRIVILIGES';
CONTROL:                                        'CONTROL';
DELETE:                                         'DELETE';
WITH_GRANT_OPTION:                              'WITH_GRANT_OPTION';
ROLE:                                           'ROLE';
PUBLIC_KEYWORD:                                  'PUBLIC';

/////////////COMMENT
COMMENT_ON:                                     'COMMENT ON';
AUDIT_POLICY:                                   'AUDIT POLICY';
DATABASE_PARTITION_GROUP:                       'DATABASE PARTITION GROUP';
FUNCTION_MAPPING:                               'FUNCTION MAPPING';
HISTOGRAM_TEMPLATE:                             'HISTOGRAM TEMPLATE';
MASK:                                           'MASK';
MODULE:                                         'MODEULE';
NICKNAME:                                       'NICKNAME';
PACKAGE:                                        'PACKAGE';
VERSION:                                        'VERSION';
PERMISSION:                                     'PERMISSION';
SCHEMA:                                         'SCHEMA';
SECURITY_LABEL:                                  'SECURITY LABEL';
SECURITY_LABEL_COMPONENT:                       'SECURITY LABEL COMPONENT';
SEQUENCE:                                       'SEQUENCE';
SERVER:                                         'SERVER';
SERVER_OPTION:                                  'SERVER OPTION';
STOGROUP:                                       'STOGROUP';
TABLESPACE:                                     'TABLESPACE';
THRESHOLD:                                      'THRESHOLD';
TRIGGER:                                        'TRIGGER';
TRUSTED_CONTEXT:                                'TRUSTED CONTEXT';
TYPE_MAPPING:                                   'TYPE MAPPING';
USAGE_LIST:                                     'USAGE LIST';
VARIABLE:                                       'VARIABLE';
WORK_ACTION_SET:                                'WORK ACTION SET';
WORK_CLASS_SET:                                 'WORK CLASS SET';
WORKLOAD:                                       'WORKLOAD';
WRAPPER:                                        'WRAPPER';
XSROBJECT:                                      'XSROBJECT';
ALIAS:                                          'ALIAS';
FOR_MODULE:                                     'FOR MODULE';
FOR_SEQUENCE:                                   'FOR SEQUENCE';
FUNCTION:                                       'FUNCTION';
SPECIFIC_FUNCTION:                              'SPECIFIC FUNCTION';
PROCEDURE:                                      'PROCEDURE';
SPECIFIC_PROCEDURE:                             'SPECIFIC PROCEDURE';
SERVER_TYPE:                                    'SERVER TYPE';
SERVICE_CLASS:                                  'SERVICE CLASS';
TEMPORARY:                                      'TEMPORARY';
NO_TABLESPACE:                                  'NO TABLESPACE';
ONLINE:                                         'ONLINE';
INCREMENTAL:                                    'INCREMENTAL';
DELTA:                                          'DELTA';

/////////////////schema
AUTHORIZATION:                                   'AUTHORIZATION';
///UNCLASSIFIED

CONCAT:'CONCAT';
FIRST_VALUE:'FIRST VALUE';
LAST_VALUE: 'LAST VALUE';
NTH_VALUE:'NTH VALUE';
EXTERNAL:'EXTERNAL';
WITHIN:'WITHIN';
IMPLEMENTATION:'IMPLEMENTATION';
RETURN_DATA_UNTILL:'RETURN DATA UNTIL';
TABLESAMPLE:'TABLE SAMPLE';

REPLACE:            'REPLACE';


//BASIC
POINTER_SYMBOL:                           '=>=';
COMMENTS:                                '*/' .? '/*';
DEFERENCE_SYMBOL:                       '->';
SYMBOL0:                                [~];
SYMBOL1:                                [`];
SYMBOL2:                                [!];
SYMBOL3:                                [@];
SYMBOL4:                                 [#];
DOLLAR:                                  [$];
PERCENTAGE:                              [%];
SYMBOL7:                                 [^];
SYMBOL8:                                 [&];
ASTERIK:                                 [*];
LT_BRACKET:                              [(];
RT_BRACKET:                               [)];
SUB:                                     [-];
SYMBOL9:                                 [_];
ADDITION:                                 [+];
SYMBOL10:                                 [=];
SYMBOL11:                                 [{];
SYMBOL12:                                 [}];
SQ_LT_BRACKET:                           '[';
SQ_RT_BRACKET:                           ']';
SYMBOL13:                                 [|];
SINLE_SLASH:                             [\\];
SEMI_COLON:                              ';';
COLON:                                   [:];
DOUBLE_QUOTATION:                        '"';
SINGLE_QUOTATION:                       '\'';
SYMBOL14:                               [<];
COMMA:                                   [,];
SYMBOL15:                               [>];
DOT:                                     [.];
DIV:                                      [/];
QUESTION_MARK:                            [?];
DASH:                                    SUB;
NUMBER:                                  DIGIT+;
SPACE:                                   [ \t\r\n]->skip;


DIGIT:                                        [0-9]+;



SPECIALCHARACTER:                          (DIGIT+|SYMBOL9|SPACE|SYMBOL0|SYMBOL1|SYMBOL2|SYMBOL3|SYMBOL4|SYMBOL7|SYMBOL8|SYMBOL9|SYMBOL10|SYMBOL11|SYMBOL12|SYMBOL13|SYMBOL14|SYMBOL15|DOLLAR|PERCENTAGE|ASTERIK|LT_BRACKET|RT_BRACKET|DASH|ADDITION|SQ_RT_BRACKET|SQ_LT_BRACKET|COLON|SEMI_COLON|DOUBLE_QUOTATION|COMMA|DOT|QUESTION_MARK|DIV);
CHARCTERSTRING:                            SINGLE_QUOTATION .*? SINGLE_QUOTATION;

//FUNCTIONS

OUT:                                'OUT';
INOUT:                              'INOUT';
GENERIC_TABLE:                      'GENERIC TABLE';
ELEMENT_OF:                         'ELEMENT OF';
RETURN :                            'RETURN';
// built in data type
SYSPROC_DB2SECURITYLABEL:              'SYSPROC DB2 SECURITY LABLE';
PREDICATES:                             'PREDICATES';


// OPTION LIST


LANGUAGE :                                    'LANGUAGE';
SPECIFIC :                                    'SPECIFIC';
MODIFIES :                                      'MODIFIES';
INHERIT_ISOLATION_LEVEL_WITHOUT_LOCK_REQUEST: 'INHERIT ISOLATION LEVEL WITHOUT LOCK REQUEST';
INHERIT_ISOLATION_LEVEL_WITH_LOCK_REQUEST:    'INHERIT ISOLATION LEVEL WITH LOCK REQUEST';
NOT_SECURED:                                  'NOT SECURED';
SECURED:                                      'SECURED';
//BASIC

SLASH:                                  '/' |  '\\';
QUOTATION:                              ["]|['];
NON_COMMENTS: '--' [\n]->skip;
DOTTED_LINE: '--'->skip;
SINGLE_COMMENTS:                         '--' .*? [\n] ->skip;

NUMS:                                   DIGIT+;
OR_OPERATOR:                            '|';
ASTRIEK:                                '*';

//WORD:                                   ( [a-z] | SYMBOL9 | NUMS )+;
AT_SYMBOL:                              '@';

//Procedures
DISPATCH:            'DISPATCH';
OR_REPLACE:         'OR REPLACE';
CHARACTER5:         'CHARACTER 5';
CHAR5:         'CHAR 5' ;
ON_ROLLBACK_RETAIN_CURSORS:         'ON ROLLBACK RETAIN CURSORS' ;
ON_ROLLBACK_RETAIN_LOCKS:         'ON ROLLBACK RETAIN LOCKS';
COMMIT:                 'COMMIT';
OUTPUT:             'OUTPUT' ;
ROLLBACK:         'ROLLBACK' ;
TO_SAVEPOINT:      'TO SAVEPOINT';
WORK:              'WORK';
GOTO:              'GOTO' ;
PREPARE:           'PREPARE';
HANDLER_FOR:       'HANDLER FOR';
REPEAT:            'REPEAT' ;
PLPGSQL:           'PLPGSQL';
END_REPEAT:       'END REPEAT' ;
RELEASE:         'RELEASE';
SET_MESSAGE_TEXT:       'SET MESSAGE_TEXT';
CONDITION:         'CONDITION';
GLOBAL:            'GLOBAL';
PRESERVE:           'PRESERVE';
HANDLER:         'HANDLER';
CONTINUE:         'CONTINUE' ;
UNDO:         'UNDO' ;
EXIT:          'EXIT';
SQLEXCEPTION:         'SQLEXCEPTION' ;
NOT_ATOMIC_CONTINUE_ON_SQLEXCEPTION: 'NOT ATOMIC CONTINUE ON SQLEXCEPTION';
EXCEPTION_1:     'EXCEPTION 1';
SQLWARNING:         'SQL WARNING' ;
NOT_FOUND:                       'NOT FOUND';
LOOP:                            'LOOP' ;
ISOLATION:                       'ISOLATION';
FOR_READ_ONLY:                   'FOR READ ONLY' ;
READS:                           'READS';
FOR_UPDATE:                      'FOR UPDATE';
EXECUTE:                         'EXECUTE';
DESCRIPTOR:                      'DESCRIPTOR' ;
STATEMENT:                       'STATEMENT';
AUTONOMOUS:                      'AUTONOMOUS';
OLD_SAVEPOINT_LEVEL:             'OLD SAVEPOINT LEVEL' ;
RESULT:                           'RESULT';
NEXTVAL:                           'NEXTVAL';
DYNAMIC:                            'DYNAMIC';
NEW_SAVEPOINT_LEVEL:             'NEW SAVEPOINT LEVEL' ;
TO_CALLER:                       'TO CALLER';
TO_CLIENT:                       'TO CLIENT';
DECLARE:                         'DECLARE';
ATOMIC:                          'ATOMIC';
RESULT_SET_LOCATOR:              'RESULT SET LOCATION' ;
CONSTANT_NULL:                   'CONSTANT NULL' ;
CONSTANT:                       'CONSTANT' ;
UNTIL:                          'UNTIL' ;
CLOSE:                          'CLOSE' ;
SAVEPOINT_KEY:                  'SAVEPOINT';
WITHOUT_RETURN:                  'WITHOUT RETURN' ;
WITH_RETURN:                    'WITH RETURN';
ATTRIBUTE_NAME:                 '..' ;
TRUE:                           'TRUE' ;
SEC:                            'SEC' ;
MERGE_INTO:                     'MERGE INTO' ;
DB2_RETURN_STATUS:              'DB2 RETURN STATUS' ;
DB2_SQL_NESTING_LEVEL:          'DB2 SQL NESTING LEVEL' ;
ROW_COUNT:                      'ROW_COUNT' ;
DB2_TOKEN_STRING:               'DB2 TOKEN STRING' ;
MESSAGE_TEXT:                   'MESSAGE_TEXT' ;
EXCEPTION:                      'EXCEPTION' ;
EXTERNAL_NAME:                  'EXTERNAL NAME';
REPETABLE:                      'REPETABLE';
ENABLE:                         'ENABLE';
DISABLE:                        'DISABLE';
BUILD_MISSING_INDEXES:          'BUILD_MISSING_INDEXES';

MAINTAINED:                     'MAINTAINED';
TOOL:                           'TOOL';
//Index

BUSINESS_TIME_WITH_OVERLAPS: 'BUSINESS_TIME_WITHOUT_OVERLAPS';
NOT_PARTITIONED:             'NOT_PARTITIONED';
PAGE_SPLIT_HIGH:             'PAGE SPLIT HIGH';
PAGE_SPLIT_LOW:              'PAGE SPLIT LOW';
GENERATE:                     'GENERATE';
KEY:                         'KEY';
FOREIGN:                      'FOREIGN';
XMLPATTERN:                  'XMLPATTERN';
ELEMENT:                     'ELEMENT';

//TRIGGER
NO_CASCADE:                         'NO CASCADE' ;
BEFORE:                             'BEFORE';
AFTER:                              'AFTER';
INSTEAD_OF:                         'INSTEAD OF';
REFERENCING:                        'REFERENCING';
OLD_TABLE:                          'OLD TABLE';
NEW_TABLE:                          'NEW TABLE';
FOR_EACH_ROW:                       'FOR EACH ROW' | 'FOR EACH ROW MODE DB2 SQL';
FOR_EACH_STATEMENT:                 'FOR EACH STATEMENT';
NAMES:                               'NAMES';
LABELS:                              'LABELS';
BOTH:                                'BOTH';

//BASIC

TAB:                                    [\t];
RE_TAB:                                 [\r];
NEW_LINE:                               [\n];
EMPTY_QUOTES_WORD:                      QUOTATION SPACE* QUOTATION;


BLOCK_COMMENT       : '/*' .*? '*/' -> channel(HIDDEN);
LINE_COMMENT        : '--' .*? '\n' -> channel(HIDDEN);

//VIEWS
VIEW:                   'VIEW';
//OF:                     'OF';
//WITH:                   'WITH';
LOCAL:                  'LOCAL';
OPTION:                 'OPTION';
CASCADED_CHECK_OPTION:       'CASCADED' ([ ]|[\n])* 'CHECK' ([ ]|[\n])* 'OPTION';
LOCAL_CHECK_OPTION:         'LOCAL' ([ ]|[\n])*  'CHECK OPTION';
CHECK_OPTION:               'CHECK' ([ ]|[\n])*  'OPTION';
WITH_NO_ROW_MOVEMENT:    'WITH' ([ ]|[\n])*  'NO' ([ ]|[\n])*  'ROW MOVEMENT';
WITH_ROW_MOVEMENT:       'WITH' ([ ]|[\n])*  'ROW' ([ ]|[\n])*  'MOVEMENT';
//IS:                      'IS';
//USER:                    'USER';
EXTEND:                  'EXTEND';
UNCHECKED:               'UNCHECKED';
//SCOPE:                   'SCOPE';
READ_ONLY:               'READ ONLY';
//


BY:                                 'BY';

NULLS:                              'NULLS';
FIRST:                              'FIRST';
LAST:                               'LAST';

SETS:                               'SETS';
BACKUP:                             'BACKUP';
DATABASE:                           'DATABASE';
DB:                                 'DB';
ALL_DBPARTITIONNUMS:                'ALL DBPARTITIONNUMS';
DBPARTITIONNUMS:                    'DBPARTITIONNUMS';
DBPARTITIONNUM:                     'DBPARTITIONNUM';
DEDUP_DEVICE:                       'DEDUP_DEVICE';
DEVICE:                             'DEVICE';
LOAD:                               'LOAD';
USE:                                'USE';
TSM:                                'TSM';
XBSA:                               'XBSA';
SNAPSHOT:                           'SNAPSHOT';
LIBRARY:                            'LIBRARY';
SCRIPT:                             'SCRIPT';
SESSIONS:                           'SESSIONS';
BUFFERS:                            'BUFFERS';
BUFFER:                             'BUFFER';
PARALLELISM:                        'PARALLELISM';
COMPRLIB:                           'COMPRLIB';
EXCLUDE:                            'EXCLUDE';
COMPROPTS:                          'COMPROPTS';
ENCRYPT:                            'ENCRYPT';
ENCRLIB:                            'ENCRLIB';
ENCROPTS:                           'ENCROPTS';
UTIL_IMPACT_PRIORITY:               'UTIL_IMPACT_PRIORITY';
EXCLUDE_LOGS:                       'EXCLUDE_LOGS';
INCLUDE_LOGS:                       'INCLUDE_LOGS';
WITHOUT_PROMPTING:                  'WITHOUT_PROMPTING';
RESIGNAL:                           'RESIGNAL';
PAGESIZE:                           'PAGESIZE';
LARGE:                              'LARGE';
REGULAR:                            'REGULAR';



LEFT_OUTER:                     LEFT([ ]|[\n])*  OUTER;
RIGHT_OUTER:                    RIGHT ([ ]|[\n])*  OUTER;
FULL_OUTER:                     FULL ([ ]|[\n])*  OUTER;
RETURN_DATA_UNTIL:            'RETURN_DATA_UNTIL';
CROSS:                         'CROSS';

NO_CASCADE_BEFORE:              'NO CASCADE BEFORE';

WITH_ORDINALITY:                 'WITH' ([ ]|[\n])*  'ORDINALITY';
IS_NOT:                    'IS NOT?';

////SPECIAL REGISTERS
CURRENT_CLIENT_ACCTNG:                      'CURRENT' ([ ]|[\n])*  'CLIENT_ACCTNG';
CLIENT_ACCTNG:                              'CLIENT' ([ ]|[\n])*  'ACCTNG';
CURRENT_CLIENT_APPLNAME:                    'CURRENT' ([ ]|[\n])*  'CLIENT_APPLNAME';
CLIENT_APPLNAME:                            'CLIENT' ([ ]|[\n])*  'APPLNAME';
CLIENT_USERID:                              'CLIENT' ([ ]|[\n])*  'USERID';
CLIENT_WRKSTNNAME:                          'CLIENT' ([ ]|[\n])*  'WRKSTNNAME';
NTILE:                                      'NTILE';
TRIGGER_SEQ1:                               'TRIGGER_SEQ1';

MATCHED:                    'MATCHED';
QUERYNO:                    'QUERYNO';
CHECK:                      'CHECK';
REMOTE_SERVER:              'REMOTE SERVER';
REMOTE_SCHEMA:              'REMOTE SCHEMA';
REMOTE_TABNAME:             'REMOTE TABNAME';
IN:                         'IN';
INITIALLY:                  'INITIALLY';
COMPRESSION:                'COMPRESSION';
ENABLE_ROW_MODIFICATION_TRACKING: 'ENABLE ROW MODIFICATION TRACKING';

ID_:                '"' (~["\\] | '\\'+["\\])* '"' | 'ID'|M|G|K|( [a-z_#$@0-9] | FullWidthLetter) ( [a-z_#$@0-9] | FullWidthLetter | [a-z0-9])*;


fragment FullWidthLetter
    : '\u00c0'..'\u00d6'
    | '\u00d8'..'\u00f6'
    | '\u00f8'..'\u00ff'
    | '\u0100'..'\u1fff'
    | '\u2c00'..'\u2fff'
    | '\u3040'..'\u318f'
    | '\u3300'..'\u337f'
    | '\u3400'..'\u3fff'
    | '\u4e00'..'\u9fff'
    | '\ua000'..'\ud7ff'
    | '\uf900'..'\ufaff'
    | '\uff00'..'\ufff0'
    // | '\u10000'..'\u1F9FF'  //not support four bytes chars
    // | '\u20000'..'\u2FA1F'
    ;

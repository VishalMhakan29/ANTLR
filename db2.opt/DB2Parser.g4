parser grammar DB2Parser;


options  {tokenVocab= DB2Lexer;}


batch_level_statement
    : create_or_replace_function
    | create_or_replace_procedure
    | create_or_replace_trigger
    | create_or_replace_view
    ;


sql_clauses
    : dml_clause SEMI_COLON?
    | cfl_statement SEMI_COLON?
    | another_statement SEMI_COLON?
    | ddl_clause SEMI_COLON?
    | backup_statement SEMI_COLON?
    | udt_clause SEMI_COLON?
    ;


//another_statement
another_statement:
       declare
     | execute_statement
     | execute_immediate_statement
     | set_statement
     | prepare_statement
     | for_statement
     ;


//ddl_clause
ddl_clause:
      create_schema
    | create_alias
    | alter_table
    | create_sequence
    | create_index
    | create_table
    | alter_sequence
    | create_table_space
    | drop_table
    ;



//cfl_statement (CONTROL-OF-FLOW)
cfl_statement:
       call_statement
     | case_segment
     | get_diagnostics_statement
     | begin_end
     | goto_statement
     | if_else_body
     | iterate_statement
     | leave_statement
     | loop_statement
     | repeat_statement
     | resignal_statement
     | return_statement
     | signal_statement
     | while_statement
     | fetch_statement
     | close_statement
     | open_statement
     | rollback_statement
     | release_savepoint_statement
     | savepoint_statement
     | commit_statement
     ;


//Dml Clause
dml_clause:        merge_into_statement
                 | searched_delete_statement
                 | insert_statement
                 | subSelectClause
                 | searched_update_statement
                 | truncate_statement
                 | select_into_statement
                 | cte
                 ;

drop_table:                     DROP TABLE whole_name;



udt_clause:                    CREATE TYPE typeName (distinctTypeOptions |  structuredTypeOptions)+;
distinctTypeOptions:           AS sourceDataType ruleTypes?;
ruleTypes:                     (WITH_STRONG_TYPE_RULES | WITH_WEAK_TYPE_RULES) dataTypeConstraints?;
sourceDataType:                data_definition | anchored_variable_data_type;
dataTypeConstraints:           hasNotNull? check_constraint?;
hasNotNull:                    NOT NULL;

structuredTypeOptions:                                                  (underClause
                                                                        |attributeDefinitionClause
                                                                        |instantiableOption
                                                                        |inlineLength
                                                                        |withoutComparisons
                                                                        |notFinal
                                                                        |modeDB2Sql
                                                                        |withFunctionAcces
                                                                        |referenceClause
                                                                        |castSourceAsRefClause
                                                                        |castRefAsSource
                                                                        |methodSpecifiationList);

///////////////attribute definition//////////
attributeDefinitionClause:              AS LT_BRACKET attributeDeinitionList RT_BRACKET;
attributeDeinitionList:                 attributeDefinition(COMMA attributeDefinition)*;
attributeDefinition:                    attributeName data_definition lob_option;
attributeName:                          whole_name;

instantiableOption:                       INSTANTIABLE #instantiable
                                          |(NOT_INSTANTIABLE)#notInstaniable;
//////////////////inline options
inlineLength:                           INLINE_LENGTH  inlineLengthValue;
inlineLengthValue:                      NUMBER;

//////////////////////not comparisions
 withoutComparisons:                    WITHOUT_COMPARISONS;
//////////////////not final
 notFinal:                              NOT FINAL;
///////////DB2SQL
modeDB2Sql:                             MODE_DB2SQL;

/////////////FUNCTION ACCESSS
withFunctionAcces:                     WITH_FUNCTION_ACCESS;


referenceClause:                      REF USING repType repTypeLength? repTypeForBitData?;


repType:                             (SMALLINT | INTEGER | INT | BIGINT ) #repDataTypeInt
                                     | (DECIMAL | DEC | NUMERIC | NUM ) #repDataTypeDec
                                     | (DECFLOAT) #repDataTypeDecFloat
                                     | ((CHARACTER  | CHAR_KEY) |(VARCHAR | CHARACTER | CHAR_KEY)) #repDataTypeChar   | ((BINARY) | (VARBINARY|BINARY VARYING)) #dataTypeBinary
                                     | (GRAPHIC | VARGRAPHIC )#repDataTypeGraphic;


repTypeLength:                       (LT_BRACKET repLength  RT_BRACKET) #normalRepLength
                                     | (LT_BRACKET repPrecisionLength COMMA repScaleLength RT_BRACKET)#precisionRepLength;
repLength:                              NUMBER ;
repPrecisionLength:                  NUMBER;
repScaleLength:                      NUMBER;
repTypeForBitData:                   FOR BIT DATA;


castSourceAsRefClause:              CAST_SOURCE_AS_REF_WITH functionName1;
functionName1:                       id_or_string;
 //////////////////////////////case ref as source
castRefAsSource:                    CAST_REF_AS_SOURCE_WITH functionName2;
functionName2:                      id_or_string;



//////////////////method specification
methodSpecifiationList:             methodSpecification(COMMA methodSpecification)*;

methodSpecification:                overriding? METHOD overridingMethodName
                                    LT_BRACKET methodBody? RT_BRACKET
                                    RETURNS methodReturnClause
                                    specificClause?
                                    setAsResultClause?
                                    routineCharacteristics*;

overriding:                         OVERRIDING;
overridingMethodName:               id_or_string;
setAsResultClause:                SET_AS_RESULT;



routineCharacteristics:          sqlRoutineCharacteristics|
                                 externalRoutineCharacteristics;

sqlRoutineCharacteristics:       languageSql|
                                 parameterCcsidOption|
                                 deterministic_option|
                                 external_option|
                                 sqlDataMode|
                                 called_on_null_input|
                                 inherit_special_registers;
externalRoutineCharacteristics:  languageType|
                                 parameterStyleValue|
                                 parameterCcsidOption|
                                 deterministic_option|
                                 fencedOption|
                                 onNullInputAction|
                                 sqlDataMode|
                                 external_option|
                                 scratchPadOption|
                                 finalCallState|
                                 parallel|
                                 dbInfo|
                                 inherit_special_registers;

dbInfo:                         NO_DBINFO #noDbInfo
                                |DBINFO #hasDbInfo
                                 ;
parallel:                                   ALLOW_PARALLEL #allowParallel
                                            |DISALLOW_PARALLEL #disallowParallel
                                            ;
languageType:                              LANGUAGE_JAVA#languageJava
                                           |LANGUAGE_C#languageC
                                           |LANGUAGE_OLE#languageOle
                                           ;
scratchPadOption:                           scratchPadOptionValue scratchPadOptionInt;
scratchPadOptionValue:                      NO_SCRATCHPAD #noScratchPad
                                            |SCRATCHPAD #scratchPad
                                            ;
scratchPadOptionInt:                        NUMBER;
sqlDataMode:                                READS SQL DATA #readsSqlData
                                            |NO_SQL #noSql
                                            |CONTAINS SQL #containsSql
                                            ;
parameterStyleValue:                       (PARAMETER STYLE DB2GENERAL) #parameterStyleDB2General
                                           |(PARAMETER STYLE SQL) #parameterStyleSql
                                           ;
 onNullInputAction:                        CALLED ON NULL INPUT #calledOnNullInput
                                           |RETURNS_NULL_ON_NULL_INPUT #returnsNullOnInput
                                           ;
fencedOption:                              FENCED #fenced_opt
                                            |(FENCED THREADSAFE) #fencedThreadSafe
                                           |(FENCED NOT_THREADSAFE)#fencedNotThreadSafe
                                           |(NOT_FENCED)#notFenced
                                           |(NOT FENCED THREADSAFE)#notFencedThreadSafe
                                            ;
finalCallState:                             NO_FINAL_CALL #noFinalCall
                                            |FINAL_CALL  #finalCall
                                            ;
///////////////specific clause
specificClause:                    SPECIFIC_NAME specificName;
specificName:                       id_or_string;
parameterCcsidOption:            (PARAMETER CCSID ASCII)#ascii
                                 |(PARAMETER CCSID UNICODE)#unicode
                                 ;
//////////////method body
methodBody:                         methodBodyValueList;
methodBodyValueList:                methodBodyValue(COMMA methodBodyValue)*;
methodBodyValue:                    parameterName? parameterDataType asLocator?;
parameterDataType:                  data_type;
asLocator:                          AS_LOCATOR;

methodReturnClause:                 returnUsingCast
                                    |returnWithoutCast
                                    ;

returnWithoutCast:                  returnWithoutCastDataType asLocator?;
returnWithoutCastDataType:          data_type;

returnUsingCast:                    castToDataType CAST FROM castFromDataType asLocator?;
castFromDataType:                   data_type;
castToDataType:                     data_type;
backup_statement:              BACKUP ( DATABASE | DB ) database_alias user_option? partition_options? tablespace_options? incremental_delta? use_load_options? DEDUP_DEVICE? with_buffers_options? compress_options? priority_options?;

database_alias:                whole_name;
user_option:                   USER username (USING password)?;
username:                      id_or_string;
password:                      id_or_string;


partition_options:             (ON db_partition_num* EXCEPT? partition_number?);
db_partition_num:              (ALL_DBPARTITIONNUMS | DBPARTITIONNUM | DBPARTITIONNUMS);
partition_number:               LT_BRACKET numericConstant (TO numericConstant)? (COMMA numericConstant (TO numericConstant)?)* RT_BRACKET;


tablespace_options:            ((TABLESPACE LT_BRACKET (tablespace_name COMMA? )* RT_BRACKET) | NO_TABLESPACE) ONLINE?;
tablespace_name:               whole_name;


incremental_delta:              INCREMENTAL DELTA?;

use_load_options:               use_options| load_options| to_options;
load_options:                   LOAD library_name open_sessions options;
to_options:                     TO dir_pipe_name(COMMA dir_pipe_name);
dir_pipe_name:                  id_or_string;
library_name:                   id_or_string;
use_options:                    USE ((TSM | XBSA  open_sessions options) | (SNAPSHOT (LIBRARY library_name | SCRIPT script_name)?));
open_sessions:                  (OPEN num_sessions SESSIONS)?;
num_sessions:                   integerConstants;
options:                        (OPTIONS (options_string | file_name))?;
options_string:                 id_or_string;
file_name:                      SYMBOL3? id_or_string;
script_name:                    id_or_string;


with_buffers_options:           (WITH num_buffers BUFFERS)? (BUFFER buffer_size)? (PARALLELISM numericConstant)?;
num_buffers:                    numericConstant;
buffer_size:                    integerConstants;


compress_options:               (COMPRESS (COMPRLIB id_or_string)? EXCLUDE? (COMPROPTS id_or_string)?) | (ENCRYPT (ENCRLIB id_or_string)? EXCLUDE? (ENCROPTS id_or_string)?);

priority_options:               UTIL_IMPACT_PRIORITY priority? (EXCLUDE_LOGS| INCLUDE_LOGS)? WITHOUT_PROMPTING?;
priority:                       id_or_string;



//truncate_statement
truncate_statement:             TRUNCATE TABLE? table_name (DROP_STORAGE | REUSE_STORAGE) (IGNORE_DELETE_TRIGGERS | RESTRICT_WHEN_DELETE_TRIGGERS ) CONTINUE_IDENTITY? IMMIDIATE?;



//alter_sequence
alter_sequence:                 ALTER SEQUENCE sequence_name  (restart_with_option | increment_by_option | minvalue_option | maxvalue_option | cycle_option | cache_option | order_option )*;

restart_with_option:            RESTART has_with? numericConstant? subSelectClause?;


//resignal_statement
resignal_statement:                     sql_label? RESIGNAL sqlstate_options? ;
sqlstate_options:                       (SQLSTATE VALUE? sql_state_default_string_constant | sql_condition_name) signal_information?;
sql_condition_name:                     id_or_string;


//create_schema
create_schema:                          CREATE SCHEMA schemaName? authorizationOptions? dataCaptureOptions? enable_row_modification?;

schemaName:                             id_or_string;
authorizationOptions:                   AUTHORIZATION authorizationName;
dataCaptureOptions:                     DATA_CAPTURE dataCaptureValue? sql_clauses*;
authorizationName:                      id_or_string;
dataCaptureValue:                       NONE #none_opt
                                        |CHANGES #changes ;
enable_row_modification:                ENABLE_ROW_MODIFICATION_TRACKING;

//create_index
create_index:                           CREATE unique_key? INDEX index_name ON table_name LT_BRACKET column_expression_clause_list RT_BRACKET indexOptions*;
column_expression_clause_list:          column_name_expression (COMMA column_name_expression)*;
column_name_expression:                 businessTimeWithoutOverlaps |((columnName  | expression) ascDescType?) ;
businessTimeWithoutOverlaps:            BUSINESS_TIME_WITH_OVERLAPS;
ascDescType:                            ASC #ascOrder
                                        |DESC #descOrder
                                        |RANDOM #randomOrder
                                        ;

index_name:                             whole_name;
indexOptions:                           partitioned_opt
                                        |in_tablespace_name
                                        |specificationOnly
                                        |(INCLUDE LT_BRACKET includeColumnKeyExpressionClause RT_BRACKET)
                                        |pctFreeClause
                                        |level2PctFreeClause
                                        |minPctUsedClause
                                        |reverseScanOption
                                        |pageSplitOptions
                                        |collectOptions
                                        |compress_segment
                                        |nullKeysOptions
                                        |(cluster|extendUsingClause|xmlIndexSpecification);

nullKeysOptions:                        INCLUDE NULL KEYS  #includeNullKeys
                                        |EXCLUDE NULL KEYS #excludeNullKeys;

cluster:                                CLUSTER;
extendUsingClause:                      EXTEND_USING indexExtensionName (LT_BRACKET expressionList RT_BRACKET)?;
indexExtensionName:                     id_or_string;
xmlIndexSpecification:                  GENERATE KEY USING XMLPATTERN  id_or_string;

partitioned_opt:                        PARTITIONED #partitioned
                                        |NOT_PARTITIONED #notPartitioned;
specificationOnly:                      SPECIFICATION_ONLY;
includeColumnKeyExpressionClause:       INCLUDE LT_BRACKET includeColumnKeyExpressionList RT_BRACKET;
includeColumnKeyExpressionList:         column_name_expression (COMMA column_name_expression)*;
pctFreeClause:                          PCTFREE integerConstants;
level2PctFreeClause:                    LEVEL2PCTFREE integerConstants;
minPctUsedClause:                       MINPCTUSED integerConstants;
reverseScanOption:                      ALLOW_REVERSE_SCANS #allowReverseScans
                                        |DISALLOW_REVERSE_SCANS #disAllowReverseScans;

pageSplitOptions:                       PAGE_SPLIT_SYMMETRIC #symmetric
                                        |PAGE_SPLIT_HIGH #high
                                        |PAGE_SPLIT_LOW #low
                                        ;
collectOptions:                         COLLECT DETAILED STATISTICS #collectDetaileStatistics
                                        |COLLECT SAMPLED DETAILED STATISTICS #collectSampleDetailedStatistics
                                        |COLLECT UNSAMPLED DETAILED STATISTICS #collectUnSampleDetailedStatistics
                                        |COLLECT STATISTICS #collectStatistics;


//CREATE ALIAS
create_alias:                           CREATE has_or_replace? has_public? ALIAS alias_name FOR (table_alias | module_alias |sequence_alias);
table_alias:                            has_table? (whole_name);
has_public:                             PUBLIC_KEYWORD;
module_alias:                           MODULE (whole_name);
sequence_alias:                         SEQUENCE (whole_name);
alias_name:                             whole_name;
has_table:                              TABLE;

//create_sequence
create_sequence:                        CREATE has_or_replace? SEQUENCE sequence_name as_data_type? (start_with_option | increment_by_option | minvalue_option | maxvalue_option | cycle_option | cache_option cache_identity_length? | order_option )*;

sequence_name:                          whole_name;
as_data_type:                           AS (data_definition | distinct_type_name);
start_with_option:                      START_WITH start_integer;
start_integer:                          integerConstants;

increment_by_option:                    INCREMENT_BY increment_by_integer;
increment_by_integer:                   integerConstants;

minvalue_option:                        no_minvalue | minvalue ;
no_minvalue:                            NO_MINVALUE;
minvalue:                               MINVALUE minvalue_integer;
minvalue_integer:                       integerConstants;

maxvalue_option:                        no_maxvalue | maxvalue ;
no_maxvalue:                            NO_MAXVALUE;
maxvalue:                               MAXVALUE maxvalue_integer;
maxvalue_integer:                       integerConstants;


//alter_table
alter_table:                            ALTER TABLE table_name ( (ADDKEYWORD COLUMN? (column_definition | distribution_clause | unique_constraint | referential_constraint | check_constraint | RESTRICT ON DROP))
                                        | ADDKEYWORD MATERIALIZED? QUERY? materialized_query_definition
                                        | ALTER (FOREIGN KEY | CHECK) constraint_name constraint_alteration
                                        | ALTER COLUMN column_alteration
                                        | activateKey ROW_ACCESS_CONTROL
                                        | activateKey COLUMN_ACCESS_CONTROL
                                        | RENAME COLUMN source_column_name TO target_column_name
                                        | drop_constraint
                                        | DROP DISTRIBUTION
                                        | DROP materealized_key QUERY
                                        | ADDKEYWORD PERIOD period_definition
                                        | DROP PERIOD period_name
                                        | DATA_CAPTURE (NONE | CHANGES (INCLUDE_LONGVAR_COLUMNS)?)
                                        | ACTIVATE NOT_LOGGED_INITIALLY (WITH_EMPTY_TABLE)?
                                        | PCTFREE integerConstants
                                        | LOCKSIZE (ROW | BLOCKINSERT | TABLE)
                                        | APPEND (ON | OFF)
                                        | volatileOptions
                                        | compress_segment
                                        | activateKey VALUE COMPRESSION
                                        | LOG_INDEX_BUILD (nullKeyWord | onKeyWord | offKeyword)
                                        )*
                                        | ADDKEYWORD PARTITION add_partition
                                        | ATTACH PARTITION attach_partition
                                        | DETACH PARTITION partition_element_name INTO partition_table_name
                                        | ADDKEYWORD SECURITY_POLICY security_policy_name
                                        | DROP SECURITY_POLICY
                                        | ADDKEYWORD VERSIONING USE_HISTORY_TABLE history_table_name
                                        | DROP VERSIONING;

partition_table_name:                   whole_name;
volatileOptions:                        (VOLATILE | NOT VOLATILE) CARDINALITY?;

materealized_key:                       MATERIALIZED;
history_table_name:                     whole_name;
source_column_name:                     id_or_string;
target_column_name:                     id_or_string;
period_name:                            whole_name;
activateKey:                            ACTIVATE | DEACTIVATE;
drop_constraint:                        DROP (((primary_key | foreign_key |  unique_key | check_key | constraint) constraint_name? ) | COLUMN? column_name cascade_restrict);
foreign_key:                            FOREIGN KEY;
check_key:                              CHECK;
cascade_restrict:                       CASCADE | RESTRICT;


//add_partition
add_partition:                         partition_element_name? boundary_spec in_tablespace_name?;

//attach_partition
attach_partition:                      partition_element_name?  boundary_spec FROM table_name (indexes_option);
indexes_option:                        BUILD_MISSING_INDEXES | REQUIRE_MATCHING_INDEXES;

//constraint_alteration
constraint_alteration:                 (query_optimization_options | enforced_option)*;

//column_alteration
column_alteration:                      column_name ((SET  DATA TYPE  alteredDataType)
                                      | (SET set_is_not_null)
                                      | (SET inline_option)
                                      | (SET default_clause)
                                      | (SET EXPRESSION as_generated_expression)
                                      | (SET  (not_hidden|implicitly_hidden))
                                      | (SET  generation_alteration)
                                      | ((SET generation_alteration)? identity_alteration)
                                      | (SET  generation_attribute identity_option_list)
                                      | (SET generated_clause)
                                      | (DROP (defaultKeyword | generated_keyword |is_not_null ))
                                      | (ADDKEYWORD SCOPE table_name)
                                      | (COMPRESS (SYSTEM_DEFAULT | OFF ))
                                      | SECURED_WITH security_label_name
                                      | DROP_COLUMN_SECURTIY);


set_is_not_null:                      NOT NULL;
alteredDataType:                      built_in_data_type | distinct_type_name;
distinct_type_name:                   id_or_string;
generation_alteration:                generation_attribute;
generation_attribute:                 GENERATED (ALWAYS | BY_DEFAULT);


//identity_alteration
identity_alteration:                  SET? (INCREMENT_BY increment_identity_length | (NO_MINVALUE | MIN_VALUE numericConstant) cycle_option | cache_option integerConstants? | order_option | RESTART WITH  numericConstant);
generated_keyword:                    GENERATED;
cache_option:                         CACHE #cache_opt  | NO_CACHE #no_cache_opt;
order_option:                         ORDER #order_opt | NO_ORDER #no_order_opt;


//create_table_space
create_table_space:                    CREATE option_segment_table_space? TABLESPACE tablespace_name ( in_database_partition| page_size_segment| managed_by_segment |
                                       extent_size_segment |   prefetch_size_segment | bufferpool_segement |  overhead_segment | file_system_caching |
                                       transfer_rate_segment | data_tag_segment | dropped_table_rec_segment)+;

prefetch_size_segment:                 PREFETCHSIZE prefetch_size_option;
prefetch_size_option:                  automatic | integer ;
automatic:                             AUTOMATIC;
bufferpool_segement:                   BUFFERPOOL bufferpool_name;
bufferpool_name:                       id_or_string;
overhead_segment:                      OVERHEAD (integer | inherit | none);
inherit:                               INHERIT;
file_system_caching:                   NO_FILE_SYSTEM_CACHING #no_filesystem_caching | FILE_SYSTEM_CACHING #yes_file_system_caching;
transfer_rate_segment:                 TRANSFERRATE (integer | inherit | none);
data_tag_segment:                      DATA_TAG (integer | inherit | none);
dropped_table_rec_segment:             DROPPED_TABLE_RECOVERY (on | off);




in_database_partition:                 IN database_partition_group?  variable_name;
managed_by_segment:                    MANAGED BY (automatic_segment | system_segment | database_segment);
automatic_segment:                     AUTOMATIC STORAGE storage_group size_attributes;
system_segment:                        SYSTEM system_container_list;
database_segment:                      DATABASE database_container_list size_attributes;
size_attributes:                       autoresize_segment? initial_size_segment? increase_size_segment? max_size_segment? ;

autoresize_segment:                    AUTORESIZE yes_no_option;
extent_size_segment:                   EXTENTSIZE integer;

yes_no_option:                         yes | no ;
yes:                                   YES;
no:                                    NO;
on:                                    ON;
off:                                   OFF;
initial_size_segment:                  INITIALSIZE integer;

increase_size_segment:                  INCREASESIZE integer percent;
percent:                                 PERCENT;

max_size_segment:                        MAXSIZE (max_integer | none);
max_integer:                             NUMBER;
none:                                   NONE;

system_container:                        USING container_string_list on_db_partition_clause?;
container_string_list:                   LT_BRACKET characterStringConstant (COMMA characterStringConstant)* RT_BRACKET;
system_container_list:                  system_container+;
database_container_list:                database_containers+;
database_containers:                    USING container_clause_list on_db_partition_clause?;

container_clause_list:                   LT_BRACKET container_clause (COMMA container_clause)* RT_BRACKET;
container_clause:                       container_clause_option variable_name integer;
container_clause_option:                FILE #file | DEVICE #device;
storage_group:                         USING STOGROUP storage_group_name;
storage_group_name:                    id_or_string;
on_db_partition_clause:                 ON db_partition_option db_partition_list;
db_partition_option:                    DBPARTITIONNUM #db_partition_num_option | DBPARTITIONNUMS #db_partition_num_options;
db_partition_list:                      LT_BRACKET? db_partition_number (COMMA db_partition_number)* RT_BRACKET?;
db_partition_number:                     db_partition_number_1 (TO db_partition_number_2)? ;
db_partition_number_1:                  integer;
db_partition_number_2:                  integer;

page_size_segment:                     PAGESIZE integer;
integer:                               NUMBER (K| M |G)?;
database_partition_group:              DATABASE_PARTITION_GROUP;
option_segment_table_space:            large | regular | temp ;
large:                                 LARGE;
regular:                               REGULAR;
temp:                                  (system | user)? temporary;
temporary:                             TEMPORARY;
system:                                SYSTEM;
user:                                  USER;



//create_table
create_table:                          CREATE summary_table? TABLE if_not_exists?  name_segment  column_segment (partitioning_clause | tablespace_clause | organize_segment |   typed_table_option |  data_capture_segment | distribution_clause |  compress_segment| option_segment| security_policy_segment| table_option_segment)*;
if_not_exists:                         IF_NOT_EXISTS;
summary_table:                         SUMMARY;
name_segment:                          whole_name;
column_segment:                        (element_list  | materialized_query_definition | staging_table_definition | as_result_table | like_table) ;
element_list:                          LT_BRACKET? (column_definition | period_definition | unique_constraint | referential_constraint | check_constraint ) (COMMA (column_definition | period_definition | unique_constraint | referential_constraint | check_constraint))* RT_BRACKET?;
like_table:                            LIKE like_table_name copy_option?;
like_table_name:                       whole_name;
column_definition:                     column_name  data_definition column_option?;

column_option:                         (is_not_null | lob_option | scope_option | constraint | default_clause | generated_clause | inline_option | compress_system |
                                       has_secured_option | implicitly_option)+;
is_not_null:                           NOT NULL;
inline_option:                         INLINE_LENGTH inline_length;
inline_length:                         NUMS;
compress_system:                       COMPRESS_SYSTEM_DEFAULT;
implicitly_option:                     implicitly_hidden | not_hidden;
implicitly_hidden:                     IMPLICITLY_HIDDEN;
not_hidden:                            NOT_HIDDEN;
constraint:                            constraint_declaration? relationship_declaration constraint_attributes;
constraint_declaration:                CONSTRAINT constraint_name;
constraint_name:                       id_or_string;
relationship_declaration:              primary_key | unique_key | reference_clause | CHECK LT_BRACKET expression RT_BRACKET;
primary_key:                           PRIMARY KEY;
unique_key:                            UNIQUE;
lob_option:                            (logged_option  compact_option? )| (logged_option?  compact_option)  ;
logged_option:                         LOGGED #logged |
                                       NOT_LOGGED #not_logged;
compact_option:                        COMPACT #compact |
                                       NOT_COMPACT #not_compact;
scope_option:                          SCOPE scope_name;
scope_name:                            whole_name;
has_secured_option:                    has_secured_column? SECURED_WITH security_label_name;
has_secured_column:                    COLUMN;
security_label_name:                   whole_name;
default_clause:                        has_with? DEFAULT default_value?;
has_with:                              WITH;
generated_clause:                      GENERATED generated_options? (identity_option_list | as_row_change | as_generated_expression | as_row_transaction | as_row_transaction_id );
generated_options:                     ALWAYS #is_always |
                                       BY_DEFAULT #by_default ;
as_row_change:                         FOR_EACH_ROW_ON_UPDATE_AS_ROW_CHANGE_TIMESTAMP;
as_generated_expression:               AS LT_BRACKET expression RT_BRACKET;
as_row_transaction:                    AS ROW BEGIN #begin_row |AS ROW END #end_row;
as_row_transaction_id:                 AS TRANSACTION_START_ID;
identity_option_list:                  as_identity LT_BRACKET (identity_options COMMA?)+ RT_BRACKET;
as_identity:                           AS_IDENTITY;
identity_options:                      START_WITH start_identity_length #start_with |
                                       INCREMENT_BY increment_identity_length #increment_by |
                                       NO_MINVALUE #no_minvalue_opt |
                                       MINVALUE min_identity_length #minvalue_opt |
                                       NO_MAXVALUE #no_maxvalue_opt|
                                       MAXVALUE max_identity_length #maxvalue_opt |
                                       CYCLE #cycle |
                                       NO_CYCLE #no_cycle |
                                       NO_CACHE #no_cache |
                                       CACHE cache_identity_length #cache |
                                       NO_ORDER #no_order |
                                       ORDER #order ;
start_identity_length:                 positiveIntegerConstant ;
increment_identity_length:             positiveIntegerConstant ;
min_identity_length:                   positiveIntegerConstant ;
max_identity_length:                   positiveIntegerConstant ;
cache_identity_length:                 integer ;



//Default-values

default_value:                              keyWORD_option  | register_option| default_constant | cast_option ;
register_option:                            date_time_special_registers #datetime_special_register| user_special_registers #user_special_register;
keyWORD_option:                             EMPTY_BLOB #empty_blob |
                                            EMPTY_CLOB #empty_clob |
                                            EMPTY_DBCLOB #empty_dbclob |
                                            EMPTY_NCLOB #empty_nclob |
                                            NULL #has_default_null |
                                            CURRENT_MEMBER #current_member |
                                            CURRENT_SCHEMA #current_schema ;

cast_option:                                castFunctionName LT_BRACKET cast_OptionValues RT_BRACKET;
cast_OptionValues:                          has_cast_current_schema  # has_current_schema_cast
                                            | date_time_special_registers #datetime_special_registers_cast
                                            | user_special_registers #user_special_register_cast
                                            | cast_constants #cast_constant ;
castFunctionName:                           id_or_string;
has_cast_current_schema:                    CURRENT_SCHEMA;
date_time_special_registers:                CURRENT_TIME #current_time | CURRENT_TIMESTAMP #current_timestamp | CURRENT_DATE #current_date;
user_special_registers:                     CURRENT_USER #current_user | SESSION_USER #session_user | SYSTEM_USER #system_user ;
cast_constants:                             characterStringConstant;
default_constant:                           characterStringConstant | decimalConstants ;



//ReferenceClause

reference_clause:                           REFERENCES reference_name column_name_list? rule_clause constraint_attributes;
reference_name:                             whole_name;

rule_clause:                                on_delete? on_update?;
on_delete:                                  ON DELETE (no_action|restrict_key |cascade_key | set_null);

no_action:                                  NO ACTION;
restrict_key:                               RESTRICT;
cascade_key:                                CASCADE;
set_null:                                   SET NULL;
on_update:                                  ON UPDATE (restrict_key | no_action);

//TpyedTableOptions

typed_table_option:                     OF typed_name_segment ( (HIERARCHY hierarchy_table_name) | under_clause )? typed_element_list? ;
typed_name_segment:                     whole_name;
hierarchy_table_name:                   id_or_string;
under_clause:                           UNDER under_supertable_segment INHERIT_SELECT_PRIVILEGES;
under_supertable_segment:               whole_name;


typed_element_list:                     LT_BRACKET typed_element (COMMA typed_element)* RT_BRACKET;
typed_element:                          (oid_column_definition | with_option | unique_constraint | check_constraint ) ;
oid_column_definition:                  REF_IS oid_column_name USER_GENERATED;
oid_column_name:                        id_or_string;
with_option:                            with_column_name WITH_OPTIONS column_option;
with_column_name:                       id_or_string;

//CheckConstraint

check_constraint:                           (CONSTRAINT check_constraint_name)? CHECK LT_BRACKET check_condition RT_BRACKET constraint_attributes;
check_constraint_name:                      id_or_string;

//ReferentialConstraint

referential_constraint:                     (CONSTRAINT referential_constraint_name)? FOREIGN KEY  column_name_list referential_reference_clause;
referential_constraint_name:                id_or_string;
referential_reference_clause:               reference_clause;


//UniqueConstraint
unique_constraint:                          (CONSTRAINT unique_constraint_name)? unique_key_relationship LT_BRACKET column_name_list unique_options? RT_BRACKET constraint_attributes?;
unique_constraint_name:                     id_or_string;
unique_key_relationship:                    is_unique_key | is_primary_key;
is_unique_key:                              UNIQUE;
is_primary_key:                             PRIMARY KEY;
unique_options:                             (COMMA BUSINESS_TIME_WITHOUT_OVERLAPS);

//PeriodDefinition
period_definition:                          PERIOD period_time_option LT_BRACKET begin_column_name COMMA end_column_name RT_BRACKET;
period_time_option:                         SYSTEM_TIME #system_time |
                                            BUSINESS_TIME #business_time ;
begin_column_name:                          id_or_string;
end_column_name:                            id_or_string;


//ConstraintAttributes
constraint_attributes:                      (enforced_option query_optimization_options?) | (enforced_option? query_optimization_options);

enforced_option:                            ENFORCED #enforced |
                                            NOT_ENFORCED #not_enforced |
                                            NOT_ENFORCED TRUSTED #not_enforced_trusted |
                                            NOT_ENFORCED NOT_TRUSTED #not_enforced_not_trusted;

query_optimization_options:                 enable_query | disable_query;
enable_query:                               ENABLE QUERY OPTIMIZATION;
disable_query:                              DISABLE QUERY OPTIMIZATION;
//CopyOption

copy_option:                              ((has_copy_including | has_copy_excluding ) has_copy_column? DEFAULTS) (has_copy_ex_identity | has_copy_in_identity)*;
has_copy_including:                       INCLUDING;
has_copy_excluding:                       EXCLUDING;
has_copy_column:                          COLUMN;
has_copy_ex_identity:                     EXCLUDING_IDENTITY has_column_attributes?;
has_column_attributes:                    COLUMN_ATTRIBUTES;
has_copy_in_identity:                     INCLUDING_IDENTITY has_column_attributes?;


//OrganizeSegemnt

organize_segment:                           ORGANIZE BY (by_row | by_column |  (row_using? (dimension_clause |KEY_SEQUENCE sequence_key_spec | by_insert_time)) );
by_row:                                     ROW;
by_column:                                  COLUMN;
row_using:                                  ROW_USING;
by_insert_time:                             INSERT_TIME;


//DimensionClause
dimension_clause:                           has_dimension? LT_BRACKET dimension_column_list RT_BRACKET;
has_dimension:                              DIMENSIONS;
dimension_column_list:                      (dimension_column_name | LT_BRACKET dimension_column_sub_list RT_BRACKET ) (COMMA (dimension_column_name | LT_BRACKET dimension_column_sub_list RT_BRACKET ))*;
dimension_column_sub_list:                  dimension_column_sub_name (COMMA dimension_column_sub_name)*;
dimension_column_sub_name:                  id_or_string;
dimension_column_name:                      id_or_string;

//SequenceKeySpec
sequence_key_spec:                          (LT_BRACKET sequence_key_column_list  RT_BRACKET) (overflow_option)? (PCTFREE pct_free_integer)?;
sequence_key_column_list:                   (sequence_column_ref COMMA?)+;
sequence_column_ref:                        sequence_column_name   sequence_start_option? ENDING at_option sequence_constant;
sequence_column_name:                       id_or_string;
sequence_start_option:                      STARTING has_from? sequence_starting_constant ;
sequence_starting_constant:                 numericConstant;
at_option:                                  AT;
sequence_constant:                          NUMS;
overflow_option:                            ALLOW_OVERFLOW #allow_overflow |
                                            DISALLOW_OVERFLOW #disallow_overflow ;
pct_free_integer:                           numericConstant;




//DataCapture_segment

data_capture_segment:                       DATA_CAPTURE capture_options;
capture_options:                            by_none | by_changes ;
by_none:                                    NONE;
by_changes:                                 CHANGES;

//CompressSegment

compress_segment:                           compress_yes  | compress_no;
compress_yes:                               COMPRESS YES has_adaptive? has_static?;
has_adaptive:                               ADAPTIVE;
compress_no:                                COMPRESS NO;
has_static:                                 STATIC;

//OptionSegemnt

option_segment:                             VALUE COMPRESSION #value_compression |
                                            WITH_RESTRICT_ON_DROP #with_restrict_on_drop |
                                            NOT_LOGGED_INITIALLY #not_logged_initially |
                                            CCSID_ASCII #ccsid_ascii |
                                            CCSID_UNICODE #ccsid_unicode ;

//SecurityPolicy
security_policy_segment:                    SECURITY_POLICY security_policy_name;
security_policy_name:                       id_or_string;

//TableOptionSegemnt
table_option_segment:                       OPTIONS LT_BRACKET table_option_ref RT_BRACKET;
table_option_ref:                           (REMOTE_SERVER remote_server_name  COMMA?
                                            REMOTE_SCHEMA  remote_schema_name  COMMA?
                                            REMOTE_TABNAME  remote_tab_name    COMMA?)*;
remote_server_name:                         id_or_string;
remote_schema_name:                         id_or_string;
remote_tab_name:                            id_or_string;


//CheckCondition

check_condition:                          function_dependency | searchCondition ;
function_dependency:                      LT_BRACKET? function_one_column_name  RT_BRACKET? DETERMINED_BY LT_BRACKET? function_second_column_name  RT_BRACKET? ;
function_one_column_name:                 name_one;
name_one:                                 id_or_string (COMMA id_or_string)* ;
function_second_column_name:              name_two;
name_two:                                 id_or_string (COMMA id_or_string)*;

//TableSpaceClause
tablespace_clause:                         ( (tablespace_option)|  (INDEX IN  index_in_name)|  (LONG_IN long_in_name_list) )+;
tablespace_option:                          (IN  tablespace_name_list  cycle_option?);
tablespace_name_list:                       tablespace_name (  COMMA tablespace_name )*;
long_in_name_list:                          long_in_name (COMMA long_in_name)*;
cycle_option:                               CYCLE #tablespace_cycle | NO_CYCLE #tablespace_no_cycle ;
index_in_name:                              whole_name;
long_in_name:                               whole_name;


//DistributionClause
distribution_clause:                        DISTRIBUTE_BY (distribution_column_segment | has_replication | has_random);
distribution_column_segment:                has_hash? (LT_BRACKET column_name_list RT_BRACKET);
has_hash:                                   HASH;
has_replication:                            REPLICATION;
has_random:                                 RANDOM;

//Partitioning_clause

partitioning_clause:                        PARTITION_BY has_range? range_partition_spec size_options?;
has_range:                                  RANGE;
range_partition_spec:                       (LT_BRACKET partition_expression_list  RT_BRACKET) (LT_BRACKET partition_element_list RT_BRACKET);
partition_expression_list:                  partition_expression (COMMA partition_expression)*;
partition_expression:                       partition_column_name  partition_null_options?;
partition_column_name:                      id_or_string ;
partition_null_options:                     NULLS_LAST #null_last |
                                            NULLS_FIRST #nulls_first;
size_options:                               SIZE (EVERY integerConstants G)?;

partition_element_list:                     partition_element (COMMA partition_element)* ;
partition_element:                          ((PARTITION  partition_element_name )? boundary_spec partition_tablespace_option) |
                                            (boundary_spec has_every LT_BRACKET?  partition_constant duration? RT_BRACKET?);
has_every:                                  EVERY;
partition_element_name:                     id_or_string;
partition_constant:                         characterStringConstant;
boundary_spec:                              starting_boundary_clause?  ending_boundary_clause?;
starting_boundary_clause:                   STARTING has_from?  min_max_values;

ending_boundary_clause:                     ENDING has_at? min_max_values;
has_at:                                     AT;

min_max_values:                             LT_BRACKET?  constant_clause_list  RT_BRACKET? clusive_options? ;
constant_clause_list:                       constant_clause (COMMA constant_clause)* ;
constant_clause:                            (minMax_constant | has_minValue | has_maxValue );
minMax_constant:                            characterStringConstant;
has_minValue:                               MINVALUE;
has_maxValue:                               MAXVALUE;
clusive_options:                            INCLUSIVE #has_inclusive | EXCLUSIVE #has_exclusive ;

//PartitionTableSpaceOption

partition_tablespace_option:               ((IN   in_tablespace_name ) | (INDEX IN  index_in_tablespace_name ) | (LONG_IN   long_in_tablespace_name ) )*;
in_tablespace_name:                       whole_name;
index_in_tablespace_name:                 whole_name;
long_in_tablespace_name:                  whole_name;
//MaterializedQueryDefinition

materialized_query_definition:            column_name_list? AS (LT_BRACKET  fullSelect RT_BRACKET) DATA INITIALLY DEFERRED refreshable_table_option;


//RefreshableTableOption

refreshable_table_option:                 REFRESH (has_deferred | has_immediate)  (refreshable_maintained_option | refreshable_query_optimization)*;
has_deferred:                             DEFERRED;
has_immediate:                            IMMEDIATE;
refreshable_query_optimization:           ENABLE QUERY OPTIMIZATION #refreshable_enable_query |
                                          DISABLE QUERY OPTIMIZATION #refreshable_disable_query;
refreshable_maintained_option:            MAINTAINED BY SYSTEM #refreshable_maintained_by_system |
                                          (MAINTAINED BY USER) #refreshable_maintained_by_user |
                                          (MAINTAINED BY REPLICATION) #refreshable_maintained_by_replication |
                                          (MAINTAINED BY FEDERATED TOOL) #refreshable_maintained_by_federated_tool ;


//staging_table_definition
staging_table_definition:                 (LT_BRACKET column_name_list RT_BRACKET)? FOR staging_table_segment PROPAGATE_IMMEDIATE;
staging_table_segment:                    whole_name;



//AsResultTable

as_result_table:                         column_name_list? AS LT_BRACKET fullSelect RT_BRACKET as_table_data_option  copy_option?;
as_table_data_option:                    WITH_NO_DATA #as_table_with_no_data |
                                         WITH_DATA #as_table_with_data ;


//create_view
create_or_replace_view:             CREATE has_or_replace? VIEW view_name view_clause? AS (cte (COMMA cte)*)? fullSelect (WITH checkOptions)? rowMovement? SEMI_COLON?;
view_name:                          whole_name;
view_clause:                        column_name_list | ofTypeName;
ofTypeName:                         OF typeName (rootViewDefinition|subViewDefinition);

rootViewDefinition:     modeDB2Sql LT_BRACKET oidColumn (COMMA withOptionsClause)? RT_BRACKET;
oidColumn:              referenced oidColumnName userGeneratedKeyWord uncheckedKeyWord?;
referenced:             REF IS;
oidColumnName:          id_or_string;
userGeneratedKeyWord:   USER GENERATED;
uncheckedKeyWord:       UNCHECKED;


withOptionsClause:      optionsClauseValue(COMMA optionsClauseValue)*;
optionsClauseValue:     columnName WITH OPTIONS scopeOptions(COMMA scopeOptions)*;
scopeOptions:           readOnly|(SCOPE typedTableViewName);
readOnly:               READ_ONLY;
typedTableViewName:     id_or_string;

subViewDefinition:      modeDB2Sql underClause (LT_BRACKET withOptionsClause RT_BRACKET)? extend?;
extend:                 EXTEND;

underClause:            UNDER superViewName inheritSelectPrivileges?;
superViewName:          whole_name;
inheritSelectPrivileges:INHERIT_SELECT_PRIVILEGES;

checkOptions:              (cascadeCheckOption|localCheckOption|checkOption);
cascadeCheckOption:        CASCADED_CHECK_OPTION;
localCheckOption:          LOCAL_CHECK_OPTION;
checkOption:               CHECK_OPTION;



rowMovement:                withRowMovement|noRowMovement;
withRowMovement:            WITH_ROW_MOVEMENT;
noRowMovement:              WITH_NO_ROW_MOVEMENT;





//Triggers
create_or_replace_trigger:          CREATE has_or_replace? TRIGGER trigger_name trigger_position_option trigger_event_segment ON? on_name_segment referencing_segment? for_each_segment has_mode_db2sql? secured_segment? triggered_action_segment;
trigger_name:                       whole_name;
trigger_position_option:            (nocascade_before_keyword| before_keyword | after_keyword | instead_of_keyword) ;
nocascade_before_keyword:           NO_CASCADE_BEFORE;
before_keyword:                     BEFORE;
after_keyword:                      AFTER;
instead_of_keyword:                 INSTEAD_OF;

trigger_event_segment:              trigger_event_option (OR trigger_event_option)*;
trigger_event_option:               insert_keyword | delete_keyword | update_segment ;
insert_keyword:                     INSERT;
delete_keyword:                     DELETE;
update_segment:                     update_keyword (OF column_name_list)?;
update_keyword:                     UPDATE;


on_name_segment:                    whole_name;
referencing_segment:                referencing_keyword referencing_option (referencing_option)*;
referencing_keyword:                REFERENCING;
referencing_option:                 referencing_period_option has_as? referencing_name;

referencing_period_option:          old_keyword | new_keyword | old_table_keyword | new_table_keyword;

old_keyword:                        OLD;
new_keyword:                        NEW;
old_table_keyword:                  OLD_TABLE;
new_table_keyword:                  NEW_TABLE;
referencing_name:                   whole_name;

for_each_segment:                   for_each_row_keyword | for_each_statement_keyword ;
for_each_row_keyword:               FOR_EACH_ROW;
for_each_statement_keyword:         FOR_EACH_STATEMENT;

has_mode_db2sql:                    MODE_DB2SQL;
secured_segment:                    secured_keyword | not_secured_keyword ;
secured_keyword:                    SECURED;
not_secured_keyword:                NOT_SECURED;


triggered_action_segment:           when_segment? sql_label?  sql_clauses;
when_segment:                       whenKeyWord LT_BRACKET? searchCondition RT_BRACKET?  ;

//FUNCTION
create_or_replace_function:         CREATE has_or_replace? FUNCTION function_name (LT_BRACKET procedure_parameter_list? RT_BRACKET)? return_declaration scalarOption? function_body;
has_or_replace:                     OR_REPLACE;
function_name:                      whole_name;

// parameter declaration
parameter_type:                     IN #parameter_type_in | OUT #parameter_type_out | INOUT #parameter_type_inout ;
refTypeNameKeyword:                 REF  LT_BRACKET  typeName  RT_BRACKET;
typeName:                           whole_name;


//return  declarartion
return_declaration:                 RETURNS (procedure_parameter_data_type | return_row_declaration | custom_table_declaration);
custom_table_declaration:           TABLE  (columnListKeyword | rowTypeName | elementKeyword | anchored_variable_data_type) ;
columnListKeyword:                  (LT_BRACKET columnList  RT_BRACKET);
columnList:                         columnDeclaration  (COMMA  columnDeclaration)*;
columnDeclaration:                  columnName  columnDataType;
columnName:                         whole_name;
elementKeyword:                     ELEMENT_OF arrayTypeName;
arrayTypeName:                      whole_name;
columnDataType:                     data_definition;
return_row_declaration:             ROW columnListKeyword;




//scalar_option
scalarOption:                           ((languageSql | parameter_option | specific | deterministic_option |
                                            external_option  | sql_option  | called_on_null_input  |static_dispatch | returns_on_null_intput
                                         | inherit_special_registers | inherit_isolation_option | secured_option | predicate_segement ))+;

static_dispatch:                        STATIC DISPATCH;
languageSql:                            LANGUAGE language_name;
specific:                               SPECIFIC whole_name;
predicate_segement:                     PREDICATES  LT_BRACKET searchCondition RT_BRACKET ;

external_option:                        externalActionKeyword | noExternalActionKeyword;
externalActionKeyword:                  EXTERNAL ACTION;
noExternalActionKeyword:                NO EXTERNAL ACTION;
parameter_option:                       PARAMETER CCSID ( asciiKeyword | unicodeKeyword);
asciiKeyword:                           ASCII;
unicodeKeyword:                         UNICODE;

inherit_isolation_option:               inheritIsolationWithLockKeyword | inheritIsolationWithoutLockKeyword;
inheritIsolationWithLockKeyword:        INHERIT_ISOLATION_LEVEL_WITH_LOCK_REQUEST;
inheritIsolationWithoutLockKeyword:     INHERIT_ISOLATION_LEVEL_WITHOUT_LOCK_REQUEST;

secured_option:                         securedKeyword | notSecuredKeyword;
securedKeyword:                         SECURED;
notSecuredKeyword:                      NOT_SECURED;

//function_body
function_body:                          sql_clauses;




//create_or_replace_procedure

create_or_replace_procedure:            CREATE has_or_replace? PROCEDURE procedure_name (LT_BRACKET procedure_parameter_list? RT_BRACKET)? option_list? (sql_clauses | SEMI_COLON);
procedure_name:                         whole_name;
procedure_parameter_list:               procedure_parameter (COMMA procedure_parameter)*;
procedure_parameter:                    parameter_type? procedure_parameter_name procedure_parameter_data_type procedure_parameter_default_clause? AS_LOCATOR?;
procedure_parameter_name:               id_or_string;
option_list:                             ( external_name_option | language | specific | dynamic_result_option | sql_option | deterministic_option |
                                         called_on_null_input | commit_on_return_option | inherit_special_registers |
                                         savepoint_option |  external_option | parameter_option | parameter_style_option |
                                          thread_safety | fenced | no_dbinfo)+ ;
external_name_option:                   EXTERNAL_NAME whole_name;
language:                               LANGUAGE language_name;
language_name:                          SQL #sql | PLPGSQL #plpgsql | C #c;
dynamic_result_option:                  DYNAMIC RESULT SETS dynamic_result_size;
dynamic_result_size:                    integerConstants;
sql_option:                             MODIFIES SQL DATA #modifies_sql_data | CONTAINS SQL #contains_sql | READS SQL DATA #reads_sql_data;
deterministic_option:                   NOT DETERMINISTIC #not_deterministic | DETERMINISTIC #deterministic;
called_on_null_input:                   CALLED ON NULL INPUT;
returns_on_null_intput:                 RETURNS ON NULL INPUT;
commit_on_return_option:                COMMIT ON RETURN NO #commit_on_return_no | COMMIT ON RETURN YES #commit_on_return_yes | AUTONOMOUS #autonomous ;
inherit_special_registers:              INHERIT SPECIAL REGISTERS;
parameter_style_option:                 PARAMETER STYLE parameter_style_name;
parameter_style_name:                   whole_name;
thread_safety:                          THREADSAFE | NOT_THREADSAFE;
fenced:                                 FENCED;
no_dbinfo:                              NO_DBINFO;
savepoint_option:                       OLD_SAVEPOINT_LEVEL #old_savepoint_level | NEW_SAVEPOINT_LEVEL #new_savepoint_level;

procedure_parameter_default_clause:     DEFAULT ( has_null | parameter_default_variable | (LT_BRACKET expression RT_BRACKET ));
has_null:                               NULL;
parameter_default_variable:             id_or_string;




for_statement:                    loop_label? FOR (id_or_string AS)? (cursor_name cursor_value_constant)? (LT_BRACKET? subSelectClause RT_BRACKET?) DO? sql_clauses* END_FOR? loop_label? ;



searched_delete_statement:        DELETE FROM ( delete_naming | cte? fullSelect ) period_clause? correlation_clause? include_columns? assignment_clause? whereClause? orderByClause? offsetClause? fetchClause?  withKeyWord? values_with_option? update_clause_option? ;
delete_naming:                    (has_only? LT_BRACKET? whole_name RT_BRACKET? );
has_only:                          ONLY;


//GET DIAGNOSTICS
get_diagnostics_statement:        GET_DIAGNOSTICS ( statement_information | condition_information ) ;
statement_information:            variable_name  EQUAL (db2_return_status | db2_sql_nesting_level | row_count) ;
condition_information:            EXCEPTION_1 condition_related_list;
condition_related_list:           condition_related (COMMA condition_related)*;
condition_related:                variable_name EQUAL ( db2_token_string | message_text );
db2_token_string:                 DB2_TOKEN_STRING;
message_text:                     MESSAGE_TEXT;
variable_name:                    characterStringConstant | id_or_string;
db2_return_status:                DB2_RETURN_STATUS;
db2_sql_nesting_level:            DB2_SQL_NESTING_LEVEL;
row_count:                        ROW_COUNT;


//LEAVE
leave_statement:                  LEAVE leave_label ;
leave_label:                      COLON? id_or_string COLON?;


merge_into_statement:             MERGE_INTO (table_name | view_name | LT_BRACKET (cte? fullSelect) RT_BRACKET)  correlation_clause? include_columns?
                                  USING (table_reference | source_values)* ON searchCondition  (WHEN matching_condition THEN (modification_operation | signal_statement ) )* ELSE_IGNORE? not_atomic_continue_on_sql_exception? (QUERYNO integerConstants)? ;
matching_condition:               NOT? MATCHED (AND searchCondition)?;
source_values:                    LT_BRACKET?  VALUES?  (values_single_row | subSelectClause) RT_BRACKET? correlation_clause? (LT_BRACKET column_name_list RT_BRACKET)?;
values_single_row:                values_experession_segment (forKeyWord (hostVariable | integerConstants ) rows)?;
modification_operation:           (update_operation | delete_operation | insert_operation);
update_operation:                 UPDATE SET assignment_clause;
delete_operation:                 DELETE;
insert_operation:                 INSERT (LT_BRACKET column_name_list RT_BRACKET)* VALUES values_experession_segment ;


not_atomic_continue_on_sql_exception:    NOT_ATOMIC_CONTINUE_ON_SQLEXCEPTION;

signal_statement:                  SIGNAL ( sql_state_flow | condition_name ) signal_information? ;
sql_state_flow:                    SQLSTATE has_value? sql_string_constant;
has_value:                         VALUE;
sql_string_constant:               characterStringConstant;
signal_information:                (SET_MESSAGE_TEXT EQUAL diagnostic_string_expression) | (LT_BRACKET diagnostic_string_expression RT_BRACKET) ;
diagnostic_string_expression:      expression;



call_statement:                     CALL whole_name argument_section? ;
argument_section:                   argument_list | using_descriptor_section;
using_descriptor_section:           USING DESCRIPTOR input_descriptor_name;
argument_list:                      LT_BRACKET call_argument (COMMA call_argument)* RT_BRACKET;
call_argument:                      expression | (values_default| values_null) | transition_table_segment;
transition_table_segment:           TABLE whole_name;



iterate_statement:                   ITERATE iterate_label ;
iterate_label:                       COLON? id_or_string COLON?;



//FETCH
fetch_statement:                      FETCH_KEY NEXT? has_from? cursor_name INTO (fetch_variable_name_list | using_descriptor_section) ;
has_from:                             FROM;
fetch_variable_name_list:             fetch_variable_name (COMMA fetch_variable_name)*;
fetch_variable_name:                  id_or_string;



//WHILE
while_statement:                        while_label? WHILE searchCondition DO sql_clauses* END_WHILE end_while_label?;
while_label:                            COLON? id_or_string COLON?;
end_while_label:                        id_or_string;


//CLOSE
close_statement:                        CLOSE close_name ;
close_name:                             COLON? id_or_string COLON?;


//OPEN
open_statement:                         OPEN open_cursor_section open_option? ;
open_cursor_section:                    cursor_name (LT_BRACKET expression (COMMA expression)* RT_BRACKET)?;
open_option:                            using_descriptor_section | USING expression;

//Loop
loop_statement:                         loop_label LOOP sql_clauses* (END LOOP loop_label?);
loop_label:                             id_or_string COLON?;


//REPEAT
repeat_statement:                      repeat_label? REPEAT sql_clauses*  (UNTIL searchCondition ) END_REPEAT  repeat_label;
repeat_label:                          COLON? id_or_string COLON?;


//EXECUTE STATEMENT
execute_statement:                      EXECUTE execute_statement_name into_execute_segment? using_execute_segment? for_segment? ;
execute_immediate_statement:            EXECUTE IMMEDIATE expression ;
execute_statement_name:                 COLON? id_or_string COLON?;
into_execute_segment:                   INTO (assignment_target_list  | (DESCRIPTOR result_descriptor_name) );
result_descriptor_name:                 COLON? id_or_string COLON?;
using_execute_segment:                  USING ( (input_host_variable_list )  | (DESCRIPTOR input_descriptor_name)  );
input_host_variable_list:               COLON? id_or_string (COMMA id_or_string)* COLON? ;
input_host_variable:                    COLON? (characterStringConstant | numericConstant) COLON?;
for_segment:                            FOR for_row_constant ROWS;
for_row_constant:                       id_or_string;


//INSERT
insert_statement:                       INSERT INTO  insert_naming insert_column_list? include_columns? (cte|fullSelect | (VALUES insert_values_list))?  (WITH values_with_option)? ;
insert_naming:                          (whole_name | (LT_BRACKET cte RT_BRACKET)) ;
insert_values_list:                     values_experession_segment (COMMA values_experession_segment)*;
values_experession_segment:             values_expression_segment_object_list | values_expression_segment_object | row_expression ;
values_expression_segment_object_list:  LT_BRACKET values_expression_segment_object (COMMA values_expression_segment_object)* RT_BRACKET ;
values_expression_segment_object:       values_null |  values_default |  colon_name  | values_expression | whole_name | hostVariable ;
values_null:                            NULL;
values_default:                         DEFAULT;
values_expression:                      expression;
colon_name:                             (has_colon id_or_string);
row_expression:                         expression;

has_colon:                              COLON;
insert_column_list:                     column_name_list;


prepare_statement:                    PREPARE prepare_statement_name prepare_output_option? prepare_input_option?  FROM (prepare_host_variable_name | prepare_expression);
prepare_statement_name:               COLON? id_or_string COLON?;
prepare_input_option:                 INTO input_descriptor_name using_options?;
prepare_output_option:                OUTPUT INTO output_descriptor_name;
prepare_host_variable_name:           COLON? id_or_string COLON?;
output_descriptor_name:               COLON? id_or_string COLON?;
prepare_expression:                   expression;
input_descriptor_name:                COLON? id_or_string COLON?;
using_options:                        USING ( NAMES | LABELS | ANY | BOTH );

goto_statement:                       GOTO goto_label ;
goto_label:                           COLON? id_or_string COLON?;

rollback_statement:                    ROLLBACK rollback_work? to_savepoint_option? ;
to_savepoint_option:                   TO_SAVEPOINT savepoint_name;
rollback_work:                         WORK;

release_savepoint_statement:           RELEASE has_release_to? SAVEPOINT_KEY savepoint_name ;
has_release_to:                        TO;


//COMMIT STATEMENT
commit_statement:                     COMMIT commit_work? ;
commit_work:                          WORK;

//RETURN
return_statement:                     RETURN (has_null | expression | cte |fullSelect)* ;

savepoint_statement:                  SAVEPOINT_KEY savepoint_name savepoint_unique? ON_ROLLBACK_RETAIN_CURSORS on_rollback_retain_locks? ;
savepoint_name:                       COLON? id_or_string COLON?;
savepoint_unique:                     UNIQUE;
on_rollback_retain_locks:             ON_ROLLBACK_RETAIN_LOCKS;


//IF_ELSE
if_else_body:                           if_label_name? if_clause (else_if_clause | elseif_clause)* else_clause? end_if;
if_clause:                              IF (searchCondition|UPDATING|INSERTING|DELETING)  THEN (sql_clauses)* ;
end_if:                                 END_IF;
else_if_clause:                         ELSE if_clause;
else_clause:                            ELSE  (sql_clauses)*;
elseif_clause:                          ELSEIF (searchCondition|UPDATING|INSERTING|DELETING) THEN (sql_clauses)*;
if_label_name:                          id_or_string COLON;


//COMMON TABLE EXPRESSION
cte:                                    (withKeyWord? table_name (LT_BRACKET column_name(COMMA column_name)* RT_BRACKET)? AS LT_BRACKET  fullSelect  RT_BRACKET) fullSelect?;
withKeyWord:                            WITH;
table_name:                             whole_name;

//SELECT INTO
select_into_statement:                    cte? SELECT select_into_clause INTO? temporary_table? assignment_target_list fromClause on_clause? sub_select_clause? ;
array_values:                             array_variable_name SQ_LT_BRACKET array_index SQ_RT_BRACKET;
select_into_clause:                       select_statement;
assignment_target_list:                   COLON? assignment_target_variable_name (COMMA  COLON? assignment_target_variable_name)*;
assignment_target_variable_name:          id_or_string | array_values;
sub_select_clause:                       (whereClause| groupByClause|  havingClause | orderByClause | offsetClause | fetchClause | forClause | isolationClause)+;
column_name_list:                         LT_BRACKET? column_name (COMMA column_name)* RT_BRACKET?;
column_name:                              SELECT | id_or_string;
temporary_table:                          TEMPORARY TABLE;


forClause:                              for_update_clause | for_read_only ;
for_update_clause:                      FOR_UPDATE of_column_names?;
of_column_names:                        OF column_name_list;
for_read_only:                          FOR_READ_ONLY ;


//BEGIN END
begin_end:                              sql_label? BEGIN has_not? has_atomic? sql_clauses*  END end_sql_label?;
has_not:                                NOT;
has_atomic:                             ATOMIC;



//DECLARE
declare:                                (handler_declaration | return_codes_declaration | declare_variable |  condition_declaration |   statement_declaration    | cursor_declaration_query | declare_global_temporary) ;
declare_variable:                       DECLARE declare_name_list (declare_result_set | (procedure_parameter_data_type declare_option?)?)  ;
declare_name_list:                      declare_name (COMMA declare_name)*;
declare_name:                           id_or_string;
declare_result_set:                     RESULT_SET_LOCATOR VARYING;
procedure_parameter_data_type:          (data_definition | anchored_variable_data_type | type_name | refTypeNameKeyword);

declare_global_temporary:               DECLARE GLOBAL TEMPORARY TABLE whole_name (LT_BRACKET column_definition (COMMA column_definition)* RT_BRACKET | like_table | AS LT_BRACKET fullSelect RT_BRACKET as_table_data_option? copy_option?) (DEFINITION ONLY)?
                                        (ORGANIZE BY (by_row | by_column))? commit_options? LOGGED? not_logged_options? with_replace? (IN tablespace_name)? distribution_clause?;
commit_options:                         ON COMMIT DELETE ROWS | ON COMMIT PRESERVE ROWS;
not_logged_options:                     NOT_LOGGED (ON ROLLBACK DELETE ROWS | ON ROLLBACK PRESERVE ROWS)?;
with_replace:                           WITH REPLACE;
declare_option:                         DEFAULT NULL #default_null | CONSTANT_NULL #constant_null | d_c_option #default_constant_option;
d_c_option:                             default_or_constant (constant_variable  | (LT_BRACKET cursor_value_constant RT_BRACKET )) ;
default_or_constant:                     DEFAULT #default | CONSTANT #constant  ;
constant_variable:                      (. |DIGIT  | EMPTY_QUOTES_WORD | NUMBER | ID_);
cursor_value_constant:                  CURSOR cursor_parameter_declaration_list holdablitiy FOR cursor_statement;
cursor_parameter_declaration_list:      cursor_parameter_declaration (COMMA cursor_parameter_declaration)*;
cursor_parameter_declaration:           cursor_parameter_name procedure_parameter_data_type;
cursor_parameter_name:                  id_or_string;
holdablitiy:                            WITH_HOLD #with_hold | WITHOUT_HOLD #without_hold ;
cursor_statement:                       (searched_update_statement |set_statement | subSelectClause);

anchored_variable_data_type:              ANCHOR anchor_data_type?  anchor_to?  ( anchor_variable_name | (anchor_table_name DOT anchor_column_name)  | (ROW anchor_off? anchor_row_name));
anchor_data_type:                         DATA_TYPE;
anchor_to:                                TO;
anchor_variable_name:                     id_or_string;
anchor_table_name:                        id_or_string;
anchor_column_name:                       id_or_string;
anchor_off:                               OF;
anchor_row_name:                          id_or_string;
type_name:                                type_name_segment;



cursor_declaration_query:               DECLARE cursor_name? CURSOR sensitive_option? holdability? returnability? FOR (cte | statement_name | fullSelect) ;
cursor_name:                            id_or_string;
sensitive_option:                       ASENSITIVE #asensitive | INSENSITIVE #insensitive ;
holdability:                            WITHOUT_HOLD #without_cursor_hold | WITH_HOLD #with_cursor_hold ;
returnability:                          WITHOUT_RETURN #without__cursor_return | WITH_RETURN #with_cursor_return |  (WITH_RETURN TO_CALLER) #with_cursor_return_to_caller | (WITH_RETURN TO_CLIENT) #with_cursor_return_to_client;


statement_name:                         id_or_string;



//Statement-declaration
statement_declaration:                      DECLARE statement_declaration_name_list STATEMENT ;
statement_declaration_name_list:            statement_declaration_name (COMMA statement_declaration_name)*;
statement_declaration_name:                 id_or_string;


//condition-declaration
condition_declaration:                      DECLARE condition_name CONDITION for_condition_constant? ;
for_condition_constant:                     FOR sql_state? for_value? for_string_constant;
condition_name:                             id_or_string;
sql_state:                                  SQLSTATE;
for_value:                                  VALUE;
for_string_constant:                        characterStringConstant;

//RETURN_DECLARE
return_codes_declaration:                   DECLARE  (sql_state_return | sql_code_return)  ;
sql_state_return:                           SQLSTATE sql_state_data_type sql_state_default?;
sql_state_data_type:                        CHARACTER5 #sql_state_character5 | CHAR5#sql_state_char5 ;
sql_state_default:                          DEFAULT sql_state_default_string_constant;
sql_state_default_string_constant:          id_or_string;
sql_code_return:                            SQLCODE sql_code_data_type  sql_code_default?;
sql_code_data_type:                         INTEGER #sql_code_integer | INT #sql_code_int;
sql_code_default:                           DEFAULT sql_code_default_integer_constant;
sql_code_default_integer_constant:          NUMBER;


//Handler-declaration
handler_declaration:                        DECLARE handler_declaration_option HANDLER_FOR ( general_condition_value_list |specific_condition_value_list ) sql_procedure_statement?  ;
handler_declaration_option:                 CONTINUE #handler_continue | EXIT #handler_exit | UNDO #handler_undo ;
specific_condition_value_list:              specific_condition_value (COMMA specific_condition_value)*;
specific_condition_value:                   specific_condition_name SIGNAL? SQLSTATE? has_specific_value? specific_string_constant? ;
has_specific_value:                         VALUE;
specific_string_constant:                   id_or_string;
specific_condition_name:                    id_or_string;


general_condition_value_list:               general_condition_value (COMMA general_condition_value)*;
general_condition_value:                    SQLEXCEPTION #general_sql_exception | SQLWARNING #general_sql_warning | NOT_FOUND #general_not_found;

sql_procedure_statement:                   (sql_procedure_label COLON )? sql_clauses;
sql_procedure_label:                        id_or_string;



//SET STATEMENT
set_statement:                          sql_label? SET ( normal_variable_segment | array_variable_segment) ;
normal_variable_segment:                lhs EQUAL rhs ;
lhs:                                    whole_name | id_or_string | LT_BRACKET? subSelectClause RT_BRACKET? ;
rhs:                                    LT_BRACKET? (sql_clauses | functionInvocation | rhsExpression | next_value_for id_or_string)* RT_BRACKET? ;
rhsExpression:                          expression;
next_value_for:                         NEXT VALUE FOR | NEXTVAL FOR;
functionInvocation:                     functionName LT_BRACKET (allKeyWord|distinct)? (argument(COMMA argument)*)? RT_BRACKET (OVER LT_BRACKET (partitionByKw expressionList)?  orderByClause?  RT_BRACKET)?;
allKeyWord:                             ALL;
distinct:                               DISTINCT;
argument:                               (parameterName pointerSymbol)? (defaultKeyword|expression|asterikKw);
pointerSymbol:                          POINTER_SYMBOL;
defaultKeyword:                         DEFAULT;
parameterName:                          id_or_string;
//TODO
functionName:                           id_or_string | duration |RIGHT | LEFT|data_type | whole_name;



sql_label:                              id_or_string COLON;
end_sql_label:                          id_or_string;
array_variable_segment:                 array_variable_name SQ_LT_BRACKET array_index SQ_RT_BRACKET EQUAL ( array_null | expression );
array_variable_name:                    id_or_string;
array_index:                            id_or_string;
array_null:                             NULL;

//Searched-Update
searched_update_statement:              UPDATE  update_naming? (LT_BRACKET (cte|fullSelect) RT_BRACKET)?  correlation_clause? include_columns? set_assignment_segment  update_other_option? ;
correlation_clause:                     has_as? correlation_name correlation_column_list?;
include_columns:                        INCLUDE LT_BRACKET include_column_detail_list RT_BRACKET;
include_column_detail_list:             include_column_detail (COMMA include_column_detail)*;
include_column_detail:                  include_column_name include_column_datatype ;
include_column_name:                    id_or_string;
include_column_datatype:                data_definition;




//Built_In Data Type
built_in_data_type:                     (has_national? data_type has_varying? has_large_object?)   data_type_length? ;


has_as:                                  AS;
correlation_name:                        id_or_string | IN ;
correlation_column_list:                 LT_BRACKET column_name (COMMA column_name)* RT_BRACKET;
update_other_option:                     from_table_reference? whereClause orderByClause? offsetClause? fetchClause? values_with_option? update_clause_option?;
update_naming:                           ( only_name_option |  (whole_name period_clause?)   | cte );
set_assignment_segment:                  SET (assignment_clause_list);
assignment_clause_list:                  assignment_clause (COMMA assignment_clause)* ;
only_name_option:                        ONLY LT_BRACKET id_or_string RT_BRACKET ;
period_clause:                           FOR_PORTION_OF_BUSINESS_TIME FROM peroid_clause_value_1 TO peroid_clause_value_2;
peroid_clause_value_1:                   id_or_string;
peroid_clause_value_2:                   id_or_string;


assignment_clause:                     ( assignment_lhs EQUAL assignment_rhs )|((LT_BRACKET assignment_lhs_list RT_BRACKET) EQUAL (LT_BRACKET (fullSelect |  assignment_rhs_options_list  ) RT_BRACKET));


//CASE SEGMENT
case_segment:                           LT_BRACKET? caseExpression RT_BRACKET? ;
assignment_lhs_list:                    assignment_lhs (COMMA assignment_lhs)*;
assignment_lhs:                         whole_name assignment_attribute_list?;
assignment_attribute_list:              assignment_attribute+;
assignment_attribute:                   attribute_name;
attribute_name:                         (ATTRIBUTE_NAME id_or_string);

assignment_rhs_options_list :           assignment_rhs (COMMA assignment_rhs)*;
assignment_rhs:                         NULL #assignment_null | DEFAULT #assignment_default | assignment_expression #assign_expression;
assignment_expression:                  (LT_BRACKET fullSelect RT_BRACKET) | expression | id_or_string LT_BRACKET id_or_string RT_BRACKET ;
from_table_reference:                   FROM table_reference_list ;
table_reference_list:                   table_reference (COMMA table_reference)*;
table_reference:                        whole_name | TABLE;

update_clause_option:                   (has_skip_locked has_data?) | has_wait_for_outcome |  has_nowait | has_wait_sec ;
has_skip_locked:                        SKIP_LOCKED;
has_data:                               DATA;
has_wait_for_outcome:                   WAIT_FOR_OUTCOME;
has_nowait:                             NOWAIT;
has_wait_sec:                           WAIT  sec ;
sec:                                    numericConstant;


values_with_option:                      RR #with_rr | RS #with_rs | CS #with_cs | UR #with_ur ;

//case expression
caseExpression:                         CASE (searchedWhenClause|simpleWhenClause)  endKeyWord CASE?;
searchedWhenClause:                     when_then_search_case (elseKeyWord (nullKeyWord|result_expression|sql_clauses))?;
when_then_search_case:                  (WHEN searchCondition THEN (nullKeyWord| expression | sql_clauses))*;
simpleWhenClause:                       expression when_then_expression_list (elseKeyWord (nullKeyWord|result_expression))?;
result_expression:                      expression;
when_then_expression_list:              (WHEN when_expression THEN (nullKeyWord|then_expression))*;
elseKeyWord:                            ELSE;
nullKeyWord:                            NULL;
whenKeyWord:                            WHEN;
endKeyWord:                             END;
when_expression:                        expression;
then_expression:                        expression;


//SELECT
subSelectClause:                        SELECT  next_value_for? select_statement fromClause?
                                        (whereClause|groupByClause|havingClause|orderByClause|offsetClause|fetchClause|isolationClause|correlation_clause)*;

select_statement:                       selectType? selectClauseValue (COMMA selectClauseValue)*;
selectType:                             ALL | DISTINCT;
selectClauseValue:                      ASTERIK | asNewColumnName |exposedName;
exposedName:                            id_or_string;
asNewColumnName:                        (expression (AS? newColumnName))| expression | whole_name;
newColumnName:                          id_or_string;



//FROM_CLAUSE
fromClause:                     FROM  subSelectClause?  tableReference (COMMA tableReference)*;
tableReference:                 (((LT_BRACKET tableReference RT_BRACKET) | tableReferenceValue )joinedTable?) | tableReferenceValue;
tableReferenceValue:              tableFunctionReference
                                | singleTableViewNickNameTableReference
                                | nestedTableReference
                                ;

joinedTable:                    (((((innerJoin|outerJoin)? joinKeyWord)|crossJoinKeyWord) ((LT_BRACKET tableReferenceValue RT_BRACKET)|tableReferenceValue) ((onKeyWord searchCondition)|(usingKeyWord LT_BRACKET column_name(COMMA column_name)* RT_BRACKET))?)+ )
                               |(LT_BRACKET joinedTable (((((innerJoin|outerJoin)? joinKeyWord)|crossJoinKeyWord) ((LT_BRACKET tableReferenceValue RT_BRACKET)|tableReferenceValue)  ((onKeyWord searchCondition)|(usingKeyWord LT_BRACKET column_name(COMMA column_name)* RT_BRACKET))?))* RT_BRACKET)|whereClause
                               ;
innerJoin:                     INNER;
outerJoin:                     FULL|LEFT|LEFT_OUTER|RIGHT_OUTER|FULL_OUTER|RIGHT;
onKeyWord:                     ON;
joinKeyWord:                   JOIN;
usingKeyWord:                  USING;
crossJoinKeyWord:              CROSS_JOIN;
offKeyword:                     OFF;



//WHERE_CLAUSE
whereClause:                    whereKeyword  searchCondition;
whereKeyword:                   WHERE;

on_clause:                      ON expression;

// groupBy clause
groupByClause:                  GROUP BY ((((grantTotal|((rollupKeyword|cubeKeyWord)? LT_BRACKET groupingExpressionList RT_BRACKET))|(groupingSetsKeyWord LT_BRACKET groupingSetsList RT_BRACKET)|expression)) (COMMA (((grantTotal|((rollupKeyword|cubeKeyWord) LT_BRACKET groupingExpressionList RT_BRACKET))|(groupingSetsKeyWord LT_BRACKET groupingSetsList RT_BRACKET)|expression)))*) ;
groupingSetsList:               (((grantTotal|((rollupKeyword|cubeKeyWord) LT_BRACKET groupingExpressionList RT_BRACKET))|expression)|(LT_BRACKET groupingSetsList RT_BRACKET))(COMMA (((grantTotal|((rollupKeyword|cubeKeyWord) LT_BRACKET groupingExpressionList RT_BRACKET))|expression)|(LT_BRACKET groupingSetsList RT_BRACKET)))*;
groupingExpressionList:         (expression|(LT_BRACKET groupingExpressionList RT_BRACKET))(COMMA (expression|(LT_BRACKET groupingExpressionList RT_BRACKET)))*;
groupingSetsKeyWord:            GROUPING_SETS;
rollupKeyword:                  ROLLUP;
cubeKeyWord:                    CUBE;
grantTotal:                     LT_BRACKET  RT_BRACKET;

//having clause
havingClause:                  havingKeyWord searchCondition;
havingKeyWord:                 HAVING;


//FetchClause
fetchClause:                   fetchKeyWord (firstKeyWord|nextKeyWord) positiveIntegerConstant? (row|rows) onlyKeyWord;
fetchKeyWord:                  FETCH_KEY;
firstKeyWord:                  FIRST;
nextKeyWord:                   NEXT;
rows:                          ROWS;
row:                           ROW;
onlyKeyWord:                   ONLY;


//offsetClause
offsetClause:                   offsetKeyWord positiveIntegerConstant (row|rows);
offsetKeyWord:                  OFFSET;

//isolation Clause
isolationClause:                withKeyWord isolationClauseValue;
isolationClauseValue:           (RR|RS) lockRequestClause
                                |CS
                                |UR;

lockRequestClause:              useAndKeepKeyWord lockRequestType locksKeyWord;
useAndKeepKeyWord:              USE_AND_KEEP;
lockRequestType:                SHARE|UPDATE|EXCLUSIVE;

locksKeyWord:                   LOCKS;

//nestedTableReference
nestedTableReference:              (lateralKeyWord (continueHandler withinKeyWord)?)? LT_BRACKET? (cte(COMMA cte)*)? fullSelect RT_BRACKET? correlationClause?;
lateralKeyWord:                    LATERAL;
withinKeyWord:                     WITHIN;



//CONTINUE_HANDLER
continueHandler:                 returnDataUntilKeyWord  specificConditionValue(COMMA  specificConditionValue)*;
returnDataUntilKeyWord:          RETURN_DATA_UNTIL;


//specificConditionValue
specificConditionValue:        federatedKeyWord sqlStateKeyWord valueKeyWord? characterStringConstant (sqlCodeKeyWord integerConstants (COMMA integerConstants)*)?;
federatedKeyWord:               FEDERATED;
sqlStateKeyWord:                SQLSTATE;
valueKeyWord:                   VALUE;
sqlCodeKeyWord:                 SQLCODE;




singleTableViewNickNameTableReference:(expression periodSpecification*  correlationClause? tableSampleClause? correlationName?);

//periodSpecification
periodSpecification:            forKeyWord (systemTimeKeyWord|businessTimeKeyWord) periodSpecificationValue;
periodSpecificationValue:       (asKeyWord ofKeyWord value)
                                |(fromKeyword value toKeyWord value)
                                |(betweenKeyWord value andKeyWord value);
forKeyWord:                     FOR;
systemTimeKeyWord:              SYSTEM_TIME;
businessTimeKeyWord:            BUSINESS_TIME;
ofKeyWord:                      OF;
toKeyWord:                      TO;
betweenKeyWord:                 BETWEEN;
andKeyWord:                     AND;
value:                          expression;
asKeyWord:                      AS;
fromKeyword:                    FROM;



//tableSampleClause
tableSampleClause:              tableSampleKeyWord (bernoulliKeyWord|systemKeyWord) LT_BRACKET numericExpression1 RT_BRACKET (repetableKeyWord LT_BRACKET numericExpression2 RT_BRACKET)?;
tableSampleKeyWord:             TABLESAMPLE;
bernoulliKeyWord:               BERNOULLI;
systemKeyWord:                  SYSTEM;
repetableKeyWord:               REPETABLE;
numericExpression1:             expression;
numericExpression2:             expression;




tableFunctionReference:        TABLE LT_BRACKET (functionInvocation| fullSelect) RT_BRACKET tableUDFCardinality? (correlationClause|typedCorrelationClause);
duration:                       YEAR
                               |YEARS
                               |MONTH
                               |MONTHS
                               |DAY
                               |DAYS
                               |HOUR
                               |HOURS
                               |MINUTE
                               |MINUTES
                               |SECOND
                               |SECONDS
                               |MICROSECOND
                               |MICROSECONDS;

partitionByKw:                 PARTITION_BY;
expressionList:                (LT_BRACKET expression(COMMA expression)* RT_BRACKET) |( expression(COMMA expression)* );


//Table Cardinality
tableUDFCardinality:            (cardinalityMultiplierKeyWord numericConstant)|((cardinalityKeyWord integerConstants));
numericConstant:                (integerConstants|floatingPointConstants|decimalFloatingPointConstants|decimalConstants);
cardinalityMultiplierKeyWord:   CARDINALITY_MULTIPLIER;
cardinalityKeyWord:             CARDINALITY;



//correlationClause
correlationClause:              AS? correlationName (LT_BRACKET column_name(COMMA column_name)* RT_BRACKET)?;
correlationName:                id_or_string;

//Typed Corelation Clause
typedCorrelationClause:         AS? correlationName LT_BRACKET (column_name dataType) (COMMA (column_name dataType))* RT_BRACKET;


//DataType
dataType:                                   data_definition;
data_definition:                            ((has_national? data_type has_varying? has_large_object? data_type_length?) | ('REF' LT_BRACKET? ref RT_BRACKET?) | dataTypeName  );
data_type:                                  (SMALLINT | INTEGER | INT | BIGINT | DECIMAL | DEC | NUMERIC | NUM | FLOAT | REAL | DOUBLE | DOUBLE_PRECISION | DECFLOAT |
                                             CHARACTER | CHAR_KEY| VARCHAR |  CLOB | GRAPHIC |
                                             VARGRAPHIC | DBCLOB | NCHAR | NVARCHAR | LONG_VARGRAPHIC | LONG_VARCHAR |
                                             NCLOB | BINARY | VARBINARY |  BLOB |
                                             DATE | TIME | TIMESTAMP | XML | BOOLEAN | SYSPROC_DB2SECURITYLABEL  | DB2SECURITYLABEL | DAYOFWEEK |                       |  CURRENT_TEMPORAL_BUSINESS_TIME
                                                                                                                                                                        |  CURRENT_TEMPORAL_SYSTEM_TIME
                                                                                                                                                                        |  CURRENT_TIMEZONE
                                                                                                                                                                        |  CURRENT_USER
                                                                                                                                                                        |  SESSION_USER
                                                                                                                                                                        |  SYSTEM_USER
                                                                                                                                                                        |  ADD_DAYS
                                                                                                                                                                        |  ADD_HOURS
                                                                                                                                                                        |  ADD_MINUTES
                                                                                                                                                                        |  ADD_MONTHS
                                                                                                                                                                        |  ADD_SECONDS
                                                                                                                                                                        |  ADD_YEARS
                                                                                                                                                                        |  AGE
                                                                                                                                                                        |  DATE_PART
                                                                                                                                                                        |  DATE_TRUNC
                                                                                                                                                                        |  DAYNAME
                                                                                                                                                                        |  DAYOFMONTH
                                                                                                                                                                        |  DAYOFWEEK
                                                                                                                                                                        |  DAYOFWEEK_ISO
                                                                                                                                                                        |  DAYOFYEAR
                                                                                                                                                                        |  DAYS_BETWEEN
                                                                                                                                                                        |  DAYS_TO_END_OF_MONTH
                                                                                                                                                                        |  EXTRACT
                                                                                                                                                                        |  FIRST_DAY
                                                                                                                                                                        |  FROM_UTC_TIMESTAMP
                                                                                                                                                                        |  HOURS_BETWEEN
                                                                                                                                                                        |  JULIAN_DAY
                                                                                                                                                                        |  LAST_DAY
                                                                                                                                                                        |  MIDNIGHT_SECONDS
                                                                                                                                                                        |  MINUTES_BETWEEN
                                                                                                                                                                        |  MONTHNAME
                                                                                                                                                                        |  MONTHS_BETWEEN
                                                                                                                                                                        |  NEXT_DAY
                                                                                                                                                                        |  NEXT_MONTH
                                                                                                                                                                        |  NEXT_QUARTER
                                                                                                                                                                        |  NEXT_WEEK
                                                                                                                                                                        |  NEXT_YEAR
                                                                                                                                                                        |  NOW
                                                                                                                                                                        |  QUARTER
                                                                                                                                                                        |  ROUND
                                                                                                                                                                        |  ROUND_TIMESTAMP
                                                                                                                                                                        |  SECONDS_BETWEEN
                                                                                                                                                                        |  THIS_MONTH
                                                                                                                                                                        |  THIS_QUARTER
                                                                                                                                                                        |  THIS_WEEK
                                                                                                                                                                        |  THIS_YEAR
                                                                                                                                                                        |  TIMESTAMP_FORMAT
                                                                                                                                                                        |  TIMESTAMP_ISO
                                                                                                                                                                        |  TIMESTAMPDIFF
                                                                                                                                                                        |  TIMEZONE
                                                                                                                                                                        |  TO_CHAR
                                                                                                                                                                        |  TO_DATE
                                                                                                                                                                        |  TO_NCHAR
                                                                                                                                                                        |  TO_TIMESTAMP
                                                                                                                                                                        |  TO_UTC_TIMESTAMP
                                                                                                                                                                        |  TRUNCATE
                                                                                                                                                                        |  TRUNC_TIMESTAMP
                                                                                                                                                                        |  VARCHAR_FORMAT
                                                                                                                                                                        |  WEEK
                                                                                                                                                                        |  WEEK_ISO
                                                                                                                                                                        |  WEEKS_BETWEEN
                                                                                                                                                                        |  YEARS_BETWEEN
                                                                                                                                                                        |  YMD_BETWEEN );


has_varying:                                VARYING;
has_large_object:                           LARGE_OBJECT;
has_national:                               NATIONAL;
data_type_length:                          ( LT_BRACKET length  RT_BRACKET | LT_BRACKET precision_length COMMA scale_length RT_BRACKET )|
                                           ( LT_BRACKET length  octet_and_unit_option? RT_BRACKET cssid_option? ) | cssid_option ;
length:                                     NUMBER;
octet_and_unit_option:                      OCTETS | CODEUNITS16 | CODEUNITS32 ;
cssid_option:                               FOR BIT DATA | CCSID_ASCII | CCSID_UNICODE | CCSID_1208 ;
precision_length:                           NUMBER;
scale_length:                               NUMBER;

//Type
dataTypeName:                               type_name_segment;
type_name_segment:                          whole_name;



//Ref
ref:                                        ref_name_segment;
ref_name_segment:                           whole_name;



//TODO
//search condition
searchCondition:                     notKeyWord? predicateSelectiveClause repeatative_predicate*;
repeatative_predicate:               andOrKeyword notKeyWord? predicateSelectiveClause;
predicateSelectiveClause:            LT_BRACKET? predicate  selectivityClause? RT_BRACKET?;

notKeyWord:                          NOT;
selectivityClause:                   selectivityKeyWord numericConstant;
selectivityKeyWord:                  SELECTIVITY;
andOrKeyword:                        AND|OR;
predicate:                           LT_BRACKET?
        (existsPredicate
                                      |nullPredicate
                                      |betweenPredicate
                                      |booleanPredicate
                                      |inPredicate
                                      |quantifiedPredicate
                                      |basicPredicate
                                      |likePredicate) RT_BRACKET?
                                      ;

//existsPredicate
existsPredicate:                      existsKeyWord LT_BRACKET fullSelect RT_BRACKET;
existsKeyWord:                        EXISTS;

betweenPredicate:                     (expression) BETWEEN notKeyWord? (expression) AND (expression|searchCondition);



//quantified predicate
basicPredicate:                     normalPredicate|booleanPredicate;
normalPredicate:                    (rowValueExpression|expression|fullSelect) comparisionOpr (rowValueExpression|expression|fullSelect) ;
comparisionOpr:                     EQUAL
                                    |NOT_EQUAL_TO
                                    |LESS_THAN
                                    |GREATER_THAN
                                    |LESS_THAN_EQUAL_TO
                                    |GREATER_THAN_EQUAL_TO;

// rowValueExpression
rowValueExpression:                 LT_BRACKET expressionList RT_BRACKET;


//booleanPredicate
booleanPredicate:                   booleanExpression isKeyWord  notKeyWord booleanValue;
booleanExpression:                  expression;
isKeyWord:                          IS;
booleanValue:                       BOOLEAN_TRUE|BOOLEAN_FALSE;



//quantifiedPredicate
quantifiedPredicate:              quantifiedPredicateOperand comparisionOpr  quantifiedOption LT_BRACKET fullSelect RT_BRACKET;
quantifiedPredicateOperand:       rowValueExpression|expression;
quantifiedOption:                 SOME|ANY|ALL;

//IN predicate
inPredicate:                      (rowValueExpression|expression) notKeyWord? inKeyWord  expressionList;
inKeyWord:                        IN;


//likepredicate
likePredicate:                  expression notKeyWord? likeKeyWord characterStringConstant (escapeKeyWord characterStringConstant)?;
likeKeyWord:                    LIKE;
escapeKeyWord:                  ESCAPE;

//nullpredicate
nullPredicate:                  expression isKeyWord notKeyWord? NULL;



//FULL SELECT
fullSelect:                     (fullSelectClause (joinType fullSelectClause)* (orderByClause|offsetClause|fetchClause|isolationClause)*) ;
fullSelectClause:                subSelectClause | (LT_BRACKET (fullSelectClause  (joinType fullSelectClause)* (orderByClause|offsetClause|fetchClause|isolationClause)*) RT_BRACKET) | (VALUES LT_BRACKET valueClause RT_BRACKET)
                                 ;
valueClause:                    valueClauseList(COMMA valueClauseList)*;
valueClauseList:                NULL|expression|(LT_BRACKET valueClause RT_BRACKET);
joinType:                       UNION_ALL
                                |UNION
                                |EXCEPT_ALL
                                |EXCEPT
                                |INTERSECT_ALL
                                |INTERSECT;

orderByClause:                 ORDER_BY ((INPUT_SEQUENCE)|(orderByValue(COMMA orderByValue)*));
orderByValue:                  (ORDER_OF tableDesignator)|(sortKey sortOrder?);

tableDesignator:               id_or_string (DOT (id_or_string| asterikKw))*;
asterikKw:                     ASTERIK;
sortKey:                       simpleInteger|simpleColumnName|expression;
simpleColumnName:              id_or_string;
simpleInteger:                 integerConstants;
sortOrder:                     ASC (NULLS_FIRST | NULLS_LAST)? | DESC (NULLS_FIRST | NULLS_LAST)?;



//EXPRESSION
expression:                        (expressionValue) (operator expressionValue)*;

operator:                           doubleAsterik
                                    |multiplication
                                    |division
                                    |modulus
                                    |concatKey
                                    |concatSym
                                    |add
                                    |sub
                                    |andOpr
                                    |orOpr
                                    |notOpr;

doubleAsterik:                      ASTERIK ASTERIK;
multiplication:                     ASTERIK;
division:                           DIV;
modulus:                            PERCENTAGE;
concatKey:                          CONCAT;
concatSym:                          SYMBOL13 SYMBOL13;
add:                                ADDITION;
sub:                                SUB;
andOpr:                             SYMBOL8;
orOpr:                              SYMBOL13;
notOpr:                             SYMBOL7;

bitNotSym:                          SYMBOL0;
bitAndOr:                           ADDITION|SUB;


//TODO
expressionValue:                    bitNotSym? bitAndOr? (specialRegisters
                                                         | whole_name
                                                         |castExpression
                                                         |caseExpression
                                                         |olapSpecification
                                                         |LT_BRACKET expression RT_BRACKET
                                                         |methodInvocation
                                                         |arrayElementSpecification
                                                         |functionInvocation
                                                         |labelledDuration
                                                         |constants
                                                         |fieldReference
                                                         |id_or_string
                                                         |(id_or_string DOT ASTERIK)
                                                         |id_or_string LT_BRACKET id_or_string RT_BRACKET id_or_string?
                                                         |scalarFullSelect
                                                         |next_value_for);

//scalarFullSelect
scalarFullSelect:                  (LT_BRACKET? fullSelect RT_BRACKET?) ;

//field reference
fieldReference:                     (rowArrayElementSpecification |rowVariableName) dotSymbol fieldName;
rowArrayElementSpecification:        arrayElementSpecification;
rowVariableName:                     id_or_string;
fieldName:                           id_or_string;


labelledDuration:                          (constants
                                          |(functionInvocation)
                                           |hostVariable
                                           |id_or_string
                                           |  (LT_BRACKET expression RT_BRACKET)) duration
                                           ;
//identifier
hostVariable:                        colon id_or_string  (colon id_or_string)?;
colon:                               COLON;

//CONSTANTS
//Constants
constants:                             integerConstants
                                       |floatingPointConstants
                                       |decimalConstants
                                       |decimalFloatingPointConstants
                                       |graphicStringConstants
                                       |binaryStringConstant
                                       |dateTimeConstants
                                       |uTF16BeGraphicStringConstant
                                       |booleanConstant
                                       |characterStringConstant
                                       ;

integerConstants:                       (positiveIntegerConstant|negativeIntegerConstant);
positiveIntegerConstant:                (ADDITION? NUMBER);
negativeIntegerConstant:                (SUB NUMBER);

floatingPointConstants:                  (floatingPointNumber1) E (floatingPointNumber2);
floatingPointNumber1:                    positiveFloatingPoint1|negativeFloatingPoint1;
floatingPointNumber2:                    positiveFloatingPoint2|negativeFloatingPoint2;
positiveFloatingPoint1:                  ADDITION? NUMBER? DOT? NUMBER;
negativeFloatingPoint1:                  SUB NUMBER? DOT? NUMBER;
positiveFloatingPoint2:                  ADDITION? NUMBER;
negativeFloatingPoint2:                  SUB NUMBER ;

decimalConstants:                        positiveDecimalConstant|negativeDecimalConstant;
positiveDecimalConstant:                 ADDITION? NUMBER? DOT? NUMBER;
negativeDecimalConstant:                 SUB  NUMBER? DOT? NUMBER;

decimalFloatingPointConstants:           infinity|nan|snan;
infinity:                                positiveInfinity|negativeInfinity;
positiveInfinity:                        ADDITION? (INFINITY|INF);
negativeInfinity:                        SUB (INFINITY|INF);
snan:                                    positiveSnan|negativeSnan;
positiveSnan:                            ADDITION? SNAN;
negativeSnan:                            SUB SNAN;
nan:                                     positiveNan|negativeNan;
positiveNan:                             ADDITION? NAN;
negativeNan:                             SUB NAN;



characterStringConstant:                 simpleCharacterStringConstant
                                         |hexaDecimalConstant
                                         |unicodeStringConstant
                                          ;
simpleCharacterStringConstant:           ( CHARCTERSTRING )+;
hexaDecimalConstant:                     X (CHARCTERSTRING )+;
unicodeStringConstant:                   UAND ( CHARCTERSTRING )+ uEscapeClause?;
uEscapeClause:                           UESCAPE (CHARCTERSTRING);
graphicStringConstants:                  nonUnicodeDatabase|unicodeDatabase;
nonUnicodeDatabase:                      graphicStringConstantType CHARCTERSTRING ;
graphicStringConstantType:               G|N;
unicodeDatabase:                         nonUnicodeDatabase|hexaDecimalGraphicStringConstant;
hexaDecimalGraphicStringConstant:        GX CHARCTERSTRING;


binaryStringConstant:                    BX  CHARCTERSTRING ;

dateTimeConstants:                       (DATE timeValue)| (TIME  timeValue)|( (TIMESTAMP  timeValue));
timeValue:                               characterStringConstant;

uTF16BeGraphicStringConstant:            UX  CHARCTERSTRING;

booleanConstant:                        booleanTrue|booleanFalse;
booleanTrue:                            BOOLEAN_TRUE|NULL;
booleanFalse:                           BOOLEAN_FALSE;


//methodInvocation
methodInvocation:                   subjectExpression dotSymbol dotSymbol methodName (LT_BRACKET expressionList? RT_BRACKET)?;
subjectExpression:                  id_or_string;
methodName:                         id_or_string;
dotSymbol:                          DOT;


//arrayElementSpecification
arrayElementSpecification:          (arrayVariableName|castOprArray) squareLeftBracket expression squareRightBracket;
castOprArray:                       cast LT_BRACKET parameterMarkers asKeyWord array_element_TypeName RT_BRACKET;
squareLeftBracket:                  SQ_LT_BRACKET;
squareRightBracket:                 SQ_RT_BRACKET;
cast:                               CAST;
array_element_TypeName:             dataType;
arrayVariableName:                  id_or_string;


// olapSpecification
olapSpecification:                  (rowNumberKw|cumeDistKw| percentRankKw|rankKw|denseRankKw|nTile) overKw LT_BRACKET (partitionByKw expressionList)?  orderByClause?  RT_BRACKET;
cumeDistKw:                          CUME_DIST;
percentRankKw:                       PERCENT_RANK;
rankKw:                              RANK;
denseRankKw:                         DENSE_RANK;
nTile:                               NTILE LT_BRACKET expression RT_BRACKET;
rowNumberKw:                        ROW_NUMBER;
overKw:                              OVER;

//castExpression
castExpression:                   castKeyWord LT_BRACKET (cursorCastSpecification
                                                      |intervalCastSpecification
                                                      |rowCastSpecification
                                                      |simpleCast) RT_BRACKET;

castKeyWord:                        CAST;
intervalCastSpecification:          characterStringConstant asKeyWord intervalKeyWord;
intervalKeyWord:                    INTERVAL;
rowCastSpecification:               (nullKeyWord|parameterMarkers|expression) asKeyWord rowTypeName;
parameterMarkers:                   questionMark|(COLON parkerMarkerName);
parkerMarkerName:                   id_or_string;
questionMark:                       QUESTION_MARK;
rowTypeName:                        whole_name;
simpleCast:                         (nullKeyWord|parameterMarkers|expression) asKeyWord dataType (scopeKeyWord typedTableNameViewName)?;
scopeKeyWord:                       SCOPE;
typedTableNameViewName:             id_or_string;


cursorCastSpecification:            parameterMarkers asKeyWord (cursorKeyWord|cursorTypeName);
cursorKeyWord:                      CURSOR;
cursorTypeName:                     dataType;

specialRegisters:                   CURRENT_CLIENT_ACCTNG
                                    |CLIENT_ACCTNG
                                    |CURRENT_CLIENT_APPLNAME
                                    |CLIENT_APPLNAME
                                    |CURRENT_CLIENT_USERID
                                    |CLIENT_USERID
                                    |CURRENT_CLIENT_WRKSTNNAME
                                    |CLIENT_WRKSTNNAME
                                    |CURRENT_DATE
                                    |CURRENT_DBPARTITIONNUM
                                    |CURRENT_DECFLOAT_ROUNDING_MODE
                                    |CURRENT_DEFAULT_TRANSFORM_GROUP
                                    |CURRENT_DEGREE
                                    |CURRENT_EXPLAIN_MODE
                                    |CURRENT_EXPLAIN_SNAPSHOT
                                    |CURRENT_FEDERATED_ASYNCHRONY
                                    |CURRENT_IMPLICIT_XMLPARSE_OPTION
                                    |CURRENT_ISOLATION
                                    |CURRENT_LOCALE_LC_TIME
                                    |CURRENT_LOCK_TIMEOUT
                                    |CURRENT_MAINTAINED_TABLE_TYPES_FOR_OPTIMIZATION
                                    |CURRENT_MDC_ROLLOUT_MODE
                                    |CURRENT_MEMBER
                                    |CURRENT_OPTIMIZATION_PROFILE
                                    |CURRENT_PACKAGE_PATH
                                    |CURRENT_PATH
                                    |CURRENT_QUERY_OPTIMIZATION
                                    |CURRENT_REFRESH_AGE
                                    |CURRENT_SCHEMA
                                    |CURRENT_SERVER
                                    |CURRENT_SQL_CCFLAGS
                                    |CURRENT_TEMPORAL_SYSTEM_TIME
                                    |CURRENT_TEMPORAL_BUSINESS_TIME
                                    |CURRENT_TIME
                                    |(CURRENT_TIMESTAMP currentTimeStampInteger?)
                                    |CURRENT_TIMEZONE
                                    |CURRENT_USER
                                    |SESSION_USER
                                    |USER
                                    |SYSTEM_USER
                                    ;

currentTimeStampInteger:            integerConstants;

id_or_string:          ID_  | keyWords;


whole_name:            ((database DOT)?  schema DOT)?  table;
database:               id_or_string;
schema:                 id_or_string;
table:                  id_or_string;

keyWords:                ROW_COUNT
                       | CARDINALITY
                       | K
                       | G
                       | SYSPROC
                       | DB2SECURITYLABEL
                       | OF
                       | COLUMN
                       | ROW_USING
                       | KEY_SEQUENCE
                       | INSERT_TIME
                       | DATA_CAPTURE
                       | CHANGES
                       | CCSID
                       | ASCII
                       | YEAR
                       | MONTH
                       | UNICODE
                       | OPTIONS
                       | SCOPE
                       | INLINE_LENGTH
                       | COMPRESS_SYSTEM_DEFAULT
                       | SECURED_WITH
                       | NOT_HIDDEN
                       | IMPLICITLY_HIDDEN
                       | LOGGED
                       | NOT_LOGGED
                       | COMPACT
                       | NOT_COMPACT
                       | REFERENCES
                       | RESTRICT
                       | CASCADE
                       | ENFORCED
                       | NOT_ENFORCED
                       | TRUSTED
                       | NOT_TRUSTED
                       | TRANSACTION_START_ID
                       | PERIOD
                       | SYSTEM_TIME
                       | BUSINESS_TIME
                       | WITHOUT_OVERLAPS
                       | DETERMINED_BY
                       | HIERARCHY
                       | UNDER
                       | INHERIT_SELECT_PRIVILEGES
                       | REF_IS
                       | OID
                       | USER_GENERATED
                       | WITH_OPTIONS
                       | WITH_NO_DATA
                       | WITH_DATA
                       | INCLUDING
                       | EXCLUDING
                       | DEFAULTS
                       | EXCLUDING_IDENTITY
                       | INCLUDING_IDENTITY
                       | COLUMN_ATTRIBUTES
                       | USER
                       | REPLICATION
                       | FEDERATED_TOOL
                       | PROPAGATE_IMMEDIATE
                       | DIMENSIONS
                       | STARTING
                       | ENDING
                       | AT
                       | ALLOW_OVERFLOW
                       | DISALLOW_OVERFLOW
                       | LONG_IN
                       | DISTRIBUTE_BY
                       | HASH
                       | RANDOM
                       | RANGE
                       | NULLS_LAST
                       | NULLS_FIRST
                       | PARTITION
                       | EVERY
                       | INCLUSIVE
                       | EXCLUSIVE
                       | FOR_EACH_ROW_ON_UPDATE_AS_ROW_CHANGE_TIMESTAMP
                       | AS_ROW
                       | ADD_SCOPE
                       | SYSTEM_DEFAULT
                       | OFF
                       | SECURED_WTIH
                       | DROP_COLUMN_SECURITY
                       | ROW_ACCESS_CONTROL
                       | ACTIVATE
                       | DEACTIVATE
                       | COLUMN_ACCESS_CONTROL
                       | RENAME_COLUMN
                       | DROP_DISTRIBUTION
                       | MATERIALIZED
                       | QUERY
                       | INCLUDE_LONGVAR_COLUMNS
                       | WITH_EMPTY_TABLE
                       | LOCKSIZE
                       | BLOCKINSERT
                       | APPEND
                       | VOLATILE
                       | STATIC
                       | LOG_INDEX_BUILD
                       | BUILD_MISSION_INDEXES
                       | REQUIRE_MATCHING_INDEXES
                       | USE_HISTORY_TABLE
                       | DATA_TYPE
                       | BUSINESS_TIME_WITHOUT_OVERLAPS
                       | ASC
                       | DESC
                       | PARTITIONED
                       | NO_PARTITIONED
                       | SPECIFICATION_ONLY
                       | EXTEND_USING
                       | LEVEL2PCTFREE
                       | MINPCTUSED
                       | PAGE_SPLIT_SYMMETRIC
                       | PAGE_SPLIT
                       | HIGH
                       | LOW
                       | COLLECT
                       | SAMPLED
                       | UNSAMPLED
                       | DETAILED
                       | STATISTICS
                       | COMPRESS
                       | YES
                       | GENERATE_KEY_USING_XMLPATTERN
                       | DECLARE_NAMESAPCE
                       | DECLARE_DEFAULT_ELEMENT_NAMESPACE
                       | CHILD
                       | ATTRIBUTE
                       | DESCENDANT
                       | SELF
                       | DESCENDANT_OR_SELF
                       | NODE
                       | TEXT
                       | COMMENT
                       | PROCESSING_INSTRUCTION
                       | FN_UPPERCASE
                       | FN_EXISTS
                       | IGNORE_INVALID_VALUES
                       | REJECT_INVALID_VALUES
                       |  VALUES
                       |  RR
                       |  RS
                       |  CS
                       |  UR
                       |  ONLY
                       |  SKIP_LOCKED
                       |  WAIT_FOR_OUTCOME
                       |  NOWAIT
                       |  WAIT
                       |  WHERE_CURRENT_OF
                       |  EXCEPT
                       |  EXCEPT_ALL
                       |  INTERSECT
                       |  INTERSECT_ALL
                       |  USE_AND_KEEP
                       |  SHARE
                       |  LOCKS
                       |  GROUPING_SETS
                       |  ROLLUP
                       |  CUBE
                       |  HAVING
                       |  ORDER_OF
                       |  INPUT_SEQUENCE
                       |  ROWS
                       |  OFFSET
                       |  FOR_PORTION_OF_BUSINESS_TIME
                       |  SELECTIVITY
                       |  ARRAY_EXISTS
                       |  BETWEEN
                       |  OPEN
                       |  FOUND
                       |  EXISTS
                       |  JSON_EXISTS
                       |  JSON_EXISTS_FORMAT
                       |  FORMAT_JSON
                       |  FORMAT_BSON
                       |  ON_ERROR
                       |  JSON_PATH_MODE
                       |  LAX
                       |  STRICT
                       |  ESCAPE
                       |  OVERLAPS
                       |  REGEXP_LIKE
                       |  DYNAMIC_TYPE
                       |  VALIDATED
                       |  ACCORDING_TO_XMLSCHEMA
                       |  NAMESPACE
                       |  URI
                       |  PROVIDER
                       |  ROUTINE_SOURCE_TABLE
                       |  ROUTINE_SOURCE_NAME
                       |  XMLEXISTS
                       |  PASSING
                       |  BY_REF
                       |  BERNOULLI
                       |  SYSTEM
                       |  REPEATABLE
                       |  FEDERATED
                       |  VALUE
                       |  CARDINALITY
                       |  CARDINALITY_MULTIPLIER
                       |  OUTER
                       |  ANALYZE_TABLE
                       |  LATERAL
                       |  FINAL
                       |  E
                       |  UNNEST
                       |  ORDINALITY
                       |  XMLTABLE
                       |  COLUMNS
                       |  PATH
                       |  CURRENT_CLIENT_ACTING
                       |  CURRENT_CLIENT_APPNAME
                       |  CURRENT_CLIENT_USERID
                       |  CURRENT_CLIENT_WRKSTNNAME
                       |  CURRENT_DATE
                       |  CURRENT_DBPARTITIONNUM
                       |  CURRENT_DECFLOAT_ROUNDING_MODE
                       |  CURRENT_DEFAULT_TRANSFORM_GROUP
                       |  CURRENT_DEGREE
                       |  CURRENT_EXPLAIN_MODE
                       |  CURRENT_EXPLAIN_SNAPSHOT
                       |  CURRENT_FEDERATED_ASYNCHRONY
                       |  CURRENT_IMPLICIT_XMLPARSE_OPTION
                       |  CURRENT_ISOLATION
                       |  CURRENT_LOCALE_LC_TIME
                       |  CURRENT_LOCK_TIMEOUT
                       |  CURRENT_MAINTAINED_TABLE_TYPES_FOR_OPTIMIZATION
                       |  CURRENT_MDC_ROLLOUT_MODE
                       |  CURRENT_MEMBER
                       |  CURRENT_OPTIMIZATION_PROFILE
                       |  CURRENT_PACKAGE_PATH
                       |  CURRENT_PATH
                       |  CURRENT_QUERY_OPTIMIZATION
                       |  CURRENT_REFRESH_AGE
                       |  CURRENT_SQL_CCFLAGS
                       |  INFINITY
                       |  SNAN
                       |  NAN
                       |  INF
                       |  X
                       |  UAND
                       |  N
                       |  GX
                       |  BX
                       |  UX
                       |  UESCAPE
                       |  IS
                       |  BOOLEAN_TRUE
                       |  BOOLEAN_FALSE
                       |  UNKNOWN
                       |  ERROR
                       |  INTERVAL
                       |  CAST
                       |  REF
                       |  XMLCAST
                       |  ARRAY
                       |  CHANGE
                       |  PREVIOUS
                       |  TREAT
                       |  CUME_DIST
                       |  PERCENT_RANK
                       |  RANK
                       |  DENSE_RANK
                       |  NTLE
                       |  OVER
                       |  RESPECT_NULLS
                       |  IGNORE_NULLS
                       |  LAG
                       |  LEAD
                       |  ROW_NUMBER
                       |  AGGREGRATESPEC_RANGE_TYEP1
                       |  AGGREGRATESPEC_RANGE_TYEP2
                       |  FROM_FIRST
                       |  FROM_LAST
                       |  RATIO_TO_REPORT
                       |  UNBOUNDED_PRECEDING
                       |  UNBOUNDED_FOLLOWING
                       |  PRECEDING
                       |  FOLLOWING
                       |  CURRENT_ROW
                       |  ELSE_IGNORE
                       |  INSTANTIABLE
                       |  NOT_INSTANTIABLE
                       |  WITHOUT_COMPARISONS
                       |  MODE_DB2SQL
                       |  WITH_FUNCTION_ACCESS
                       |  CAST_REF_AS_SOURCE_WITH
                       |  CAST_SOURCE_AS_REF_WITH
                       |  METHOD
                       |  OVERRIDING
                       |  RETURNS
                       |  AS_LOCATOR
                       |  SPECIFIC_NAME
                       |  SET_AS_RESULT
                       |  DB2GENERAL
                       |  SQL
                       |  FENCED
                       |  NOT_FENCED
                       |  THREADSAFE
                       |  NOT_THREADSAFE
                       |  RETURNS_NULL_ON_NULL_INPUT
                       |  NO_SQL
                       |  NO_SCRATCHPAD
                       |  SCRATCHPAD
                       |  NO_FINAL_CALL
                       |  FINAL_CALL
                       |  ALLOW_PARALLEL
                       |  DISALLOW_PARALLEL
                       |  NO_DBINFO
                       |  DBINFO
                       |  TYPE
                       |  NATIONAL_CHARCTER
                       |  NATIONAL_CHAR
                       |  PRECISION
                       |  WITH_STRONG_TYPE_RULES
                       |  WITH_WEAK_TYPE_RULES
                       |  ANCHOR
                       |  DB2LBACRULES
                       |  OVERRIDE_NOT_AUTHORIZED_WRITE_SECURITY_LABEL
                       |  RESTRICT_NOT_AUTHORIZED_WRITE_SECURITY_LABEL
                       |  COMPONENTS
                       |  GRANT
                       |  PRIVILEGES
                       |  CONTROL
                       |  WITH_GRANT_OPTION
                       |  ROLE
                       |  PUBLIC_KEYWORD
                       |  COMMENT_ON
                       |  AUDIT_POLICY
                       |  DATABASE_PARTITION_GROUP
                       |  FUNCTION_MAPPING
                       |  HISTOGRAM_TEMPLATE
                       |  MASK
                       |  MODULE
                       |  NICKNAME
                       |  PACKAGE
                       |  VERSION
                       |  PERMISSION
                       |  SECURITY_LABEL
                       |  SECURITY_LABEL_COMPONENT
                       |  SERVER
                       |  SERVER_OPTION
                       |  STOGROUP
                       |  TABLESPACE
                       |  THRESHOLD
                       |  TRIGGER
                       |  TRUSTED_CONTEXT
                       |  TYPE_MAPPING
                       |  USAGE_LIST
                       |  VARIABLE
                       |  WORK_ACTION_SET
                       |  WORK_CLASS_SET
                       |  WORKLOAD
                       |  WRAPPER
                       |  XSROBJECT
                       |  ALIAS
                       |  FOR_MODULE
                       |  FOR_SEQUENCE
                       |  SPECIFIC_FUNCTION
                       |  PROCEDURE
                       |  SPECIFIC_PROCEDURE
                       |  SERVER_TYPE
                       |  SERVICE_CLASS
                       |  AUTHORIZATION
                       |  CONCAT
                       |  FIRST_VALUE
                       |  LAST_VALUE
                       |  NTH_VALUE
                       |  WITHIN
                       |  IMPLEMENTATION
                       |  RETURN_DATA_UNTILL
                       |  TABLESAMPLE
                       |  OUT
                       | INOUT
                       | INHERIT_ISOLATION_LEVEL_WITHOUT_LOCK_REQUEST
                       | INHERIT_ISOLATION_LEVEL_WITH_LOCK_REQUEST
                       | NOT_SECURED
                       | SECURED
                       | CHARACTER5
                       | CHAR5
                       | ON_ROLLBACK_RETAIN_CURSORS
                       | ON_ROLLBACK_RETAIN_LOCKS
                       | COMMIT
                       | INPUT
                       | ROLLBACK
                       | TO_SAVEPOINT
                       | WORK
                       | GOTO
                       | PREPARE
                       | HANDLER_FOR
                       | PLPGSQL
                       | END_REPEAT
                       | RELEASE
                       | SET_MESSAGE_TEXT
                       | UNDO
                       | EXIT
                       | NOT_FOUND
                       | ISOLATION
                       | FOR_READ_ONLY
                       | FOR_UPDATE
                       | EXECUTE
                       | DESCRIPTOR
                       | STATEMENT
                       | AUTONOMOUS
                       | OLD_SAVEPOINT_LEVEL
                       | NEW_SAVEPOINT_LEVEL
                       | TO_CALLER
                       | TO_CLIENT
                       | ATOMIC
                       | CONSTANT_NULL
                       | CONSTANT
                       | UNTIL
                       | CLOSE
                       | SAVEPOINT_KEY
                       | TRUE
                       | SEC
                       | DB2_RETURN_STATUS
                       | DB2_SQL_NESTING_LEVEL
                       | ROW_COUNT
                       | DB2_TOKEN_STRING
                       | MESSAGE_TEXT
                       | EXCEPTION
                       | EXTERNAL_NAME
                       | REPETABLE
                       | BUSINESS_TIME_WITH_OVERLAPS
                       | NOT_PARTITIONED
                       | PAGE_SPLIT_HIGH
                       | PAGE_SPLIT_LOW
                       | GENERATE
                       | KEY
                       | XMLPATTERN
                       | ELEMENT
                       | NAMES
                       | LABELS
                       | BOTH
                       | ACTION
                       | CLUSTER
                       | NEW
                       | OLD
                       | SQLCODE
                       |TOKEN
                       |M
                       |TIME
                       |NEXT_DAY
                       |REPEAT
                       |CYCLE
                       |AGE
                       |RESULT
                       |C
                       |LANGUAGE
                       |INT
                       |REPLACE;

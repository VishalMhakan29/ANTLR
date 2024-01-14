grammar PostgresTable;
//keywords-
CREATE:                     C R E A T E;
GLOBAL_TEMPORARY:           G L O B A L SPACE+ T E M P O R A R Y;
UNLOGGED:                   U N L O G G E D;
TABLE:                      T A B L E;
DEFAULT:                    D E F A U L T;
ROWIDS:                     R O W I D S;
TRUE:                       T R U E;
ON:                         O N;
FALSE:                      F A L S E;
OFF:                        O F F;
WITH:                       W I T H;
ON_COMMIT:                  O N SPACE+ C O M M I T;
PRESERVE_ROWS:              P R E S E R V E SPACE+ R O W S;
DELETE_ROWS:                D E L E T E SPACE+ R O W S;
TABLESPACE:                 T A B L E S P A C E;
CONSTRAINT:                 C O N S T R A I N T;
NOT_NULL:                   N O T SPACE+ N U L L;
NULL:                       N U L L;
UNIQUE:                     U N I Q U E;
PRIMARY:                    P R I M A R Y;
PRIMARY_KEY:                P R I M A R Y SPACE+ K E Y;
CHECK:                      C H E C K;
LIKE:                       L I K E;
REFERENCES:                 R E F E R E N C E S;
USING_INDEX_TABLESPACE:     U S I N G SPACE+ I N D E X SPACE+ T A B L E S P A C E;
ON_DELETE:                  O N SPACE+ D E L E T E;
DEFERRABLE:                 D E F E R R A B L E;
NOT_DEFERRABLE:             N O T SPACE+ D E F E R R A B L E;
INITIALLY_DEFERRED:         I N I T I A L L Y SPACE+ D E F E R R E D;
INITIALLY_IMMEDIATE:        I N I T I A L L Y SPACE+ I M M E D I A T E;
CASCADE:                    C A S C A D E;
SET_NULL:                   S E T SPACE+ N U L L;
FOREIGN_KEY:                F O R E I G N SPACE+ K E Y;
GLOBAL:                     G L O B A L;
LOCAL:                      L O C A L;

//data types
BLOB:                       B L O B;
LONG_RAW:                   L O N G SPACE+ R A W;
RAW:                        R A W;
BYTEA:                      B Y T E A;
BOOLEAN:                    B O O L E A N;
CHAR:                       C H A R ;
CHARACTER:                  C H A R A C T E R;
CLOB:                       C L O B;
LONG:                       L O N G;
LONG_VARCHAR:               L O N G SPACE+ V A R C H A R;
DATE:                       D A T E;
TIMESTAMP:                  T I M E S T A M P;
DOUBLE_PRECISION:           D O U B L E SPACE+ P R E C I S I O N;
FLOAT:                      F L O A T;
INTEGER:                    I N T E G E R;
INT:                        I N T;
BINARY_INTEGER:             B I N A R Y UNDERSCORE I N T E G E R;
PLS_INTEGER:                P L S UNDERSCORE I N T E G E R;
NUMBER:                     N U M B E R;
DEC:                        D E C;
DECIMAL:                    D E C I M A L;
NUMERIC:                    N U M E R I C;
REAL:                       R E A L;
ROWID:                      R O W I D;
TIMESTAMP_WITH_TIMEZONE:    TIMESTAMP SPACE+ W I T H   SPACE+ T I M E SPACE+ Z O N E;
TIMESTAMP_WITHOUT_TIMEZONE: TIMESTAMP SPACE+ W I T H O U T  SPACE+ T I M E SPACE+ Z O N E;
VARCHAR2:                   V A R C H A R '2';
NVARCHAR:                   N V A R C H A R;
NVARCHAR2:                  N V A R C H A R '2';
CHAR_VARYING:               C H A R SPACE+ V A R Y I N G ;
CHARACTER_VARYING:          C H A R A C T E R SPACE+ V A R Y I N G ;
VARCHAR:                    V A R C H A R ;
XMLTYPE:                    X M L T Y P E;
BINARY:                      B I N A R Y;
VARBINARY:                  V A R B I N A R Y;
TEMPORARY:                  T E M P O R A R Y;
TEMP:                       T E M P;
IF:                         I F;
NOT:                        N O T;
EXISTS:                     E X I S T S;
PGLZ:                       'pglz';
LZ4:                        'lz4';
COLLATE:                    C O L L A T E;
COMPRESSION:                C O M P R E S S I O N;
PARTITION_BY:               P A R T I T I O N SPACE+ B Y;
INHERITS:                   I N H E R I T S;
DROP:                       D R O P;
STORAGE_PARAMETER:         'storage_parameter';
USING:                      U S I N G;
OF:                         O F;
RANGE:                      R A N G E;
LIST:                       L I S T;
HASH:                       H A S H;
WITHOUT:                    W I T H O U T;
OIDS:                       O I D S;
NONE:                       N O N E;
OWNED:                      O W N E D;
CYCLE:                      C Y C L E;
NO:                         N O;
CACHE:                      C A C H E;
NO_MINVALUE:                N O SPACE+ M I N V A L U E;
NO_MAXVALUE:                N O SPACE+ M A X V A L U E;
BY:                         B Y;
INCREMENT:                  I N C R E M E N T;
PARTITION_OF:               P A R T I T I O N SPACE+ O F;
FOR_VALUES:                 F O R SPACE+ V A L U E S;
ALWAYS:                     A L W A Y S;
AS:                         A S ;
STORED:                     S T O R E D;
NO_INHERIT:                 N O SPACE+ I N H E R I T;
EXCLUDE:                    E X C L U D E;
WHERE:                      W H E R E;
MATCH:                      M A T C H;
FULL:                       F U L L;
PARTIAL:                    P A R T I A L;
SIMPLE:                     S  I M P L E;
NO_UPDATE:                  N O SPACE+ U P D A T E;
GENERATED:                  G E N E R A T E D;
IDENTITY:                   I D E N T I T Y;
INDEXES:                    I N D E X E S;
STATISTICS:                 S T A T I S T I C S;
STORAGE:                    S T O R A G E;
ALL:                        A L L;
CONSTRAINTS:                C O N S T R A I N T S;
COMMENTS:                   C O M M E N T S;
EXCLUDING:                  E X C L U D I N G;
INCLUDING:                  I N C L U D I N G;
INCLUDE:                    I N C L U D E;
INDEX:                      I N D E X;
LAST:                       L A S T;
FIRST:                      F I R S T;
NULLS:                      N U L L S;
DESC:                       D E S C;
ASC:                        A S C;
IN:                         I N;
FROM:                       F R O M;
TO:                         T O;
MINVALUE:                   M I N V A L U E;
MAXVALUE:                   M A X V A L U E;
MODULUS:                    M O D U L U S;
REMINDER:                   R E M I N D E R;
SET_DEFAULT:                S E T SPACE+ D E F A U L T;
RESTRICT:                   R E S T R I C T;
NO_ACTION:                  N O SPACE+ A C T I O N;
BOOL:                       B O O L;
TEXT:                       T E X T;
SMALLINT:                   S M A L L I N T;
SERIAL:                     S E R I A L;
FLOAT8:                     F L O A T '8';
TIME:                       T I M E;
TIMESTAMPZ:                 T I M E S T A M P Z;
INTERVAL:                   I N T E R V A L;
JSON:                       J S O N;
JSONB:                      J S O N B;
UUID:                       U U I D;
BOX:                        B O X;
LINE:                       L I N E;
POINT:                      P O I N T;
LSEG:                       L S E G;
POLYGON:                    P O L Y G O N;
INET:                       I N E T;
MACADDR:                    M A C A D D R;
ON_UPDATE:                  O N SPACE+ U P D A T E;
ARRAYSYMBOL:                '[' SPACE* ']';
OPTIONS:                    O P T I O N S;
SUBPARTITION:               S U B P A R T I T I O N;
SUBPARTITIONS:              S U B P A R T I T I O N S;
VALUES:                     V A L U E S;
PARTITION:                  P A R T I T I O N ;
VALUES_LESS_THAN:            V A L U E S SPACE+ L E S S SPACE+ T H A N;
SUBPARTITION_BY:            S U B P A R T I T I O N SPACE+ B Y;
SUBPARTITION_TEMPLATE:      S U B P A R T I T I O N SPACE+ T E M P L A T E;
STORE_IN:                   S T O R E SPACE+ I N;
SUBPARTITONS:               S U B P A R T I T I O N S;
PARTITIONS:                 P A R T I T I  O N S;
AUTOMATIC:                  A U T O M A T I C;
DEFAULTS:                   D E F A U L T S;



BIGINT:                     B I G I N T;
INT4:                       I N T [4];
INT2:                       I N T [2];
INT8:                       I N T [8];
MONEY:                      M O N E Y;
FLOAT4:                     F L O A T [4];
PLS_LSN:                 P G [_] L S N;
STRING:                      S T R I N G;
TIME_WITHOUT_TIME_ZONE:     T I M E SPACE+ W I T H O U T SPACE+ T I M E SPACE+ Z O N E;
TIMESTAMP_WITH_TIME_ZONE:   T I M E S T S M P SPACE+ W I T H  SPACE+ T I M E SPACE+ Z O N E;
TIMESTAMP_WITHOUT_TIME_ZONE: T I M E S T A M P SPACE+ W I T H O U T SPACE+ T I M E SPACE+ Z O N E;
TIME_WITH_TIME_ZONE:        T I M E SPACE+ W I T H  SPACE+ T I M E SPACE+ Z O N E;
BIT:                        B I T;
REFCURSOR:                  R E F C U R S O R;

//Alphabet
fragment A:                                     [aA];
fragment B:                                     [bB];
fragment C:                                     [cC];
fragment D:                                     [dD];
fragment E:                                     [eE];
fragment F:                                     [fF];
fragment G:                                     [gG];
fragment H:                                     [hH];
fragment I:                                     [iI];
fragment J:                                     [jJ];
fragment K:                                     [kK];
fragment L:                                     [lL];
fragment M:                                     [mM];
fragment N:                                     [nN];
fragment O:                                     [oO];
fragment P:                                     [pP];
fragment Q:                                     [qQ];
fragment R:                                     [rR];
fragment S:                                     [sS];
fragment T:                                     [tT];
fragment U:                                     [uU];
fragment V:                                     [vV];
fragment W:                                     [wW];
fragment X:                                     [xX];
fragment Y:                                     [yY];
fragment Z:                                     [zZ];
DOLLAR: '$';
HASHSYM: '#';

//basic
LT_BRACKET:                             '(';
RT_BRACKET:                             ')';

SLASH:                                  '/' ;
DOUBLE_SLASH:                           '\\' ;
SEMI_COLON:                             ';';
SINGLE_QUOTATION:                       '\'';
DOUBLE_QUOTATION:                       '"';
COMMA:                                  [,];
SPACE:                                  [ ];
SKIPPER:                                [\t\r\n]->skip;

POINTER_SYMBOL:                         '=>';
DOT:                                    '.';
EQUAL_TO:                                  '=';
OR_OPERATOR:                            '|';
LT_SET_BRACKET:                         '[';
RT_SET_BRACKET:                         ']';
ASTRIEK:                                '*';
SMALLER_THAN:                           '<';
GREATER_THAN:                           '>';
PERCENTAGE:                             '%';
UNDERSCORE:                             '_';
ADD:                                    '+';
SUB:                                    '-';
COLON:                                  ':';
QUESTION_MARK:                          '?';
AND:                                    '&';
OR:                                     '|';
NOT_OPR:                                '!';

 DIGIT:                                 [0-9]+;
 LOWERCASE:                             [a-z]+;
 UPPERCASE:                             [A-Z]+;
 WORD:                                  (LOWERCASE | UPPERCASE|DOLLAR | DIGIT|HASHSYM | UNDERSCORE )+;


start:                                  (normalTable | typeTable  | partitionTable | materializedTable) space* semicolon?;
normalTable:                            createKeyWord space* (globalOrLocal? space* (temporaryType|unLogged) space*)? tableKeyWord space* ifNotExists? space* variableName
                                        leftBracketSpace ( (  ( space* columnDefinition ) | ( space* tableConstraint )| (likeTableDef ))
                                                                                                                 ( space* comma (( space* columnDefinition ) | ( space* tableConstraint)| (likeTableDef )))* ) rightBracketSpace


                                        ((space* inheritsKeyWord space* parentTable (space* comma space* parentTable)* )|
                                        (space* partitionByKeyWord space* ( range | list | hash ) space*       (  leftBracketSpace partitionDefinition  (space* comma space*  partitionDefinition )*  rightBracketSpace) )|
                                        ( space* usingKeyWord space* usingMethod )|
                                        (( space* withKeyWord leftBracketSpace storageParameterWithValue (space* comma space* storageParameterWithValue)*  rightBracketSpace )  | (space* withoutOIDS))|
                                        (space*  onCommit space* (preserveRows|deleteRows|drop) )|
                                        (space* tableSpace space* tablespaceName )
                                        )*;
materializedTable:                     createKeyWord space* (globalOrLocal? space* (temporaryType|unLogged) space*)? tableKeyWord space* ifNotExists? space* variableName space* asKeyWord space* fullSelectQuery;
fullSelectQuery:                        ~(SEMI_COLON|EOF)+;


likeTableDef:                          like space* likeTable (space*  likeTableOptions)*;

typeTable:                              createKeyWord space* (globalOrLocal? space* (temporaryType|unLogged) space*)? tableKeyWord space* ifNotExists? space* variableName
                                        space* ofKeyWord space* typeName
                                        ((leftBracketSpace ( ( (  space* columnName (space+ withKeyWord space+ options)?  ( space* columnConstraint )? )| ( space* tableConstraint ) )
                                                                                                                 ( space* comma ( (  space* columnName (space+ withKeyWord space+ options)?  ( space* columnConstraint )? )| ( space* tableConstraint )) )*) rightBracketSpace)|


                                        (space* partitionByKeyWord space* ( range | list | hash ) space*       (  leftBracketSpace partitionDefinition  (space* comma space*  partitionDefinition )*  rightBracketSpace) )|
                                        ( space* usingKeyWord space* usingMethod )|
                                        (( space* withKeyWord leftBracketSpace storageParameterWithValue (space* comma space* storageParameterWithValue)*  rightBracketSpace )  | (space* withoutOIDS))|
                                        (space*  onCommit space* (preserveRows|deleteRows|drop) )|
                                        (space* tableSpace space* tablespaceName )
                                        )*;



partitionTable:                         createKeyWord space* (globalOrLocal? space* (temporaryType|unLogged) space*)? tableKeyWord space* ifNotExists? space* variableName
                                        space* partitionOfKeyWord space* parentTable
                                         ((leftBracketSpace ( ( (  space* columnName (space+ withKeyWord space+ options)?  ( space* columnConstraint )? )| ( space* tableConstraint ) )
                                                                                                                                                         ( space* comma ( (  space* columnName (space+ withKeyWord space+ options)?  ( space* columnConstraint )? )| ( space* tableConstraint )) )*) rightBracketSpace)|

                                          ( (space* forValuesKeyWord space* partitionBoundarySpec)|(space* defaultKeyWord))|
                                         (space* partitionByKeyWord space* ( range | list | hash ) space*       (  leftBracketSpace partitionDefinition  (space* comma space*  partitionDefinition )*  rightBracketSpace) )|
                                         ( space* usingKeyWord space* usingMethod )|
                                         (( space* withKeyWord leftBracketSpace storageParameterWithValue (space* comma space* storageParameterWithValue)*  rightBracketSpace )  | (space* withoutOIDS))|
                                         (space*  onCommit space* (preserveRows|deleteRows|drop) )|
                                         (space* tableSpace space* tablespaceName )
                                         )*;


//columnDefinition
columnDefinition:                       columnName space* dataType (space*  compressionKeyWord space* compressionMethod)?  (space*  collateKeyWord space collationName)?  (space* columnConstraint)?;

compressionMethod:                      pglz|lz4;



//COLUMN CONSTRAINTS
columnConstraint:                             ((space* notNullKeyWord) |(space* nullKeyWord))? ( space* constraintKeyWord space* constraintName)?(
                                              ((space* notNullKeyWord) |(space* nullKeyWord))|
                                                checkConstraint|
                                                columnDefault|
                                                (space* generated space* always space* asKeyWord leftBracketSpace generatedExpression rightBracketSpace space*  stored) |
                                                generatedClause|
                                                columnUnique |
                                                columnPrimary |
                                                columnForeignConstraint
                                                )*;

columnPrimary:                         (space* primaryKey space* indexParameters);

columnUnique:                          (space* unique space* indexParameters);

columnDefault:                         (space* defaultKeyWord space*  defaultExpression );

columnForeignConstraint:                        (space* references space* refTable (leftBracketSpace refColumn rightBracketSpace)?
                                                                                                 (space* match space* (full | partial | simple))?
                                                                                                 (space* onDelete space* deleteReferentialAction)?
                                                                                                 (space* onUpdate space* updateReferentialAction)?
                                                                                                 (space* (deferrable | notDeferrable))?
                                                                                                 (space* (initiallyDeferred | initiallyImediate))?
                                                                                                 );

deleteReferentialAction:                       noAction | restrict | cascade | setNull | setDefault;


updateReferentialAction:                       noAction | restrict | cascade | setNull | setDefault;

generatedClause:                               (space* generated space* (always |(by space+ defaultKeyWord)) space* asKeyWord space* identity space* (leftBracketSpace sequenceOptions rightBracketSpace)? );

checkConstraint:                               (space* checkKeyWord ((leftBracketSpace expression rightBracketSpace)|expression) space* noInherit?);


tableConstraint:                               (space* constraintKeyWord space* constraintName)? (
                                               checkConstraint|
                                               tableUnique|
                                               tablePrimary |
                                               tableExclude |
                                                tableForeignConstraint
                                                )+;

tableExclude:                                   (space* exclude  (space+ usingKeyWord space* indexMethod)?
                                                                  (space* leftBracketSpace excludeElement space* withKeyWord space* operator)(space* comma (space*  excludeElement space* withKeyWord space* operator))* rightBracketSpace
                                                                   space* indexParameters (space* where space* leftBracketSpace predicate rightBracketSpace)?);

tablePrimary:                                   (space* primaryKey space* leftBracketSpace (columnName (space* comma space* columnName)*) rightBracketSpace space* indexParameters);

tableUnique:                                    (space* unique space* leftBracketSpace (columnName (space* comma space* columnName)*) rightBracketSpace space* indexParameters);

tableForeignConstraint:                         (space* foreignKey space* leftBracketSpace (columnName (space* comma space* columnName)*) rightBracketSpace space*
                                                                                                  references space* refTable (space* leftBracketSpace (refColumn (space* comma space* refColumn)*) rightBracketSpace space*)?
                                                                                                                                                 (space* match space* (full | partial | simple))?
                                                                                                                                                 (space* onDelete space* deleteReferentialAction)?
                                                                                                                                                 (space* onUpdate space* updateReferentialAction)?
                                                                                                                                                 (space* (deferrable | notDeferrable))?
                                                                                                                                                 (space* (initiallyDeferred | initiallyImediate))?
                                                                                                                                                 );


//partitionDefinition
partitionDefinition:                    (   (partitionColumnName |  ( partitionExpression)) (space*  collateKeyWord space collationName)? (space* opClass)?);
partitionExpression:                   expression+;
//and partition_bound_spec is:
partitionBoundarySpec:                  (space* inKeyWord leftBracketSpace inPartitionBoundaryExpression (space* comma space* inPartitionBoundaryExpression)* rightBracketSpace) |
                                        ((space* fromKeyWord  leftBracketSpace (fromPartitionBoundaryExpression) (space* comma space* (fromPartitionBoundaryExpression) )* rightBracketSpace)
                                        (space* toKeyWord  leftBracketSpace (toPartitionBoundaryExpression) (space* comma space* (toPartitionBoundaryExpression) )* rightBracketSpace) )|
                                        (space* withKeyWord leftBracketSpace (modulus space* modulusNumericLiteral) space* comma space* (reminder space* reminderNumericLiteral) rightBracketSpace);

modulusNumericLiteral:                  numericLiteral;

reminderNumericLiteral:                 numericLiteral;


toPartitionBoundaryExpression:          maxValue | minValue | partitionBoundaryExpression;

fromPartitionBoundaryExpression:        minValue | maxValue | partitionBoundaryExpression;

inPartitionBoundaryExpression:          partitionBoundaryExpression;

//exclude_element in an EXCLUDE constraint is:
excludeElement:                         (space* (columnName | expression) (space* opClass)? (space* (asc|desc))? (space* nulls space* (first | last))?);
//index parameter
indexParameters:                        (space* includeKeyWord leftBracketSpace (columnName (space* comma space* columnName)*) rightBracketSpace )?
                                        ( space* withKeyWord leftBracketSpace storageParameterWithValue (space* comma space* storageParameterWithValue)*  rightBracketSpace )?
                                        (space* usingKeyWord space* index space* (tableSpace tablespaceName)?)?;

//liketable options
likeTableOptions:                       space* (including | excluding ) space* (comments | compression | constraints | defaults | generated | identity | indexes | statistics | storage | all );





//storageParameter
storageParameterWithValue:              space* storageParameterKeyWord space* equalTo space* storageParamtervalue;



sequenceOptions:                        (space* increment (space* by)? space* incrementParam)?
                                        ((space* minValue space* minValueParam) | (space* noMinValue))?
                                        ((space* maxValue space* maxValueParam) | (space* noMaxValue))?
                                        (space* start (space* withKeyWord)? space* startParam)?
                                        (space* cache space* cacheParam)?
                                        (space* (no? space*) cycle)?
                                        (space* owned space* by space* (objectName | none))?;

storageParameterKeyWord:               ~(EQUAL_TO)*;

dataType:                               (dataTypeName|(INTERVAL space+ intervalParam)| userDefined) space* length? arraySymbol*;


arraySymbol:                            (SPACE * ARRAYSYMBOL);
parallelValue:                          DIGIT+;

subPartition:                           SUBPARTITION;
values:                                 VALUES;
partition:                              PARTITION;
valuesLessThan:                          VALUES_LESS_THAN;
subPartitionBy:                         SUBPARTITION_BY;
subPartitionTemplate:                   SUBPARTITION_TEMPLATE;
interval:                               INTERVAL;
storeIn:                                STORE_IN;
subPartitions:                          SUBPARTITIONS;
partitions:                             PARTITIONS;
automatic:                              AUTOMATIC;

generatedExpression:                    expression;
subPartitionName:                       word;
value:                                  (SINGLE_QUOTATION ~(SINGLE_QUOTATION)+ SINGLE_QUOTATION) | (DOUBLE_QUOTATION ~(DOUBLE_QUOTATION) DOUBLE_QUOTATION ) | word;
partitionName:                          word;
subPartitionColumnName:                 word;
constant:                               .*?;
subPartitionTableSpaceName:             word;
partitionTableSpaceName:                word;
subPartitionNumbers:                    DIGIT+;
partitionNumbers:                       DIGIT+;
userDefined:                            variableName;
length:                                 (leftBracketSpace space* precision space* comma? space* scale? space* rightBracketSpace)?;
precision:                              DIGIT+;
scale:                                  DIGIT+;
withTimestampOption:                    TIMESTAMP_WITH_TIMEZONE;
opClass:                                word;
storageParamtervalue:                   word;
noAction:                               NO_ACTION;
restrict:                               RESTRICT;
cascade:                                CASCADE;
setNull:                                SET_NULL;
setDefault:                             SET_DEFAULT;
usingMethod:                            word;
partitionColumnName:                    columnName;
partitionBoundaryExpression:            expression;
inKeyWord:                              IN;
fromKeyWord:                            FROM;
toKeyWord:                              TO;
minValue:                               MINVALUE;
maxValue:                               MAXVALUE;
modulus:                                MODULUS;
reminder:                               REMINDER;
numericLiteral:                         DIGIT;
asc:                                    ASC;
desc:                                   DESC;
nulls:                                  NULLS;
first:                                  FIRST;
last:                                   LAST;
index:                                  INDEX;
options:                                OPTIONS;
includeKeyWord:                         INCLUDE;
including:                              INCLUDING;
excluding:                              EXCLUDING;
comments:                               COMMENTS;
compression:                            COMPRESSION;
constraints:                            CONSTRAINTS;
defaults:                               DEFAULTS;
generated:                              GENERATED;
identity:                               IDENTITY;
indexes:                                INDEXES;
statistics:                             STATISTICS;
storage:                                STORAGE;
all:                                    ALL;
foreignKey:                             FOREIGN_KEY;
exclude:                                EXCLUDE;
where:                                  WHERE;
match:                                  MATCH;
full:                                   FULL;
partial:                                PARTIAL;
simple:                                 SIMPLE;
onDelete:                               ON_DELETE;
onUpdate:                               ON_UPDATE;
deferrable:                             DEFERRABLE;
notDeferrable:                          NOT_DEFERRABLE;
initiallyDeferred:                      INITIALLY_DEFERRED;
initiallyImediate:                      INITIALLY_IMMEDIATE;
constraintKeyWord:                      CONSTRAINT;
constraintName:                         word;
notNullKeyWord:                         NOT_NULL;
nullKeyWord:                            NULL;
checkKeyWord:                           CHECK;
like:                                   LIKE;
defaultExpression:                       expression;
always:                                 ALWAYS;
asKeyWord:                              AS;
stored:                                 STORED;
noInherit:                              NO_INHERIT;
unique:                                 UNIQUE;
primaryKey:                             PRIMARY_KEY;
references:                             REFERENCES;
likeTable:                              variableName;
refTable:                               variableName;
refColumn:                              word;
columnName:                             word;
collationName:                          word;
typeName:                               variableName;
compressionKeyWord:                     COMPRESSION;
pglz:                                   PGLZ;
lz4:                                    LZ4;
collateKeyWord:                         COLLATE;
partitionByKeyWord:                     PARTITION_BY;
inheritsKeyWord:                        INHERITS;
range:                                  RANGE;
list:                                   LIST;
hash:                                   HASH;
withoutOIDS:                            WITHOUT SPACE* OIDS;
tableSpace:                             TABLESPACE;
tablespaceName:                         variableName;
usingKeyWord:                           USING;
withKeyWord:                            WITH;
equalTo:                                EQUAL_TO;
parentTable:                            variableName;
ofKeyWord:                              OF;
partitionOfKeyWord:                     PARTITION_OF;
forValuesKeyWord:                       FOR_VALUES;
defaultKeyWord:                         DEFAULT;
expression:                            ( ~(RT_BRACKET|SEMI_COLON |COMMA)+ ) | (word leftBracketSpace (space* expression (space* comma space* expression)*) rightBracketSpace) | (leftBracketSpace expression rightBracketSpace);
indexMethod:                            word;
operator:                               (AND | OR | equalTo | SMALLER_THAN | GREATER_THAN | NOT_OPR )*;
predicate:                              expression;
increment:                              INCREMENT;
by:                                     BY;
noMinValue:                             NO_MINVALUE;
noMaxValue:                             NO_MAXVALUE;
cache:                                  CACHE;
no:                                     NO;
cycle:                                  CYCLE;
owned:                                  OWNED;
none:                                   NONE;
tableName:                              word;
cacheParam:                             .*?;
startParam:                             .*?;
incrementParam:                         .*?;
minValueParam:                          .*?;
maxValueParam:                          .*?;
intervalParam:                          .*?;

//SYMBOLS
leftBracket:                            LT_BRACKET;
leftBracketSpace:                       space* leftBracket space*;
rightBracket:                           RT_BRACKET;
rightBracketSpace:                      space* rightBracket space*;
space:                                  SPACE;
comma:                                  COMMA;
onCommit:                               ON_COMMIT;
preserveRows:                           PRESERVE_ROWS;
deleteRows:                             DELETE_ROWS;
drop:                                   DROP;


//KEYWORDS:
semicolon:                              SEMI_COLON;
createKeyWord:                          CREATE;
globalOrLocal:                          GLOBAL|LOCAL;
temporaryType:                          TEMPORARY|TEMP;
unLogged:                               UNLOGGED;
tableKeyWord:                           TABLE;
ifNotExists:                            IF space* NOT space* EXISTS;

dataTypeName:                          BLOB|
                                       LONG_RAW|
                                       RAW|
                                       BIGINT|
                                       SMALLINT|
                                       BOOLEAN|
                                       BINARY_INTEGER|
                                       DOUBLE_PRECISION|
                                       INT|
                                       INT4|
                                       INT2|
                                       INT8|
                                       INTEGER|
                                       DECIMAL|
                                       DEC|
                                       MONEY|
                                       TIME|
                                       TEXT|
                                       NUMBER|
                                       NUMERIC|
                                       FLOAT|
                                       FLOAT8|
                                       FLOAT4|
                                       PLS_LSN|
                                       PLS_INTEGER|
                                       REAL|
                                       ROWID|
                                       CHAR|
                                       CHARACTER|
                                       CLOB|
                                       LONG|
                                       LONG_VARCHAR|
                                       BYTEA|
                                       CHARACTER_VARYING|
                                       NVARCHAR|
                                       NVARCHAR2|
                                       STRING|
                                       VARCHAR|
                                       VARCHAR2|
                                       BINARY|
                                       VARBINARY|
                                       DATE|
                                       TIMESTAMP|
                                       TIME_WITHOUT_TIME_ZONE|
                                       TIME_WITH_TIME_ZONE|
                                       TIMESTAMP_WITH_TIME_ZONE|
                                       TIMESTAMP_WITHOUT_TIME_ZONE|
                                       XMLTYPE|
                                       UUID|
                                       BIT|
                                       REFCURSOR|
                                       JSON |
                                       JSONB |
                                       UUID |
                                       BOX |
                                       LINE |
                                       POINT |
                                       LSEG |
                                       POLYGON |
                                       INET |
                                      MACADDR;


//variable Name
variableName:                           ((primaryName  space* dot space* )? space* secondaryName space* dot space*)? space* objectName;
primaryName:                            word;
dot:                                    DOT;
secondaryName:                           word ;
objectName:                               word ;
word:                                 (DOUBLE_QUOTATION ((WORD)|~(DOUBLE_QUOTATION)+) DOUBLE_QUOTATION)| ~(SPACE| COMMA | LT_BRACKET | RT_BRACKET |SEMI_COLON | CONSTRAINT );

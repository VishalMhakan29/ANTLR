grammar PostgresAlterTable;

ALTER:                           A L T E R;
TABLE:                           T A B L E;
IF_EXISTS:                       I F SPACE E X I S T S;
ONLY:                            O N L Y;
RENAME:                          R E N A M E;
COLUMN:                          C O L U M N;
TO:                              T O;
CONSTRAINT:                      C O N S T R A I N T;
SET:                             S E T;
SCHEMA:                          S C H E M A;
ALL:                             A L L;
IN:                              I N;
NOT:                             N O T;
INDEX:                          I N D E X;
TABLESPACE:                      T A B L E S P A C E;
OWNED_BY:                        O W N E D SPACE B Y;
NOWAIT:                          N O W A I T;
ATTACH:                          A T T A C H;
PARTITION:                       P A R T I T I O N;
FOR_VALUES:                      F O R SPACE V A L U E S;
DEFAULT:                         D E F A U L T;
DETACH:                          D E T A C H;
CONCURRENTLY:                    C O N C U R R E N T L Y;
FINALIZE:                        F I N A L I Z E;
ADD:                             A D D;
IF_NOT_EXISTS:                   I F SPACE N O T SPACE E X I S T S;
COLLATE:                         C O L L A T E;
RESTRICT:                        R E S T R I C T;
CASCADE:                         C A S C A D E;
SET_DATA:                        S E T SPACE D A T A;
TYPE:                            T Y P E;
USING:                           U S I N G;
NOT_NULL:                        N O T SPACE N U L L;
NO_CYCLE:                        N O SPACE C Y C L E;
ADD_GENERATED:                   A D D SPACE G E N E R A T E D;
ALWAYS:                          A L W A Y S;
//ALWAYS_AS:                       A L W A Y S SPACE A S ;
BY_DEFAULT:                      B Y SPACE D E F A U L T;
AS_IDENTITY:                     A S SPACE I D E N T I T Y;
RESTART:                         R E S T A R T;
WITH:                            W I T H;
NO:                              N O;
DROP:                            D R O P;
DROP_IDENTITY:                   D R O P SPACE I D E N T I T Y;
SET_STATISTICS:                  S E T SPACE S T A T I S T I C S;
RESET:                           R E S E T;
TRIGGER:                         T R I G G E R;
USER:                            U S E R;
SET_STORAGE:                     S E T SPACE S T O R A G E;
START_WITH:                      S T A R T SPACE W I T H;
START:                           S T A R T;
PLAIN:                           P L A I N;
EXTERNAL:                        E X T E R N A L;
EXTENDED:                        E X T E N D E D;
MAIN:                            M A I N;
SET_COMPRESSION:                 S E T SPACE C O M P R E S S I O N;
NOT_VALID:                       N O T SPACE V A L I D;
DEFERRABLE:                      D E F E R R A B L E;
NOT_DEFERRABLE:                  N O T SPACE D E F E R R A B L E;
INITIALLY_DEFERRED:              I N I T I A L L Y SPACE D E F E R R E D;
INITIALLY_IMMEDIATE:             I N I T I A L L Y SPACE I M M E D I A T E;
VALIDATE_CONSTRAINT:             V A L I D A T E SPACE C O N S T R A I N T;
DISABLE_TRIGGER:                 D I S A B L E SPACE T R I G G E R;
ENABLE_TRIGGER:                  E N A B L E SPACE T R I G G E R;
ENABLE_REPLICA_TRIGGER:          E N A B L E SPACE R E P L I C A SPACE T R I G G E R;
ENABLE_ALWAYS_TRIGGER:           E N A B L E SPACE A L W A Y S SPACE T R I G G E R;
DISABLE:                         D I S A B L E;
RULE:                            R U L E;
ENABLE:                          E N A B L E;
REPLICA_RULE:                    R E P L I C A SPACE R U L E;
ALWAYS_RULE:                     A L W A Y S SPACE R U L E;
FORCE:                           F O R C E;
NO_FORCE:                        N O SPACE F O R C E;
ROW_LEVEL_SECURITY:              R O W SPACE L E V E L SPACE S E C U R I T Y;
CLUSTER_ON:                      C L U S T E R SPACE O N;
WITHOUT_CLUSTER:                 W I T H O U T SPACE C L U S T E R;
WITHOUT_OIDS:                    W I T H O U T SPACE O I D S;
LOGGED:                          L O G G E D;
UNLOGGED:                        U N L O G G E D;
NOT_OF:                          N O T SPACE O F;
OF:                              O F;
OWNER_TO:                        O W N E R SPACE T O;
CURRENT_ROLE:                    C U R R E N T UNDERSCORE R O L E;
CURRENT_USER:                    C U R R E N T UNDERSCORE U S E R;
SESSION_USER:                    S E S S I O N UNDERSCORE U S E R;
REPLICA_IDENTITY:                R E P L I C A SPACE I D E N T I T Y;
CHECK:                           C H E C K;
UNIQUE:                          U N I Q U E;
USING_INDEX:                     U S I N G SPACE I N D E X;
FULL:                            F U L L;
NOTHING:                         N O T H I N G;
INHERIT:                         I N H E R I T;
GENERATED:                       G E N E R A T E D;
AS:                              A S;
EXCLUDE:                        E X C L U D E;
SET_NULL:                        S E T SPACE+ N U L L;
SET_NOT_NULL:                    S E T SPACE+ NOT SPACE+ N U L L;
PRIMARY_KEY:                     P R I M A R Y SPACE K E Y;
IDENTITY:                        I D E N T I T Y;
MATCH_FULL:                      M A T C H SPACE F U L L;
MATCH_PARTIAL:                   M A T C H SPACE P A R T I A L;
MATCH_SIMPLE:                    M A T C H SPACE S I M P L E;
ON_DELETE:                       O N SPACE D E L E T E;
ON_UPDATE:                       O N SPACE U P D A T E;
ASC:                             A S C;
DESC:                            D E S C;
NULLS:                           N U L L S;
NO_ACTION:                       N O SPACE A C T I O N;
FIRST:                           F I R S T;
FOREIGN_KEY:                     F O R E I G N SPACE K E Y;
WHERE:                           W H E R E;
LAST:                            L A S T;
USING_INDEX_TABLESPACE:          U S I N G SPACE I N D E X SPACE T A B L E S P A C E;
INCLUDE:                         I N C L U D E;
STORED:                          S T O R E D;
INCREMENT_BY:                    I N C R E M E N T SPACE B Y;
INCREMENT:                       I N C R E M E N T;
NO_MINVALUE:                     N O SPACE M I N V A L U E;
MINVALUE:                        M I N V A L U E;
MAXVALUE:                        M A X V A L U E;
NO_MAXVALUE:                     N O SPACE M A X V A L U E;
CYCLE:                           C Y C L E;
NO_ORDER:                       N O SPACE O R D E R;
NO_CACHE:                       N O SPACE C A C H E;
ORDER:                          O R D E R;
CACHE:                          C A C H E;
BTREE:                          B T R E E;
HASH:                           H A S H ;
GIST:                           G I S T;
SPGIST:                         S P G I S T;
GIN:                            G I N ;
BRIN:                           B R I N;
REFERENCES:                     R E F E R E N C E S;
NONE:                           N O N E;
DOLLAR: '$';

//BASIC
LT_BRACKET:                                     '(';
RT_BRACKET:                                     ')';

SYMBOL9:                                        [_]|[/][-];
SLASH:                                          '/' |  '\\' ;
SEMI_COLON:                                     ';';
QUOTATION:                                      ["]|['];
COMMA:                                          [,];
SPACE:                                          [ ]+;
SKIPPER:                                        [\t\r\n]->skip;
POINTER_SYMBOL:                                 '=>';
DOT:                                            '.';
NUMS:                                           DIGIT+;
NUMBER:                                         (DIGIT | '+' | '-'|'.')+;
EQUAL:                                          '=';
OR_OPERATOR:                                    '|';
LT_SET_BRACKET:                                 '[';
RT_SET_BRACKET:                                 ']';
ASTRIEK:                                        '*';
SMALLER_THAN:                                   '<';
GREATER_THAN:                                   '>';
PERCENTAGE:                                     '%';

ADD_SYMBOL:                                            '+';
SUB_SYMBOL:                                            '-';
HASHSYM:                                        '#';
AND:                                    '&';
OR:                                     '|';
NOT_OPR:                                '!';
WORD:                                           (LOWERCASE | UPPERCASE | DOLLAR|SYMBOL9|HASHSYM |NUMS )+ ;
DIGIT:                                          [0-9]+;
LOWERCASE:                                      [a-z]+;
UPPERCASE:                                      [A-Z]+;
COLON:                                          ':';
QUESTION_MARK:                                  '?';
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

//NUMBERS
fragment ZERO:                                  [0];
fragment ONE:                                   [1];
fragment TWO:                                   [2];
fragment THREE:                                 [3];
fragment FOUR:                                  [4];
fragment FIVE:                                  [5];
fragment SIX:                                   [6];
fragment SEVEN:                                 [7];
fragment EIGHT:                                 [8];
fragment NINE:                                  [9];

//SYMBOL
fragment UNDERSCORE:                            [_];

space:                                          SPACE*;
start:                                          space? query space? SEMI_COLON? space? EOF;
query:                                          ALTER space TABLE space ifExists? space? only? space? tableName space actionList;
ifExists:                                       IF_EXISTS;
only:                                           ONLY;
tableName:                                      fullNameModel;
fullNameModel:                                  ( (primaryName space? DOT)? space? secondayName space? DOT)? space? objectName;
primaryName:                                    name;
secondayName:                                   name;
objectName:                                     name;
name:                                           (QUOTATION space? variable space? QUOTATION ) | handle;
variable:                                       space? handle space? (space? handle space?)* ;
handle:                                         WORD;
actionList:                                     action space? (COMMA space? action space?)*;
action:                                         actionType space (columnAlter  | tableAlter | rowLevelSecurity | triggerClause);

triggerClause:                                  triggerKw space (triggerName | allKw | userKw);
triggerKw:                                      TRIGGER;
triggerName:                                    name;
allKw:                                          ALL;
userKw:                                         USER;
storageOption:                                  SET_STORAGE SPACE storageOptionValue;
storageOptionValue:                             WORD;
compressionOption:                              SET_COMPRESSION SPACE compressionMethod;

compressionMethod:                              WORD;
rowLevelSecurity:                               ROW_LEVEL_SECURITY;
actionType:                                     alter | add | drop | enable | disable | force | noForce | clusterOn | set | resets | inherit | noInheritKeyword | of | notOf | ownerTo | replicaIdentity;
alter:                                          ALTER;
add:                                            ADD;
drop:                                           DROP;
enable:                                         ENABLE;
disable:                                        DISABLE;
force:                                          FORCE;
noForce:                                        NO_FORCE;
clusterOn:                                      CLUSTER_ON;
set:                                            SET;
resets:                                          RESET;
inherit:                                        INHERIT;
noInheritKeyword:                               (NO SPACE INHERIT);
of:                                             OF;
notOf:                                          NOT_OF;
ownerTo:                                        OWNER_TO;
replicaIdentity:                                REPLICA_IDENTITY;
columnAlter:                                    columnKeyword? space?  existOption? space? columnName space (columnAlterConstraint|collationOption| storageOption);
columnKeyword:                                  COLUMN;
existOption:                                    (ifExists | ifNotExist);
ifNotExist:                                     IF_NOT_EXISTS;
columnName:                                     name;
columnDataType:                                 space .*? space;
collationOption:                                collateKeyword space collationProperties;
collateKeyword:                                 COLLATE;
collationProperties:                            space . space; //TODO
columnAlterConstraint:                          ( (constraintColumnSegment | notNullOption| nullOption| checkColumnSegment | uniqueColumnSegment | primaryColumnSegment |  generatedAsIdentitySegment  /*| generatedAsStoredSegment*/ | referenceSegement|defaultSegement |  restartWithOption ) space? )+ ;

restartWithOption:                              RESTART space WITH space restartWithValue;

restartWithValue:                               NUMS;
constraintColumnSegment:                        constraintKeyword? space constraintName;
defaultSegement:                               (setKeyword SPACE defaultKeyword) space? (LT_BRACKET? defaultValue RT_BRACKET?);
defaultKeyword:                                DEFAULT;
setKeyword:                                    SET;
notNullOption:                                  SET_NOT_NULL;
nullOption:                                     SET_NULL;
defaultValue:                                   ~(SEMI_COLON)+;
constraintKeyword:                              CONSTRAINT;
checkColumnSegment:                             checkKeyword space? LT_BRACKET space? expression space? RT_BRACKET space? noInheritKeyword?;
uniqueColumnSegment:                            uniqueKeyword space? indexParameters?;
checkKeyword:                                   CHECK;
uniqueKeyword:                                  UNIQUE;
expression:                                     .*?;
constraintName:                                 name;
primaryColumnSegment:                           primaryKeyword space? indexParameters?;
primaryKeyword:                                 PRIMARY_KEY;
//generatedAsStoredSegment:                       generatedKeyword SPACE alwaysAsKeyword space? (LT_BRACKET generationExpression RT_BRACKET) space? storedKeyword;
generatedKeyword:                               GENERATED;
//alwaysAsKeyword:                                ALWAYS_AS;
generationExpression:                           expression;
storedKeyword:                                  STORED;
generatedAsIdentitySegment:                      ADD_GENERATED  space? alwaysByDefaultOption space? asIdentityKeyword space?   sequenceOption ;
alwaysByDefaultOption:                          (alwaysKeyword | byDefaultKeyword);
alwaysKeyword:                                  ALWAYS;
byDefaultKeyword:                               BY_DEFAULT;
asIdentityKeyword:                              AS_IDENTITY;
sequenceOption:                                 LT_BRACKET SPACE* (SPACE?(startWith | incrementBy | minvalueOption | maxValueOption | cycleOption | cacheOption | orderOption | ownedOption ))+ SPACE* RT_BRACKET;
startWith:                                      startWithKeyword space startInteger;
startInteger:                                   numericSymbol? space? NUMS;
startWithKeyword:                               START | START_WITH;
incrementBy:                                    incrementByKeyword space incrementInteger;
incrementByKeyword:                             INCREMENT_BY | INCREMENT;
incrementInteger:                               numericSymbol? space? NUMS;

minvalueOption:                                 (noMinValueKeyword | minValue);
noMinValueKeyword:                              NO_MINVALUE;
minValue:                                       minValueKeyword space? minValueInteger;
minValueKeyword:                                MINVALUE;
minValueInteger:                                numericSymbol? space? NUMS;

maxValueOption:                                 (noMaxValueKeyword | maxValue);
noMaxValueKeyword:                              NO_MAXVALUE;
maxValue:                                       maxValueKeyword space? maxValueInteger;
maxValueKeyword:                                MAXVALUE;
maxValueInteger:                                numericSymbol? space?  NUMS;

cycleOption:                                    noCycleKeyword | cycleKeyword;
noCycleKeyword:                                 NO_CYCLE ;
cycleKeyword:                                   CYCLE;

cacheOption:                                    cache | noCache ;
cache:                                          CACHE space? cacheInteger;
cacheInteger:                                  numericSymbol? space? NUMS;
noCache:                                       NO_CACHE;

orderOption:                                    orderKeyword | noOrderKeyword;
orderKeyword:                                   ORDER;
noOrderKeyword:                                 NO_ORDER;
ownedOption:                                    OWNED_BY space? (ownedByName|noneKw);
ownedByName:                                    fullNameModel;
numericSymbol:                                  (ADD_SYMBOL | SUB_SYMBOL);
noneKw:                                         NONE;
deferableOption:                                 deferableKeyword | notDeferableKeyword;
deferableKeyword:                                DEFERRABLE;
notDeferableKeyword:                             NOT_DEFERRABLE;

intitallyOption:                                intitallyDeferedKeyword | intitallyImmediateKeyword;
intitallyDeferedKeyword:                        INITIALLY_DEFERRED;
intitallyImmediateKeyword:                      INITIALLY_IMMEDIATE;

tableAlter:                                     ((tableConstraintSegment | tableCheckSegement | tableUniqueSegment | tablePrimarySegment | tableForeignSegment |tableExclude| intitallyOption |  deferableOption | inheritsTableName ) space)*;
inheritsTableName:                              fullNameModel;
tableConstraintSegment:                         constraintKeyword space constraintName;
tableCheckSegement:                             checkKeyword space? LT_BRACKET  space? checkExpression space? RT_BRACKET space? noInheritKeyword?;
checkExpression:                                expression;
tableUniqueSegment:                             uniqueKeyword space? LT_BRACKET space? nameList space? RT_BRACKET indexParameters?;
nameList:                                       name space? (COMMA? space? name space?)*;
indexParameters:                                ( (space? includeKeyWord leftBracketSpace (columnName (space? comma space? columnName)*) rightBracketSpace )?
                                                 ( space? withKeyWord leftBracketSpace storageParameterWithValue (space? comma space? storageParameterWithValue)*  rightBracketSpace )?
                                                 (space? usingKeyWord space? index space? (tableSpace tablespaceName)?)?);
tablespaceName:                                 WORD;
comma:  COMMA;
usingKeyWord:                           USING;
index:                                  INDEX;
tableSpace:                                 TABLESPACE;
storageParameterWithValue:              space? storageParameterKeyWord space? equalTo space? storageParamtervalue;

storageParameterKeyWord:               ~(EQUAL)*;
equalTo:                                EQUAL;
storageParamtervalue:                   WORD;
includeKeyWord:                                 INCLUDE;
leftBracketSpace:                               space? LT_BRACKET space?;
rightBracketSpace:                               space? RT_BRACKET space?;
withKeyWord:                                    WITH;
tablePrimarySegment:                            primaryKeyword space? (LT_BRACKET space? nameList space? RT_BRACKET) space? includeKeyWord?;

tableForeignSegment:                            foreignKeyword space? (LT_BRACKET space? nameList space? RT_BRACKET) space REFERENCES referenceTableName space? (LT_BRACKET space? referenceNameList space? RT_BRACKET)? space? matchOption? space? onDeleteOption? space? onUpdateOption? ;
matchOption:                                    (matchFullKeyword | matchPartialKeyword | matchSimpleKeyword);
matchFullKeyword:                               MATCH_FULL;
matchPartialKeyword:                            MATCH_PARTIAL;
matchSimpleKeyword:                             MATCH_SIMPLE;
foreignKeyword:                                 FOREIGN_KEY;
referenceTableName:                             fullNameModel;
referenceNameList:                              nameList;
onDeleteOption:                                 onDeleteKeyword space? referentialAction;
onDeleteKeyword:                                ON_DELETE;
referentialAction:                              (cascadeKeyword | setNullKeyword | noActionKeyword | restrictKeyword ) ;
noActionKeyword:                                NO_ACTION;
restrictKeyword:                                RESTRICT;
cascadeKeyword:                                 CASCADE;
setNullKeyword:                                 SET_NULL;
onUpdateOption:                                 onUpdateKeyword space? referentialAction;
onUpdateKeyword:                                ON_UPDATE;
referenceSegement:                              referencesKeyword space? refTableName space? refColumnName? space? matchOption? space? onDeleteOption? space? onUpdateOption?;
referencesKeyword:                              REFERENCES;
refTableName:                                   objectName;
refColumnName:                                  name;
tableExclude:                                   (space? exclude  (space? usingKeyWord space? indexMethod)?
                                                                  (space? leftBracketSpace excludeElement space? withKeyWord space? operator)(space? comma (space?  excludeElement space? withKeyWord space? operator))* rightBracketSpace
                                                                   space? indexParameters (space? where space? leftBracketSpace predicate rightBracketSpace)?);
exclude:                                EXCLUDE;
indexMethod:                            WORD;
opClass:                                WORD;
asc:                                    ASC;
desc:                                   DESC;
nulls:                                  NULLS;
first:                                  FIRST;
last:                                   LAST;
excludeElement:                         (space? (columnName | expression) (space? opClass)? (space? (asc|desc))? (space? nulls space? (first | last))?);
operator:                               (AND | OR | equalTo | SMALLER_THAN | GREATER_THAN | NOT_OPR )*;
predicate:                              expression;
where:                                  WHERE;
//
//tableExcludeSegment:                            excludeKeyword? (usingKeyword usingMethod)?
//usingMethod:                                    (btree | hash | gist | spgist | gin | brin);
//
//btree:                                          BTREE;
//hash:                                           HASH;
//gist:                                           GIST;
//spgist:                                         SPGIST;
//gin:                                            GIN;
//brin:                                           BRIN;

















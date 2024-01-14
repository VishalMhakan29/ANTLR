grammar PartitionTable;



CREATE:                                         C R E A T E;
TABLE:                                          T A B L E;
PARTITION:                                      P A R T I T I O N;
OF:                                             O F;
FOR_VALUES:                                     F O R SPACE+ V A L U E S;
FROM:                                           F R O M;
TO:                                             T O;
IF:                                             I F;
NOT:                                            N O T;
EXISTS:                                          E X I S T S;

LT_BRACKET:                                     '(';
RT_BRACKET:                                     ')';
HASHSYM:                                        '#';
SYMBOL9:                                        [_]|[/][-];
SLASH:                                          '/' |  '\\' ;
SEMI_COLON:                                     ';';
QUOTATION:                                      ["]|['];
COMMA:                                          [,];
SPACE:                                          [ ];
SKIPPER:                                        [\t\r\n]->skip;
DOLLAR: '$';
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

WORD:                                           (LOWERCASE | UPPERCASE |DOLLAR | SYMBOL9 |HASHSYM |NUMS )+ ;
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

word:                                     (QUOTATION ~(QUOTATION)+ QUOTATION)|~(SPACE);

space:                                          SPACE*;

start:                                          space partitionQuery space SEMI_COLON? space;
partitionQuery:                                 space CREATE space TABLE space ifNotExist? space partitionName space PARTITION space OF space tableName space
                                                space FOR_VALUES space FROM space startValue space TO endValue;
fullNameModel:                                  ( (primaryName space? DOT)? space? secondayName space? DOT)? space? objectName;
primaryName:                                    name;
secondayName:                                   name;
objectName:                                     name;
name:                                           (QUOTATION space? variable space? QUOTATION ) | handle;
variable:                                       space? handle space? (space? handle space?)* ;
handle:                                         word;
partitionName:                                  fullNameModel;
tableName:                                      fullNameModel;
startValue:                                     ~(TO)+;
endValue:                                       ~(SEMI_COLON)+;
ifNotExist:                                     IF space NOT space EXISTS;

grammar PostgresProcedure;

//LEXER
CREATE:                                         C  R E A T E;
OR_REPLACE:                                     O R SPACE R E P L A C E;
PROCEDURE:                                      P R O C E D U R E;
DEFAULT:                                        D E F A U L T;
LANGUAGE:                                       L A N G U A G E;
TRANSFORM:                                      T R A N S F O R M;
FOR_TYPE:                                       F O R SPACE T Y P E;
EXTERNAL:                                       E X T E R N A L;
SECURITY_INVOKER:                               S E C U R I T Y SPACE I N V O K E R;
SECURITY_DEFINER:                               S E C U R I T Y SPACE D E F I N E R;
SET:                                            S E T;
TO:                                             T O;
FROM_CURRENT:                                   F R O M SPACE C U R R E N T;
AS:                                             A S;
IN:                                             I N;
OUT:                                            O U T;
INOUT:                                          I N O U T;
VARIADIC:                                       V A R I A D I C;
COMMIT:                                         C O M M I T;
ROLLBACK:                                       R O L L B A C K;

//BASICS
QUOATED_WORD:                                   (SINGLE_QUOTATION ) (SPACE+)? WORD*  (SPACE* WORD+? SPACE*)*  (SINGLE_QUOTATION ) |
                                                (DOUBLE_QUOTATION) (SPACE+)? WORD*  (SPACE* WORD+? SPACE*)*  (DOUBLE_QUOTATION) ;
POINTER_SYMBOL:                                 [=>];
DOT:                                            [.];
NUMS:                                           DIGIT+;
NUMBER:                                         (DIGIT | ADD_SYMBOL | SUB_SYMBOL | DOT)+;
EQUAL:                                          [=];
OR_OPERATOR:                                    [|];
COMMA:                                          [,];
LT_SET_BRACKET:                                 '[';
RT_SET_BRACKET:                                 ']';
DOUBLE_QUOTATION:                               ["];
SINGLE_QUOTATION:                               ['];
LT_BRACKET:                                     [(];
RT_BRACKET:                                     [)];
ASTRIEK:                                        [*];
SMALLER_THAN:                                   [<];
GREATER_THAN:                                   [>];
PERCENTAGE:                                     [%];
DOLLOR:                                         [$];
SEMI_COLON:                                     [;];

ADD_SYMBOL:                                     [+];
SUB_SYMBOL:                                     [-];
SYMBOL9:                                        [_]|[/][-];
WORD:                                           (LOWERCASE | UPPERCASE | SYMBOL9 |NUMS )+ ;

DIGIT:                                          [0-9]+;
LOWERCASE:                                      [a-z]+;
UPPERCASE:                                      [A-Z]+;
COLON:                                          [:];
QUESTION_MARK:                                  [?];

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
SPACE:                                          [ ] -> skip;

//PARSER

start:                                          query  COMMA  EOF;
query:                                          createKeyword  orReplaceKeyword?  procedureKeyword  procedureName  argumentSegment  mainProcedureBody ;
createKeyword:                                  CREATE;
orReplaceKeyword:                               OR_REPLACE;
procedureKeyword:                               PROCEDURE;
procedureName:                                  fullNameModel;
argumentSegment:                                LT_BRACKET procedureArgument  (COMMA?  procedureArgument )*  RT_BRACKET;
procedureArgument:                               argumentMode?  argumentName  argumentType  defaultArgumentSegment?;
argumentMode:                                   (inKeyword | outKeyword | inOutKeyword | variadicKeyword);
inKeyword:                                      IN;
outKeyword:                                     OUT;
inOutKeyword:                                   INOUT;
variadicKeyword:                                VARIADIC;
argumentName:                                   fullNameModel;
argumentType:                                   dataType;
dataType:                                       .;
defaultArgumentSegment:                         (defaultKeyword | equalSymbol)  defaultExpression;
defaultKeyword:                                 DEFAULT;
equalSymbol:                                    EQUAL;
defaultExpression:                              .*?;
fullNameModel:                                  ((primaryName DOT)? secondaryName DOT)? objectName;
primaryName:                                    name;
secondaryName:                                  name;
objectName:                                     name;
name:                                           (QUOATED_WORD | WORD);
mainProcedureBody:                              languageSegment transformSegment externalSecuritySegment setConfigurationSegment asDefinitionSegment asObjFileAndLinkSymbolSegment sqlBody;
languageSegment:                                languageKeyword languageName=name;
languageKeyword:                                LANGUAGE;
transformSegment:                               transformKeyword forTypeSegmentList;
transformKeyword:                               TRANSFORM;
forTypeSegmentList:                             (COMMA? forTypeSegment)+;
forTypeSegment:                                 forTypeKeyword forTypeName=name;
forTypeKeyword:                                 FOR_TYPE;
externalSecuritySegment:                        externalKeyword? (securityInvokerKeyword | securityDefinerKeyword);
externalKeyword:                                EXTERNAL;
securityInvokerKeyword:                         SECURITY_INVOKER;
securityDefinerKeyword:                         SECURITY_DEFINER;
setConfigurationSegment:                        setKeyword configurationParameter toValueFromCurrentSegment;
setKeyword:                                     SET;
configurationParameter:                         .*?;
toValueFromCurrentSegment:                      toSegment | equalValueSegment | fromCurrentKeyword;
toSegment:                                      toKeyword value=name;
toKeyword:                                      TO;
equalValueSegment:                              EQUAL value=name;
fromCurrentKeyword:                             FROM_CURRENT;
asDefinitionSegment:                            asKeyword definition=name;
asKeyword:                                      AS;
asObjFileAndLinkSymbolSegment:                  asKeyword asObjFile=name COMMA linkSymbol=name;
sqlBody:                                        .*?;
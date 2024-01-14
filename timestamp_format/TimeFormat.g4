grammar TimeFormat;

NUMBER:    [0-9];
DASH:      [-];
SLASH:     [/];
DOT:       [.];
COLON:     [:];
AM:        'am'|'AM'|'Am';
PM:        'pm'|'PM'|'Pm';
// date
//yyyy-mm-dd	'2018-10-27'
//yyyymmdd	'20181027'
//mm/dd/yyyy	'10/27/2018'
//dd.mm.yyyy	'27.10.2018'
//yyyy-mm-dd	'2018-10-27'
//dd-mon-yy
SPACE:                                   [\t\r\n]->skip;
WS:                                      [ \t\r\n]->skip;

COMMENTS:                                '/' .? '*/' ->skip;
SINGLE_COMMENTS:                         '--' .*? [\n] ->skip;
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
DAYS : [A-Za-z]+;
yyyy:  NUMBER NUMBER NUMBER NUMBER?;
mm:    NUMBER NUMBER;
dd:    NUMBER NUMBER;
yy:    NUMBER NUMBER;
dateFormart1:  yyyy DASH mm DASH dd;
dateFormart2:  yyyy mm dd;
dateFormart3:  mm SLASH dd SLASH yyyy;
dateFormart4:  dd DOT mm DOT yyyy;
dateFormart5:  yyyy DASH mm DASH dd;
dateFormart6:  dd DASH days  DASH yy;
days: DAYS;
date:   dateFormart1 |
        dateFormart2 |
        dateFormart3 |
        dateFormart4 |
        dateFormart5 |
        dateFormart6;

hh:  NUMBER NUMBER;
ss:  NUMBER NUMBER;
timeformat1:  hh DOT mm;
timeformat2:  hh;
timeformat3:  hh DOT mm DOT ss;
timeformat4:  hh DOT mm DOT ss AM;
timeformat5:  hh DOT mm DOT ss PM;
time:  timeformat1 |
       timeformat2 |
       timeformat3 |
       timeformat4 |
       timeformat5;


nnnnnnnnnnnn:   NUMBER NUMBER NUMBER NUMBER+;

//timestamp
//yyyy-mm-dd-hh.mm.ss.nnnnnnnnnnnn
//yyyy-mm-dd hh:mm:ss.nnnnnnnnnnnn
//yyyymmdd hh:mm:ss AM or PM
//mm-dd-yyyy hh:mm:ss.nnnnnnnnnnnn
//yyyymmddhhmmss
timestampFormat1: yyyy DASH mm DASH dd DASH hh DOT mm DOT ss DOT nnnnnnnnnnnn;
timestampFormat2: yyyy DASH mm DASH dd DASH hh DOT mm DOT ss;
timestampFormat3: yyyy mm dd hh COLON mm COLON ss AM;
timestampFormat4: yyyy mm dd hh COLON mm COLON ss PM;
timestampFormat5: mm DASH dd DASH yyyy hh COLON mm COLON ss DOT nnnnnnnnnnnn;
timestampFormat6: mm DASH dd DASH yyyy hh COLON mm COLON ss;
timestampFormat7: yyyy mm dd hh mm ss;
timestampFormat8: yyyy DASH mm DASH dd  hh COLON mm COLON ss COLON nnnnnnnnnnnn;
timestampFormat9: yyyy DASH mm DASH dd  hh COLON mm COLON ss;
timestamp: timestampFormat1 |
           timestampFormat2 |
           timestampFormat3 |
           timestampFormat4 |
           timestampFormat5 |
           timestampFormat6 |
           timestampFormat7 |
           timestampFormat8 |
           timestampFormat9;
datetimeConstant:  timestamp | date | time;
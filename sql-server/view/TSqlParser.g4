/*
T-SQL (Transact-SQL, MSSQL) grammar.
The MIT License (MIT).
Copyright (c) 2017, Mark Adams (madams51703@gmail.com)
Copyright (c) 2015-2017, Ivan Kochurkin (kvanttt@gmail.com), Positive Technologies.
Copyright (c) 2016, Scott Ure (scott@redstormsoftware.com).
Copyright (c) 2016, Rui Zhang (ruizhang.ccs@gmail.com).
Copyright (c) 2016, Marcus Henriksson (kuseman80@gmail.com).
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/
 grammar TSqlParser;
//
//options { tokenVocab=TSqlLexer; }

/*
T-SQL (Transact-SQL, MSSQL) grammar.
The MIT License (MIT).
Copyright (c) 2017, Mark Adams (madams51703@gmail.com)
Copyright (c) 2015-2017, Ivan Kochurkin (kvanttt@gmail.com), Positive Technologies.
Copyright (c) 2016, Scott Ure (scott@redstormsoftware.com).
Copyright (c) 2016, Rui Zhang (ruizhang.ccs@gmail.com).
Copyright (c) 2016, Marcus Henriksson (kuseman80@gmail.com).
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
*/
//
//lexer grammar TSqlLexer;

// Basic keywords (from https://msdn.microsoft.com/en-us/library/ms189822.aspx)
VERSION:                               V E R S I O N;
ADD:                                   A D D;
ALL:                                   A L L;
ALTER:                                 A L T E R ;
AND:                                   A N D ;
ANY:                                   A N Y ;
AS:                                    A S ;
ASC:                                   A S C ;
AUTHORIZATION:                         A U T H O R I Z A T I O N;
ACCELERATED_DATABASE_RECOVERY:         A C C E L E R A T E D '_' D A T A B A S E '_' R E C O V E R Y ;
BACKSLASH:                             '\\';
BACKUP:                                B A C K U P;
BEGIN:                                 B E G I N;
BETWEEN:                               B E T W E E N;
BREAK:                                 B R E A K;
BROWSE:                                B R O W S E;
BULK:                                  B U L K ;
BY:                                    B Y;
CASCADE:                               C A S C A D E ;
CASE:                                  C A S E ;
CHECK:                                 C H E C K ;
CHECKPOINT:                            C H E C K P O I N T;
CLOSE:                                 C L O S E;
CLUSTERED:                             C L U S T E R E D;
COALESCE:                              C O A L E S C E;
COLLATE:                               C O L L A T E;
COLUMN:                                C O L U M N;
COMMIT:                                C O M M I T ;
COMPUTE:                               C O M P U T E;
CONSTRAINT:                            C O N S T R A I N T;
CONTAINS:                              C O N T A I N S;
CONTAINSTABLE:                         C O N T A I N S T A B L E ;
CONTINUE:                              C O N T I N U E;
CONVERT:                               (T R Y '_' C O N V E R T)|(C O N V E R T);
CREATE:                                C R E A T E;
CROSS:                                 C R O S S;
CURRENT:                               C U R R E N T ;
CURRENT_DATE:                          C U R R E N T '_' D A T E;
CURRENT_TIME:                          C U R R E N T '_' T I M E;
CURRENT_TIMESTAMP:                     C U R R E N T '_' T I M E S T A M P;
CURRENT_USER:                          C U R R E N T '_' U S E R;
CURSOR:                                C U R S O R;
DATABASE:                              D A T A B A S E ;
DBCC:                                  D B C C ;
DEALLOCATE:                            D E A L L O C A T E;
DECLARE:                               D E C L A R E;
DEFAULT:                               D E F A U L T;
DELETE:                                D E L E T E;
DENY:                                  D E N Y;
DESC:                                  D E S C;
DISK:                                  D I S K;
DISTINCT:                              D I S T I N C T;
DISTRIBUTED:                           D I S T R I B U T E D;
DOUBLE:                                D O U B L E;
DOUBLE_BACK_SLASH:                     '\\\\';
DOUBLE_FORWARD_SLASH:                  '//';
DROP:                                  D R O P;
DUMP:                                  D U M P;
ELSE:                                  E L S E;
END:                                   E N D;
ERRLVL:                                E R R L V L;
ESCAPE:                                E S C A P E;
EXCEPT:                                E X C E P T;
EXECUTE:                               ( E X E C)|(E X E C U T E);
EXISTS:                                E X I S T S;
EXIT:                                  E X I T;
EXTERNAL:                              E X T E R N A L;
FETCH:                                 F E T C H;
FILE:                                  F I L E;
FILLFACTOR:                            F I L L F A C T O R;
FOR:                                   F O R;
FOREIGN:                               F O R E I G N;
FREETEXT:                              F R E E T E X T ;
FREETEXTTABLE:                         F R E E T E X T T A B L E ;
FROM:                                   F R O M;
FULL:                                   F U L L ;
FUNCTION:                               F U N C T I O N;
GOTO:                                   G O T O;
GRANT:                                  G R A N T;
GROUP:                                  G R O U P;
HAVING:                                 H A V I N G;
HOLDLOCK:                               H O L D L O C K;
IDENTITY:                               I D E N T I T Y;
IDENTITY_INSERT:                        I D E N T I T Y '_' I N S E R T;
IDENTITYCOL:                            I D E N T I T Y C O L;
IF:                                     I F ;
IN:                                     I N ;
INDEX:                                  I N D E X ;
INNER:                                  I N N E R ;
INSERT:                                 I N S E R T;
INTERSECT:                              I N T E R S E C T;
INTO:                                   I N T O ;
IS:                                     I S;
JOIN:                                   J O I N ;
KEY:                                    K E Y ;
KILL:                                   K I L L;
LEFT:                                   L E F T ;
LIKE:                                   L I K E ;
LINENO:                                 L I N E N O ;
LOAD:                                   L O A D ;
MERGE:                                  M E R G E ;
NATIONAL:                               N A T I O N A L ;
NEGOTIATE:                              N E G O T I A T E ;
NOCHECK:                                N O C H E C K ;
NONCLUSTERED:                           N O N C L U S T E R E D;
NOT:                                    N O T;
NULL_:                                  N U L L ;
NULLIF:                                 N U L L I F ;
OF:                                     O F ;
OFF:                                    O F F ;
OFFSETS:                                O F F S E T S ;
ON:                                     O N ;
OPEN:                                   O P E N ;
OPENDATASOURCE:                         O P E N D A T A S O U R C E ;
OPENQUERY:                              O P E N Q U E R Y ;
OPENROWSET:                             O P E N R O W S E T ;
OPENJSON:                               O P E N J S O N ;
OPENXML:                                O P E N X M L;
OPTION:                                 O P T I O N ;
OR:                                     O R;
ORDER:                                  O R D E R ;
OUTER:                                  O U T E R ;
OVER:                                   O V E R;
PERCENT:                                P E R C E N T;
PIVOT:                                  P I V O T;
PLAN:                                   P L A N;
PRECISION:                              P R E C I S I O N;
PRIMARY:                                P R I M A R Y;
PRINT:                                  P R I N T;
PROC:                                   P R O C;
PROCEDURE:                              P R O C E D U R E;
PUBLIC:                                 P U B L I C ;
RAISERROR:                              R A I S E R R O R;
RAW:                                    R A W ;
READ:                                   R E A D;
READTEXT:                               R E A D T E X T ;
RECONFIGURE:                            R E C O N F I G U R E;
REFERENCES:                             R E F E R E N C E S ;
REPLICATION:                            R E P L I C A T I O N ;
RESTORE:                                R E S T O R E;
RESTRICT:                               R E S T R I C T;
RETURN:                                 R E T U R N;
REVERT:                                 R E V E R T;
REVOKE:                                 R E V O K E;
RIGHT:                                  R I G H T;
ROLLBACK:                               R O L L B A C K;
ROWCOUNT:                               R O W C O U N T;
ROWGUIDCOL:                             R O W G U I D C O L;
RULE:                                   R U L E;
SAVE:                                   S A V E;
SCHEMA:                                 S C H E M A;
SECURITYAUDIT:                          S E C U R I T Y A U D I T;
SELECT:                                 S E L E C T;
SEMANTICKEYPHRASETABLE:                 S E M A N T I C K E Y P H R A S E T A B L E;
SEMANTICSIMILARITYDETAILSTABLE:         S E M A N T I C S I M I L A R I T Y D E T A I L S T A B L E;
SEMANTICSIMILARITYTABLE:                S E M A N T I C S I M I L A R I T Y T A B L E;
SESSION_USER:                           S E S S I O N '_' U S E R;
SET:                                    S E T;
SETUSER:                                S E T U S E R;
SHUTDOWN:                               S H U T D O W N;
SOME:                                   S O M E;
STATISTICS:                             S T A T I S T I C S;
SYSTEM_USER:                            S Y S T E M '_' U S E R;
TABLE:                                  T A B L E ;
TABLESAMPLE:                            T A B L E S A M P L E;
TEXTSIZE:                               T E X T S I Z E;
THEN:                                   T H E N ;
TO:                                     T O;
TOP:                                    T O P ;
TRAN:                                   T R A N;
TRANSACTION:                            T R A N S A C T I O N ;
TRIGGER:                                T R I G G E R;
TRUNCATE:                               T R U N C A T E;
TSEQUAL:                                T S E Q U A L;
UNION:                                  U N I O N;
UNIQUE:                                 U N I Q U E;
UNPIVOT:                                U N P I V O T;
UPDATE:                                 U P D A T E;
UPDATETEXT:                             U P D A T E T E X T;
USE:                                    U S E ;
USER:                                   U S E R;
VALUES:                                 V A L U E S;
VARYING:                                V A R Y I N G;
VIEW:                                   V I E W;
WAITFOR:                                W A I T F O R;
WHEN:                                   W H E N;
WHERE:                                  W H E R E;
WHILE:                                  W H I L E;
WITH:                                   W I T H ;
WITHIN:                                 W I T H I N;
WRITETEXT:                              W R I T E T E X T;
DOLLAR_PARTITION:                      '$' P A R T I T I O N;

//Keywords that can exist in ID etc
ABSOLUTE:                              A B S O L U T E;
AT_KEYWORD:                            A T;
ACCENT_SENSITIVITY:                    A C C E N T '_' S E N S I T I V I T Y;
ACCESS:                                A C C E S S ;
ACTION:                                 A C T I O N;
ACTIVATION:                             A C T I V A T I O N;
ACTIVE:                                 A C T I V E;
ADDRESS:                                A D D R E S S;
AES_128:                                A E S '_128';
AES_192:                                A E S '_192';
AES_256:                                A E S '_256';
AFFINITY:                               A F F I N I T Y;
AFTER:                                  A F T E R;
AGGREGATE:                              A G G R E G A T E;
ALGORITHM:                              A L G O R I T H M;
ALLOW_ENCRYPTED_VALUE_MODIFICATIONS:    A L L O W '_' E N C R Y P T E D '_' V A L U E '_' M O D I F I C A T I O N S;
ALLOW_SNAPSHOT_ISOLATION:               A L L O W '_' S N A P S H O T '_' I S O L A T I O N;
ALLOWED:                                A L L O W E D;
ANSI_NULL_DEFAULT:                      A N S I '_' N U L L '_' D E F A U L T;
ANSI_NULLS:                             A N S I '_' N U L L S;
ANSI_PADDING:                           A N S I '_' P A D D I N G;
ANSI_WARNINGS:                          A N S I '_' W A R N I N G S;
APPLICATION_LOG:                        A P P L I C A T I O N '_' L O G;
APPLY:                                  A P P L Y;
ARITHABORT:                             A R I T H A B O R T;
ASSEMBLY:                               A S S E M B L Y;
AUDIT:                                  A U D I T ;
AUDIT_GUID:                             A U D I T '_' G U I D;
AUTO:                                   A U T O;
AUTO_CLEANUP:                           A U T O '_' C L E A N U P;
AUTO_CLOSE:                             A U T O '_' C L O S E;
AUTO_CREATE_STATISTICS:                 A U T O '_' C R E A T E '_' S T A T I S T I C S;
AUTO_SHRINK:                            A U T O '_' S H R I N K;
AUTO_UPDATE_STATISTICS:                 A U T O '_' U P D A T E '_' S T A T I S T I C S;
AUTO_UPDATE_STATISTICS_ASYNC:           A U T O '_' U P D A T E '_' S T A T I S T I C S '_' A S Y N C;
AUTOGROW_ALL_FILES:                     A U T O G R O W '_' A L L '_' F I L E S;
AUTOGROW_SINGLE_FILE:                   A U T O G R O W '_' S I N G L E '_' F I L E;
AVAILABILITY:                           A V A I L A B I L I T Y;
AVG:                                    A V G ;
BACKUP_PRIORITY:                        B A C K U P '_' P R I O R I T Y;
BEGIN_DIALOG:                           B E G I N '_' D I A L O G ;
BIGINT:                                 B I G I N T;
BINARY_KEYWORD:                         B I N A R Y;
BINARY_BASE64:                          B I N A R Y ' ' B A S E '64';
BINARY_CHECKSUM:                        B I N A R Y '_' C H E C K S U M;
BINDING:                                B I N D I N G ;
BLOB_STORAGE:                           B L O B '_' S T O R A G E;
BROKER:                                 B R O K E R;
BROKER_INSTANCE:                        B R O K E R '_' I N S T A N C E;
BULK_LOGGED:                            B U L K '_' L O G G E D;
CALLER:                                 C A L L E R ;
CAP_CPU_PERCENT:                        C A P '_' C P U '_' P E R C E N T;
CAST:                                   C A S T;
TRY_CAST:                               T R Y '_' C A S T;
CATALOG:                                C A T A L O G;
CATCH:                                  C A T C H;
CHANGE:                                 C H A N G E;
CHANGE_RETENTION:                       C H A N G E '_' R E T E N T I O N ;
CHANGE_TRACKING:                        C H A N G E '_' T R A C K I N G;
CHECKSUM:                               C H E C K S U M;
CHECKSUM_AGG:                           C H E C K S U M '_' A G G;
CLEANUP:                                C L E A N U P;
COLLECTION:                             C O L L E C T I O N;
COLUMN_MASTER_KEY:                      C O L U M N '_' M A S T E R '_' K E Y;
COLUMNSTORE:                            C O L U M N S T O R E;
COMMITTED:                              C O M M I T T E D;
COMPATIBILITY_LEVEL:                    C O M P A T I B I L I T Y '_' L E V E L;
CONCAT:                                 C O N C A T;
CONCAT_NULL_YIELDS_NULL:                C O N C A T '_' N U L L '_' Y I E L D S '_' N U L L;
CONTENT:                                C O N T E N T;
CONTROL:                                C O N T R O L;
COOKIE:                                 C O O K I E;
COUNT:                                  C O U N T;
COUNT_BIG:                              C O U N T '_' B I G;
COUNTER:                                C O U N T E R;
CPU:                                    C P U;
CREATE_NEW:                             C R E A T E '_' N E W;
CREATION_DISPOSITION:                   C R E A T I O N '_' D I S P O S I T I O N;
CREDENTIAL:                             C R E D E N T I A L;
CRYPTOGRAPHIC:                          C R Y P T O G R A P H I C;
CUME_DIST:                              C U M E '_' D I S T;
CURSOR_CLOSE_ON_COMMIT:                 C U R S O R '_' C L O S E '_' O N '_' C O M M I T;
CURSOR_DEFAULT:                         C U R S O R '_' D E F A U L T;
DATA:                                   D A T A;
DATE_CORRELATION_OPTIMIZATION:          D A T E '_' C O R R E L A T I O N '_' O P T I M I Z A T I O N ;
DATEADD:                                D A T E A D D ;
DATEDIFF:                               D A T E D I F F;
DATENAME:                               D A T E N A M E;
DATEPART:                               D A T E P A R T;
DAYS:                                   D A Y S ;
DB_CHAINING:                            D B '_' C H A I N I N G;
DB_FAILOVER:                            D B '_' F A I L O V E R ;
DECRYPTION:                             D E C R Y P T I O N;
DEFAULT_DOUBLE_QUOTE:                  ["] D E F A U L T ["];
DEFAULT_FULLTEXT_LANGUAGE:              D E F A U L T '_' F U L L T E X T '_' L A N G U A G E;
DEFAULT_LANGUAGE:                       D E F A U L T '_' L A N G U A G E;
DEFINITION:                             D E F I N I T I O N;
DELAY:                                  D E L A Y;
DELAYED_DURABILITY:                     D E L A Y E D '_' D U R A B I L I T Y ;
DELETED:                                D E L E T E D;
DENSE_RANK:                             D E N S E '_' R A N K;
DEPENDENTS:                             D E P E N D E N T S;
DES:                                    D E S ;
DESCRIPTION:                            D E S C R I P T I O N;
DESX:                                   D E S X ;
DHCP:                                   D H C P;
DIALOG:                                 D I A L O G;
DIRECTORY_NAME:                         D I R E C T O R Y '_' N A M E ;
DISABLE:                                D I S A B L E ;
DISABLE_BROKER:                         D I S A B L E '_' B R O K E R;
DISABLED:                               D I S A B L E D ;
DISK_DRIVE:                            [A-Za-z]+ [:];
DOCUMENT:                               D O C U M E N T;
DYNAMIC:                                D Y N A M I C;
ELEMENTS:                               E L E M E N T S;
EMERGENCY:                              E M E R G E N C Y;
EMPTY:                                  E M P T Y ;
ENABLE:                                 E N A B L E ;
ENABLE_BROKER:                          E N A B L E '_' B R O K E R;
ENCRYPTED_VALUE:                        E N C R Y P T E D '_' V A L U E;
ENCRYPTION:                             E N C R Y P T I O N;
ENDPOINT_URL:                           E N D P O I N T '_' U R L;
ERROR_BROKER_CONVERSATIONS:             E R R O R '_' B R O K E R '_' C O N V E R S A T I O N S ;
EXCLUSIVE:                              E X C L U S I V E;
EXECUTABLE:                             E X E C U T A B L E ;
EXIST:                                  E X I S T ;
EXPAND:                                 E X P A N D ;
EXPIRY_DATE:                            E X P I R Y '_' D A T E ;
EXPLICIT:                               E X P L I C I T ;
FAIL_OPERATION:                         F A I L '_' O P E R A T I O N;
FAILOVER_MODE:                          F A I L O V E R '_' M O D E;
FAILURE:                                F A I L U R E ;
FAILURE_CONDITION_LEVEL:                F A I L U R E '_' C O N D I T I O N '_' L E V E L ;
FAST:                                   F A S T;
FAST_FORWARD:                           F A S T '_' F O R W A R D;
FILEGROUP:                              F I L E G R O U P ;
FILEGROWTH:                             F I L E G R O W T H;
FILENAME:                               F I L E N A M E;
FILEPATH:                               F I L E P A T H;
FILESTREAM:                             F I L E S T R E A M;
FILTER:                                 F I L T E R;
FIRST:                                  F I R S T;
FIRST_VALUE:                            F I R S T '_' V A L U E;
FOLLOWING:                              F O L L O W I N G;
FORCE:                                  F O R C E;
FORCE_FAILOVER_ALLOW_DATA_LOSS:         F O R C E '_' F A I L O V E R '_' A L L O W '_' D A T A '_' L O S S ;
FORCED:                                 F O R C E D ;
FORMAT:                                 F O R M A T;
FORWARD_ONLY:                           F O R W A R D '_' O N L Y;
FULLSCAN:                               F U L L S C A N;
FULLTEXT:                               F U L L T E X T;
GB:                                     G B;
GETDATE:                                G E T D A T E ;
GETUTCDATE:                             G E T U T C D A T E;
GLOBAL:                                 G L O B A L;
GO_BATCH:                              [\r\n]* [\t ]*  GO [\t\n\r ];
GO:                                    G O;
GROUP_MAX_REQUESTS:                    G R O U P '_' M A X '_' R E Q U E S T S ;
GROUPING:                               G R O U P I N G;
GROUPING_ID:                           G R O U P I N G '_' I D;
ROLLUP:                                R O L L U P;
CUBE:                                  C U B E;
SETS:                                  S E T S;
HADR:                                   H A D R;
HASH:                                   H A S H;
HEALTH_CHECK_TIMEOUT:                   H E A L T H '_' C H E C K '_' T I M E O U T ;
HIGH:                                   H I G H;
HONOR_BROKER_PRIORITY:                  H O N O R '_' B R O K E R '_' P R I O R I T Y;
HOURS:                                  H O U R S;
IDENTITY_VALUE:                         I D E N T I T Y '_' V A L U E;
IGNORE_NONCLUSTERED_COLUMNSTORE_INDEX:  I G N O R E '_' N O N C L U S T E R E D '_' C O L U M N S T O R E '_' I N D E X ;
IMMEDIATE:                              I M M E D I A T E ;
IMPERSONATE:                            I M P E R S O N A T E;
IMPORTANCE:                             I M P O R T A N C E ;
INCLUDE_NULL_VALUES:                    I N C L U D E '_' N U L L '_' V A L U E S;
INCREMENTAL:                            I N C R E M E N T A L;
INITIATOR:                              I N I T I A T O R;
INPUT:                                  I N P U T ;
INSENSITIVE:                            I N S E N S I T I V E;
INSERTED:                               I N S E R T E D;
INT:                                    I N T;
IP:                                     I P ;
ISOLATION:                              I S O L A T I O N;
JOB:                                    J O B;
JSON:                                   J S O N;
KB:                                     K B ;
KEEP:                                   K E E P;
KEEPFIXED:                              K E E P F I X E D;
KEY_SOURCE:                             K E Y '_' S O U R C E;
KEYS:                                   K E Y S ;
KEYSET:                                 K E Y S E T;
LAG:                                    L A G;
LAST:                                   L A S T;
LAST_VALUE:                             L A S T '_' V A L U E;
LEAD:                                   L E A D;
LEVEL:                                  L E V E L;
LIST:                                   L I S T;
LISTENER:                               L I S T E N E R;
LISTENER_URL:                           L I S T E N E R '_' U R L;
LOB_COMPACTION:                         L O B '_' C O M P A C T I O N;
LOCAL:                                  L O C A L;
LOCATION:                               L O C A T I O N;
LOCK:                                   L O C K;
LOCK_ESCALATION:                        L O C K '_' E S C A L A T I O N;
LOGIN:                                  L O G I N;
LOOP:                                   L O O P;
LOW:                                    L O W;
MANUAL:                                 M A N U A L;
MARK:                                   M A R K;
MATERIALIZED:                           M A T E R I A L I Z E D;
MAX:                                    M A X;
MAX_CPU_PERCENT:                        M A X '_' C P U '_' P E R C E N T;
MAX_DOP:                                M A X '_' D O P;
MAX_FILES:                              M A X '_' F I L E S;
MAX_IOPS_PER_VOLUME:                    M A X '_' I O P S '_' P E R '_' V O L U M E ;
MAX_MEMORY_PERCENT:                     M A X '_' M E M O R Y '_' P E R C E N T;
MAX_PROCESSES:                          M A X '_' P R O C E S S E S;
MAX_QUEUE_READERS:                      M A X '_' Q U E U E '_' R E A D E R S;
MAX_ROLLOVER_FILES:                     M A X '_' R O L L O V E R '_' F I L E S;
MAXDOP:                                 M A X D O P;
MAXRECURSION:                           M A X R E C U R S I O N;
MAXSIZE:                                M A X S I Z E;
MB:                                     M B ;
MEDIUM:                                 M E D I U M;
MEMORY_OPTIMIZED_DATA:                  M E M O R Y '_' O P T I M I Z E D '_' D A T A;
MESSAGE:                                M E S S A G E;
MIN:                                    M I N ;
MIN_ACTIVE_ROWVERSION:                  M I N '_' A C T I V E '_' R O W V E R S I O N;
MIN_CPU_PERCENT:                        M I N '_' C P U '_' P E R C E N T;
MIN_IOPS_PER_VOLUME:                    M I N '_' I O P S '_'  P E R '_' V O L U M E;
MIN_MEMORY_PERCENT:                     M I N '_' M E M O R Y '_' P E R C E N T;
MINUTES:                                M I N U T E S;
MIRROR_ADDRESS:                         M I R R O R '_' A D D R E S S;
MIXED_PAGE_ALLOCATION:                  M I X E D '_' P A G E '_' A L L O C A T I O N ;
MODE:                                   M O D E;
MODIFY:                                 M O D I F Y;
MOVE:                                   M O V E;
MULTI_USER:                             M U L T I '_' U S E R;
NAME:                                   N A M E;
NESTED_TRIGGERS:                        N E S T E D '_' T R I G G E R S;
NEW_ACCOUNT:                            N E W '_' A C C O U N T;
NEW_BROKER:                             N E W '_' B R O K E R;
NEW_PASSWORD:                           N E W '_' P A S S W O R D;
NEWNAME:                                N E W N A M E;
NEXT:                                   N E X T;
NO:                                     N O ;
NO_TRUNCATE:                            N O '_' T R U N C A T E;
NO_WAIT:                                N O '_' W A I T;
NOCOUNT:                                N O C O U N T;
NODES:                                  N O D E S;
NOEXPAND:                               N O E X P A N D;
NON_TRANSACTED_ACCESS:                  N O N '_' T R A N S A C T E D '_' A C C E S S;
NORECOMPUTE:                            N O R E C O M P U T E;
NORECOVERY:                             N O R E C O V E R Y;
NOTIFICATIONS:                          N O T I F I C A T I O N S;
NOWAIT:                                 N O W A I T;
NTILE:                                  N T I L E ;
NUMANODE:                               N U M A N O D E;
NUMBER:                                 N U M B E R ;
NUMERIC_ROUNDABORT:                     N U M E R I C '_' R O U N D A B O R T;
OBJECT:                                 O B J E C T ;
OFFLINE:                                O F F L I N E ;
OFFSET:                                 O F F S E T ;
OLD_ACCOUNT:                            O L D '_' A C C O U N T;
ONLINE:                                 O N L I N E ;
ONLY:                                   O N L Y;
OPEN_EXISTING:                          O P E N '_' E X I S T I N G ;
OPTIMISTIC:                             O P T I M I S T I C ;
OPTIMIZE:                               O P T I M I Z E ;
OUT:                                    O U T ;
OUTPUT:                                 O U T P U T;
OVERRIDE:                               O V E R R I D E;
OWNER:                                  O W N E R ;
OWNERSHIP:                              O W N E R S H I P;
PAGE_VERIFY:                            P A G E '_' V E R I F Y;
PARAMETERIZATION:                       P A R A M E T E R I Z A T I O N;
PARTITION:                              P A R T I T I O N ;
PARTITIONS:                             P A R T I T I O N S;
PARTNER:                                P A R T N E R ;
PATH:                                   P A T H;
PERCENT_RANK:                           P E R C E N T '_' R A N K;
PERCENTILE_CONT:                        P E R C E N T I L E '_' C O N T;
PERCENTILE_DISC:                        P E R C E N T I L E '_' D I S C;
POISON_MESSAGE_HANDLING:                P O I S O N '_' M E S S A G E '_' H A N D L I N G;
POOL:                                   P O O L;
PORT:                                   P O R T;
PRECEDING:                              P R E C E D I N G;
PRIMARY_ROLE:                           P R I M A R Y '_' R O L E;
PRIOR:                                  P R I O R ;
PRIORITY:                               P R I O R I T Y;
PRIORITY_LEVEL:                         P R I O R I T Y '_' L E V E L ;
PRIVATE:                                P R I V A T E;
PRIVATE_KEY:                            P R I V A T E '_' K E Y;
PRIVILEGES:                             P R I V I L E G E S;
PROCEDURE_NAME:                         P R O C E D U R E '_' N A M E;
PROPERTY:                               P R O P E R T Y;
PROVIDER:                               P R O V I D E R;
PROVIDER_KEY_NAME:                      P R O V I D E R '_' K E Y '_' N A M E;
QUERY:                                  Q U E R Y;
QUEUE:                                  Q U E U E ;
QUEUE_DELAY:                            Q U E U E '_' D E L A Y;
QUOTED_IDENTIFIER:                      Q U O T E D '_' I D E N T I F I E R;
RANGE:                                  R A N G E;
RANK:                                   R A N K;
RC2:                                    R C '2';
RC4:                                    R C '4';
RC4_128:                                R C '4_128';
READ_COMMITTED_SNAPSHOT:                R E A D '_' C O M M I T T E D '_' S N A P S H O T;
READ_ONLY:                              R E A D '_' O N L Y;
READ_ONLY_ROUTING_LIST:                 R E A D '_' O N L Y '_' R O U T I N G '_' L I S T;
READ_WRITE:                             R E A D '_' W R I T E;
READONLY:                               R E A D O N L Y;
READWRITE:                              R E A D W R I T E;
REBUILD:                                R E B U I L D;
RECEIVE:                                R E C E I V E;
RECOMPILE:                              R E C O M P I L E;
RECOVERY:                               R E C O V E R Y;
RECURSIVE_TRIGGERS:                     R E C U R S I V E '_' T R I G G E R S;
RELATIVE:                               R E L A T I V E;
REMOTE:                                 R E M O T E;
REMOTE_SERVICE_NAME:                    R E M O T E '_' S E R V I C E '_' N A M E;
REMOVE:                                 R E M O V E;
REORGANIZE:                             R E O R G A N I Z E;
REPEATABLE:                             R E P E A T A B L E ;
REPLICA:                                R E P L I C A;
REQUEST_MAX_CPU_TIME_SEC:               R E Q U E S T '_' M A X '_' C P U '_' T I M E '_' S E C;
REQUEST_MAX_MEMORY_GRANT_PERCENT:       R E Q U E S T '_' M A X '_' M E M O R Y '_' G R A N T '_' P E R C E N T;
REQUEST_MEMORY_GRANT_TIMEOUT_SEC:       R E Q U E S T '_' M E M O R Y '_' G R A N T '_' T I M E O U T '_' S E C;
REQUIRED_SYNCHRONIZED_SECONDARIES_TO_COMMIT:  R E Q U I R E D '_' S Y N C H R O N I Z E D '_' S E C O N D A R I E S '_' T O '_' C O M M I T ;
RESERVE_DISK_SPACE:                     R E S E R V E '_' D I S K '_' S P A C E;
RESOURCE:                               R E S O U R C E;
RESOURCE_MANAGER_LOCATION:              R E S O U R C E '_' M A N A G E R '_' L O C A T I O N ;
RESTRICTED_USER:                        R E S T R I C T E D '_' U S E R;
RETENTION:                              R E T E N T I O N ;
ROBUST:                                 R O B U S T ;
ROOT:                                   R O O T;
ROUTE:                                  R O U T E;
ROW:                                    R O W ;
ROW_NUMBER:                             R O W '_' N U M B E R ;
ROWGUID:                                R O W G U I D;
ROWS:                                   R O W S;
SAMPLE:                                 S A M P L E;
SCHEMABINDING:                          S C H E M A B I N D I N G;
SCOPED:                                 S C O P E D;
SCROLL:                                 S C R O L L;
SCROLL_LOCKS:                           S C R O L L '_' L O C K S;
SEARCH:                                 S E A R C H ;
SECONDARY:                              S E C O N D A R Y;
SECONDARY_ONLY:                         S E C O N D A R Y '_' O N L Y;
SECONDARY_ROLE:                         S E C O N D A R Y '_' R O L E;
SECONDS:                                S E C O N D S;
SECRET:                                 S E C R E T;
SECURABLES:                             S E C U R A B L E S;
SECURITY:                               S E C U R I T Y;
SECURITY_LOG:                           S E C U R I T Y '_' L O G;
SEEDING_MODE:                           S E E D I N G '_' M O D E;
SELF:                                   S E L F;
SEMI_SENSITIVE:                         S E M I '_' S E N S I T I V E;
SEND:                                   S E N D;
SENT:                                   S E N T;
SEQUENCE:                               S E Q U E N C E;
SERIALIZABLE:                           S E R I A L I Z A B L E;
SESSION_TIMEOUT:                       S E S S I O N '_' T I M E O U T;
SETERROR:                               S E T E R R O R ;
SHARE:                                  S H A R E;
SHOWPLAN:                               S H O W P L A N ;
SIGNATURE:                              S I G N A T U R E;
SIMPLE:                                 S I M P L E;
SINGLE_USER:                            S I N G L E '_' U S E R ;
SIZE:                                   S I Z E;
SMALLINT:                               S M A L L I N T;
SNAPSHOT:                               S N A P S H O T;
SPATIAL_WINDOW_MAX_CELLS:               S P A T I A L '_' W I N D O W '_' M A X '_' C E L L S ;
STANDBY:                                S T A N D B Y;
START_DATE:                             S T A R T '_' D A T E;
STATIC:                                 S T A T I C ;
STATS_STREAM:                           S T A T S '_' S T R E A M;
STATUS:                                 S T A T U S ;
STATUSONLY:                             S T A T U S  O N L Y;
STDEV:                                  S T D E V;
STDEVP:                                 S T D E V P;
STOPLIST:                               S T O P L I S T;
STRING_AGG:                             S T R I N G '_' A G G;
STUFF:                                  S T U F F ;
SUBJECT:                                S U B J E C T ;
SUBSCRIBE:                              S U B S C R I B E;
SUBSCRIPTION:                          S U B S C R I P T I O N;
SUM:                                   S U M;
SUSPEND:                                S U S P E N D;
SYMMETRIC:                              S Y M M E T R I C;
SYNCHRONOUS_COMMIT:                     S Y N C H R O N O U S '_' C O M M I T;
SYNONYM:                                S Y N O N Y M;
SYSTEM:                                 S Y S T E M;
TAKE:                                   T A K E;
TARGET_RECOVERY_TIME:                   T A R G E T '_' R E C O V E R Y '_' T I M E;
TB:                                     T B;
TEXTIMAGE_ON:                           T E X T I M A G E '_' O N;
THROW:                                  T H R O W;
TIES:                                   T I E S ;
TIME:                                   T I M E;
TIMEOUT:                                T I M E O U T;
TIMER:                                  T I M E R ;
TINYINT:                                T I N Y I N T ;
TORN_PAGE_DETECTION:                    T O R N '_' P A G E '_' D E T E C T I O N ;
TRACKING:                               T R A C K I N G;
TRANSFORM_NOISE_WORDS:                  T R A N S F O R M '_' N O I S E '_' W O R D S;
TRIPLE_DES:                             T R I P L E '_' D E S;
TRIPLE_DES_3KEY:                        T R I P L E '_' D E S '_3' K E Y;
TRUSTWORTHY:                            T R U S T W O R T H Y;
TRY:                                    T R Y;
TSQL:                                   T S Q L;
TWO_DIGIT_YEAR_CUTOFF:                  T W O '_' D I G I T '_' Y E A R '_' C U T O F F;
TYPE:                                   T Y P E;
TYPE_WARNING:                           T Y P E '_' W A R N I N G ;
UNBOUNDED:                              U N B O U N D E D;
UNCOMMITTED:                            U N C O M M I T T E D;
UNKNOWN:                                U N K N O W N ;
UNLIMITED:                              U N L I M I T E D;
UNMASK:                                 U N M A S K;
UOW:                                    U O W;
USING:                                  U S I N G;
VALID_XML:                              V A L I D '_' X M L;
VALIDATION:                             V A L I D A T I O N ;
VALUE:                                  V A L U E;
VAR:                                    V A R;
VARBINARY_KEYWORD:                      V A R B I N A R Y;
VARP:                                   V A R P;
VIEW_METADATA:                          V I E W '_' M E T A D A T A;
VIEWS:                                  V I E W S;
WAIT:                                   W A I T;
WELL_FORMED_XML:                        W E L L '_' F O R M E D '_' X M L;
WITHOUT_ARRAY_WRAPPER:                  W I T H O U T '_' A R R A Y '_' W R A P P E R;
WORK:                                   W O R K;
WORKLOAD:                               W O R K L O A D;
XML:                                    X M L;
XMLDATA:                                X M L D A T A;
XMLNAMESPACES:                          X M L N A M E S P A C E S;
XMLSCHEMA:                              X M L S C H E M A;
XSINIL:                                 X S I N I L;
ZONE:                                   Z O N E ;
DOLLAR_ACTION:                         '$' A C T I O N;
//More keywords
ABORT_AFTER_WAIT:                       A B O R T '_' A F T E R '_' W A I T;
ABSENT:                                 A B S E N T ;
ADMINISTER:                             A D M I N I S T E R;
AES:                                    A E S;
ALLOW_CONNECTIONS:                      A L L O W '_' C O N N E C T I O N S;
ALLOW_MULTIPLE_EVENT_LOSS:              A L L O W '_' M U L T I P L E '_' E V E N T '_' L O S S;
ALLOW_SINGLE_EVENT_LOSS:                A L L O W '_' S I N G L E '_' E V E N T '_' L O S S;
ANONYMOUS:                             A N O N Y M O U S;
APPEND:                                 A P P E N D;
APPLICATION:                            A P P L I C A T I O N;
ASYMMETRIC:                             A S Y M M E T R I C;
ASYNCHRONOUS_COMMIT:                    A S Y N C H R O N O U S '_' C O M M I T;
AUTHENTICATE:                          A U T H E N T I C A T E;
AUTHENTICATION:                         A U T H E N T I C A T I O N;
AUTOMATED_BACKUP_PREFERENCE:            A U T O M A T E D '_' B A C K U P '_' P R E F E R E N C E;
AUTOMATIC:                              A U T O M A T I C;
AVAILABILITY_MODE:                      A V A I L A B I L I T Y '_' M O D E;
BEFORE:                                 B E F O R E;
BLOCK:                                  B L O C K ;
BLOCKERS:                               B L O C K E R S;
BLOCKSIZE:                              B L O C K S I Z E;
BLOCKING_HIERARCHY:                     B L O C K I N G '_' H I E R A R C H Y;
BUFFER:                                 B U F F E R;
BUFFERCOUNT:                            B U F F E R C O U N T ;
CACHE:                                  C A C H E ;
CALLED:                                 C A L L E D;
CERTIFICATE:                            C E R T I F I C A T E;
CHANGETABLE:                            C H A N G E T A B L E;
CHANGES:                                C H A N G E S;
CHECK_POLICY:                           C H E C K '_' P O L I C Y;
CHECK_EXPIRATION:                       C H E C K '_' E X P I R A T I O N;
CLASSIFIER_FUNCTION:                    C L A S S I F I E R '_' F U N C T I O N;
CLUSTER:                                C L U S T E R ;
COMPRESSION:                            C O M P R E S S I O N;
CONNECT:                                C O N N E C T ;
CONNECTION:                             C O N N E C T I O N;
CONFIGURATION:                          C O N F I G U R A T I O N;
CONTAINMENT:                            C O N T A I N M E N T;
CONTEXT:                                C O N T E X T;
CONTINUE_AFTER_ERROR:                   C O N T I N U E '_' A F T E R '_' E R R O R;
CONTRACT:                               C O N T R A C T;
CONTRACT_NAME:                          C O N T R A C T '_' N A M E;
CONVERSATION:                           C O N V E R S A T I O N;
COPY_ONLY:                              C O P Y '_' O N L Y;
CYCLE:                                  C Y C L E ;
DATA_COMPRESSION:                       D A T A '_' C O M P R E S S I O N ;
DATA_SOURCE:                            D A T A '_' S O U R C E;
DATABASE_MIRRORING:                     D A T A B A S E '_' M I R R O R I N G ;
DATASPACE:                              D A T A S P A C E;
DDL:                                    D D L;
DEFAULT_DATABASE:                       D E F A U L T '_' D A T A B A S E;
DEFAULT_SCHEMA:                         D E F A U L T '_' S C H E M A;
DIAGNOSTICS:                            D I A G N O S T I C S;
DIFFERENTIAL:                           D I F F E R E N T I A L;
DISTRIBUTION:                           D I S T R I B U T I O N;
DTC_SUPPORT:                            D T C '_' S U P P O R T;
ENABLED:                                E N A B L E D;
ENDPOINT:                               E N D P O I N T;
ERROR:                                  E R R O R ;
EVENT:                                  E V E N T ;
EVENTDATA:                              E V E N T D A T A  '()';
EVENT_RETENTION_MODE:                   E V E N T '_' R E T E N T I O N '_' M O D E;
EXECUTABLE_FILE:                        E X E C U T A B L E '_' F I L E ;
EXPIREDATE:                             E X P I R E D A T E;
EXTENSION:                              E X T E N S I O N;
EXTERNAL_ACCESS:                        E X T E R N A L '_' A C C E S S;
FAILOVER:                               F A I L O V E R;
FAILURECONDITIONLEVEL:                  F A I L U R E C O N D I T I O N L E V E L;
FAN_IN:                                 F A N '_' I N;
FILE_SNAPSHOT:                          F I L E '_' S N A P S H O T;
FORCESEEK:                              F O R C E S E E K ;
FORCE_SERVICE_ALLOW_DATA_LOSS:          F O R C E '_' S E R V I C E '_' A L L O W '_' D A T A '_' L O S S;
GET:                                    G E T ;
GOVERNOR:                               G O V E R N O R;
HASHED:                                 H A S H E D;
HEALTHCHECKTIMEOUT:                     H E A L T H C H E C K T I M E O U T;
HEAP:                                   H E A P ;
IIF:                                    I I F;
IO:                                     I O;
INCLUDE:                                I N C L U D E;
INCREMENT:                              I N C R E M E N T;
INFINITE:                               I N F I N I T E;
INIT:                                   I N I T;
INSTEAD:                                I N S T E A D;
ISNULL:                                 I S N U L L;
KERBEROS:                               K E R B E R O S;
KEY_PATH:                               K E Y '_' P A T H;
KEY_STORE_PROVIDER_NAME:                K E Y '_' S T O R E '_' P R O V I D E R '_' N A M E;
LANGUAGE:                               L A N G U A G E;
LIBRARY:                                L I B R A R Y ;
LIFETIME:                               L I F E T I M E;
LINKED:                                 L I N K E D ;
LINUX:                                  L I N U X;
LISTENER_IP:                            L I S T E N E R '_' I P;
LISTENER_PORT:                          L I S T E N E R '_' P O R T;
LOCAL_SERVICE_NAME:                     L O C A L '_' S E R V I C E '_' N A M E;
LOG:                                    L O G;
MASK:                                   M A S K;
MATCHED:                                M A T C H E D;
MASTER:                                 M A S T E R;
MAX_MEMORY:                             M A X '_' M E M O R Y;
MAXTRANSFER:                            M A X T R A N S F E R;
MAXVALUE:                               M A X V A L U E ;
MAX_DISPATCH_LATENCY:                   M A X '_' D I S P A T C H '_' L A T E N C Y;
MAX_DURATION:                           M A X '_' D U R A T I O N;
MAX_EVENT_SIZE:                         M A X '_' E V E N T '_' S I Z E;
MAX_SIZE:                               M A X '_' S I Z E;
MAX_OUTSTANDING_IO_PER_VOLUME:          M A X '_' O U T S T A N D I N G '_' I O '_' P E R '_'  V O L U M E;
MEDIADESCRIPTION:                       M E D I A D E S C R I P T I O N;
MEDIANAME:                              M E D I A N A M E ;
MEMBER:                                 M E M B E R ;
MEMORY_PARTITION_MODE:                  M E M O R Y '_' P A R T I T I O N '_' M O D E;
MESSAGE_FORWARDING:                     M E S S A G E '_' F O R W A R D I N G;
MESSAGE_FORWARD_SIZE:                   M E S S A G E '_' F O R W A R D '_' S I Z E;
MINVALUE:                               M I N V A L U E;
MIRROR:                                 M I R R O R;
MUST_CHANGE:                            M U S T '_' C H A N G E;
NOFORMAT:                               N O F O R M A T;
NOINIT:                                 N O I N I T ;
NONE:                                   N O N E;
NOREWIND:                               N O R E W I N D;
NOSKIP:                                 N O S K I P;
NOUNLOAD:                               N O U N L O A D;
NO_CHECKSUM:                            N O '_' C H E C K S U M ;
NO_COMPRESSION:                         N O '_' C O M P R E S S I O N;
NO_EVENT_LOSS:                          N O '_' E V E N T '_' L O S S ;
NOTIFICATION:                           N O T I F I C A T I O N;
NTLM:                                   N T L M;
OLD_PASSWORD:                           O L D '_' P A S S W O R D ;
ON_FAILURE:                             O N '_' F A I L U R E ;
OPERATIONS:                             O P E R A T I O N S ;
PAGE:                                   P A G E ;
PARAM_NODE:                             P A R A M '_' N O D E;
PARTIAL:                                P A R T I A L;
PASSWORD:                               P A S S W O R D;
PERMISSION_SET:                         P E R M I S S I O N '_' S E T;
PER_CPU:                                P E R '_' C P U;
PER_DB:                                 P E R '_' D B;
PER_NODE:                               P E R '_' N O D E;
PERSISTED:                              P E R S I S T E D;
PLATFORM:                               P L A T F O R M ;
POLICY:                                 P O L I C Y;
PREDICATE:                              P R E D I C A T E;
PROCESS:                                P R O C E S S;
PROFILE:                                P R O F I L E;
PYTHON:                                 P Y T H O N;
READ_WRITE_FILEGROUPS:                 R E A D '_' W R I T E '_' F I L E G R O U P S;
REGENERATE:                            R E G E N E R A T E;
RELATED_CONVERSATION:                    R E L A T E D '_' C O N V E R S A T I O N;
RELATED_CONVERSATION_GROUP:            R E L A T E D '_' C O N V E R S A T I O N '_' G R O U P;
REPLICATE:                             R E P L I C A T E;
REQUIRED:                               R E Q U I R E D;
RESET:                                  R E S E T;
RESOURCES:                              R E S O U R C E S;
RESTART:                                R E S T A R T;
RESUME:                                R E S U M E  ;
RETAINDAYS:                            R E T A I N D A Y S ;
RETURNS:                               R E T U R N S ;
REWIND:                                R E W I N D ;
ROLE:                                  R O L E ;
ROUND_ROBIN:                            R O U N D '_' R O B I N ;
RSA_512:                               R S A '_512';
RSA_1024:                              R S A '_1024';
RSA_2048:                              R S A '_2048';
RSA_3072:                              R S A '_3072';
RSA_4096:                              R S A '_4096';
SAFETY:                                S A F E T Y;
SAFE:                                  S A F E;
SCHEDULER:                             S C H E D U L E R;
SCHEME:                                S C H E M E ;
SCRIPT:                                S C R I P T ;
SERVER:                                S E R V E R;
SERVICE:                               S E R V I C E;
SERVICE_BROKER:                        S E R V I C E '_' B R O K E R;
SERVICE_NAME:                          S E R V I C E '_' N A M E;
SESSION:                               S E S S I O N;
SETTINGS:                              S E T T I N G S ;
SHRINKLOG:                             S H R I N K L O G;
SID:                                   S I D;
SKIP_KEYWORD:                          S K I P;
SOFTNUMA:                              S O F T N U M A;
SOURCE:                                 S O U R C E ;
SPECIFICATION:                          S P E C I F I C A T I O N;
SPLIT:                                 S P L I T;
SQL:                                   S Q L ;
SQLDUMPERFLAGS:                        S Q L D U M P E R F L A G S;
SQLDUMPERPATH:                         S Q L D U M P E R P A T H;
SQLDUMPERTIMEOUT:                      S Q L D U M P E R T I M E O U T S;
STATE:                                 S T A T E;
STATS:                                 S T A T S;
START:                                 S T A R T;
STARTED:                               S T A R T E D;
STARTUP_STATE:                         S T A R T U P '_' S T A T E ;
STOP:                                  S T O P;
STOPPED:                               S T O P P E D;
STOP_ON_ERROR:                         S T O P '_' O N '_' E R R O R;
SUPPORTED:                             S U P P O R T E D;
SWITCH:                                S W I T C H;
TAPE:                                  T A P E;
TARGET:                                T A R G E T;
TCP:                                   T C P ;
TRACE:                                 T R A C E;
TRACK_CAUSALITY:                       T R A C K '_' C A U S A L I T Y;
TRANSFER:                              T R A N S F E R;
UNCHECKED:                             U N C H E C K E D;
UNLOCK:                                U N L O C K;
UNSAFE:                                U N S A F E;
URL:                                   U R L;
USED:                                  U S E D;
VERBOSELOGGING:                        V E R B O S E L O G G I N G;
VISIBILITY:                             V I S I B I L I T Y;
WAIT_AT_LOW_PRIORITY:                   W A I T '_' A T '_' L O W '_' P R I O R I T Y;
WINDOWS:                                W I N D O W S;
WITHOUT:                                W I T H O U T;
WITNESS:                                W I T N E S S;
XACT_ABORT:                             X A C T '_' A B O R T;

//Build-ins:
VARCHAR:                                V A R C H A R;
NVARCHAR:                               N V A R C H A R ;
NUMERIC:                                N U M E R I C;
DOTSYM:     (SINGLE_QUOTE DOT SINGLE_QUOTE)|(SINGLE_QUOTE COMMA SINGLE_QUOTE);

SPACE:              [ \t\r\n]+    -> skip;
// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/slash-star-comment-transact-sql
COMMENT:            '/*' (COMMENT | .)*? '*/' -> channel(HIDDEN);
LINE_COMMENT:       '--' ~[\r\n]* -> channel(HIDDEN);

// TODO: ID can be not only Latin.
DOUBLE_QUOTE_ID:    '"' ~'"'+ '"';
SINGLE_QUOTE:       '\'';
SQUARE_BRACKET_ID:  '[' (~']' | ']' ']')* ']';
LOCAL_ID:           '@' ([A-Za-z_$@#0-9] | FullWidthLetter)*;
DECIMAL:             DEC_DIGIT+;
ID:                  ( [A-Za-z_#] | FullWidthLetter) ( [A-Za-z_#$@0-9] | FullWidthLetter )*;
STRING:              'N'? '\'' (~'\'' | '\'\'')* '\'';
BINARY:              '0' X HEX_DIGIT*;
FLOAT:               DEC_DOT_DEC;
REAL:                (DECIMAL | DEC_DOT_DEC) (E [+-]? DEC_DIGIT+);

EQUAL:               '=';

GREATER:             '>';
LESS:                '<';
EXCLAMATION:         '!';

PLUS_ASSIGN:         '+=';
MINUS_ASSIGN:        '-=';
MULT_ASSIGN:         '*=';
DIV_ASSIGN:          '/=';
MOD_ASSIGN:          '%=';
AND_ASSIGN:          '&=';
XOR_ASSIGN:          '^=';
OR_ASSIGN:           '|=';

DOUBLE_BAR:          '||';
DOT:                 '.';
UNDERLINE:           '_';
AT:                  '@';
SHARP:               '#';
DOLLAR:              '$';
LR_BRACKET:          '(';
RR_BRACKET:          ')';
COLON:               ':';
DOUBLE_COLON:        '::';
DIVIDE:              '/';
MODULE:              '%';
PLUS:                '+';
MINUS:               '-';
BIT_NOT:             '~';
BIT_OR:              '|';
BIT_AND:             '&';
BIT_XOR:             '^';
COMMA:               ',';
ASTERIK:             '*';
fragment LETTER:       [A-Z_];
fragment DEC_DOT_DEC:  (DEC_DIGIT+ '.' DEC_DIGIT+ |  DEC_DIGIT+ '.' | '.' DEC_DIGIT+);
fragment HEX_DIGIT:    [0-9A-F];
fragment DEC_DIGIT:    [0-9];

SEMICOLON:   ';';
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

l_bracket:                                     LR_BRACKET;
r_bracket:                                     RR_BRACKET;
comma:                                         COMMA;

//tsql_file
//    : batch* EOF
//    | execute_body_batch go_batch_statement* EOF
//    ;
//
//batch
//    : go_batch_statement
//    | execute_body_batch? (go_batch_statement | sql_clauses+) go_statement*
//    | batch_level_statement go_statement*
//    | go_statement
//    ;
//
//batch_level_statement
//    : create_or_alter_function
//    | create_or_alter_procedure
//    | create_or_alter_trigger
//    | create_view
//    ;
//sql_clauses
//    : dml_clause SEMI?
//    | cfl_statement SEMI?
//    | another_statement SEMI?
//    | ddl_clause SEMI?
//    | dbcc_special SEMI?
//    | dbcc_clause SEMI?
//    | backup_statement SEMI?
//    | SEMI
//    ;
//
//// Data Manipulation Language: https://msdn.microsoft.com/en-us/library/ff848766(v=sql.120).aspx
//dml_clause
//    : merge_statement
//    | delete_statement
//    | insert_statement
//
//    | select_statement_standalone
//    | update_statement
//    ;
//
//// Data Definition Language: https://msdn.microsoft.com/en-us/library/ff848799.aspx)
//ddl_clause
//    : alter_application_role
//    | alter_assembly
//    | alter_asymmetric_key
//    | alter_authorization
//    | alter_authorization_for_azure_dw
//    | alter_authorization_for_parallel_dw
//    | alter_authorization_for_sql_database
//    | alter_availability_group
//    | alter_certificate
//    | alter_column_encryption_key
//    | alter_credential
//    | alter_cryptographic_provider
//    | alter_database
//    | alter_db_role
//    | alter_endpoint
//    | create_or_alter_event_session
//    | alter_external_data_source
//    | alter_external_library
//    | alter_external_resource_pool
//    | alter_fulltext_catalog
//    | alter_fulltext_stoplist
//    | alter_index
//    | alter_login_azure_sql
//    | alter_login_azure_sql_dw_and_pdw
//    | alter_login_sql_server
//    | alter_master_key_azure_sql
//    | alter_master_key_sql_server
//    | alter_message_type
//    | alter_partition_function
//    | alter_partition_scheme
//    | alter_remote_service_binding
//    | alter_resource_governor
//    | alter_schema_azure_sql_dw_and_pdw
//    | alter_schema_sql
//    | alter_sequence
//    | alter_server_audit
//    | alter_server_audit_specification
//    | alter_server_configuration
//    | alter_server_role
//    | alter_server_role_pdw
//    | alter_service
//    | alter_service_master_key
//    | alter_symmetric_key
//    | alter_table
//    | alter_user
//    | alter_user_azure_sql
//    | alter_workload_group
//    | create_application_role
//    | create_assembly
//    | create_asymmetric_key
//    | create_column_encryption_key
//    | create_column_master_key
//    | create_credential
//    | create_cryptographic_provider
//    | create_database
//    | create_db_role
//    | create_event_notification
//    | create_external_library
//    | create_external_resource_pool
//    | create_fulltext_catalog
//    | create_fulltext_stoplist
//    | create_index
//    | create_columnstore_index
//    | create_nonclustered_columnstore_index
//    | create_login_azure_sql
//    | create_login_pdw
//    | create_login_sql_server
//    | create_master_key_azure_sql
//    | create_master_key_sql_server
//    | create_or_alter_broker_priority
//    | create_remote_service_binding
//    | create_resource_pool
//    | create_route
//    | create_rule
//    | create_schema
//    | create_schema_azure_sql_dw_and_pdw
//    | create_search_property_list
//    | create_security_policy
//    | create_sequence
//    | create_server_audit
//    | create_server_audit_specification
//    | create_server_role
//    | create_service
//    | create_statistics
//    | create_synonym
//    | create_table
//    | create_type
//    | create_user
//    | create_user_azure_sql_dw
//    | create_workload_group
//    | create_xml_index
//    | create_xml_schema_collection
//    | create_partition_function
//    | create_partition_scheme
//    | drop_aggregate
//    | drop_application_role
//    | drop_assembly
//    | drop_asymmetric_key
//    | drop_availability_group
//    | drop_broker_priority
//    | drop_certificate
//    | drop_column_encryption_key
//    | drop_column_master_key
//    | drop_contract
//    | drop_credential
//    | drop_cryptograhic_provider
//    | drop_database
//    | drop_database_audit_specification
//    | drop_database_encryption_key
//    | drop_database_scoped_credential
//    | drop_db_role
//    | drop_default
//    | drop_endpoint
//    | drop_event_notifications
//    | drop_event_session
//    | drop_external_data_source
//    | drop_external_file_format
//    | drop_external_library
//    | drop_external_resource_pool
//    | drop_external_table
//    | drop_fulltext_catalog
//    | drop_fulltext_index
//    | drop_fulltext_stoplist
//    | drop_function
//    | drop_index
//    | drop_login
//    | drop_master_key
//    | drop_message_type
//    | drop_partition_function
//    | drop_partition_scheme
//    | drop_procedure
//    | drop_queue
//    | drop_remote_service_binding
//    | drop_resource_pool
//    | drop_route
//    | drop_rule
//    | drop_schema
//    | drop_search_property_list
//    | drop_security_policy
//    | drop_sequence
//    | drop_server_audit
//    | drop_server_audit_specification
//    | drop_server_role
//    | drop_service
//    | drop_signature
//    | drop_statistics
//    | drop_statistics_name_azure_dw_and_pdw
//    | drop_symmetric_key
//    | drop_synonym
//    | drop_table
//    | drop_trigger
//    | drop_type
//    | drop_user
//    | drop_view
//    | drop_workload_group
//    | drop_xml_schema_collection
//    | disable_trigger
//    | enable_trigger
//    | lock_table
//    | truncate_table
//    | update_statistics
//    ;
//backup_statement
//    : backup_database
//    | backup_log
//    | backup_certificate
//    | backup_master_key
//    | backup_service_master_key
//    ;
//
//// Control-of-Flow Language: https://docs.microsoft.com/en-us/sql/t-sql/language-elements/control-of-flow
//cfl_statement
//    : block_statement
//    | break_statement
//    | continue_statement
//    | goto_statement
//    | if_statement
//    | return_statement
//    | throw_statement
//    | try_catch_statement
//    | waitfor_statement
//    | while_statement
//    | print_statement
//    | raiseerror_statement
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/begin-end-transact-sql
//block_statement
//    : BEGIN ';'? sql_clauses* END ';'?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/break-transact-sql
//break_statement
//    : BREAK ';'?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/continue-transact-sql
//continue_statement
//    : CONTINUE ';'?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/goto-transact-sql
//goto_statement
//    : GOTO id_ ';'?
//    | id_ ':' ';'?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/return-transact-sql
//return_statement
//    : RETURN expression? ';'?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/if-else-transact-sql
//if_statement
//    : IF search_condition sql_clauses (ELSE sql_clauses)? ';'?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/throw-transact-sql
//throw_statement
//    : THROW (throw_error_number   comma    throw_message   comma    throw_state)? ';'?
//    ;
//
//throw_error_number
//    : DECIMAL | LOCAL_ID
//    ;
//
//throw_message
//    : STRING | LOCAL_ID
//    ;
//
//throw_state
//    : DECIMAL | LOCAL_ID
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/try-catch-transact-sql
//try_catch_statement
//    : BEGIN TRY ';'? try_clauses=sql_clauses+ END TRY ';'? BEGIN CATCH ';'? catch_clauses=sql_clauses* END CATCH ';'?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/waitfor-transact-sql
//waitfor_statement
//    : WAITFOR receive_statement?   comma? ((DELAY | TIME | TIMEOUT) time)?  expression? ';'?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/while-transact-sql
//while_statement
//    : WHILE search_condition (sql_clauses | BREAK ';'? | CONTINUE ';'?)
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/print-transact-sql
//print_statement
//    : PRINT (expression | DOUBLE_QUOTE_ID) (  comma    LOCAL_ID)* ';'?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/raiserror-transact-sql
//raiseerror_statement
//    : RAISERROR   l_bracket   msg=(DECIMAL | STRING | LOCAL_ID)   comma    severity=constant_LOCAL_ID   comma
//    state=constant_LOCAL_ID (  comma    constant_LOCAL_ID)*   r_bracket   (WITH (LOG | SETERROR | NOWAIT))? ';'?
//    | RAISERROR DECIMAL formatstring=(STRING | LOCAL_ID | DOUBLE_QUOTE_ID) (  comma    argument=(DECIMAL | STRING | LOCAL_ID))*
//    ;
//
//empty_statement
//    : ';'
//    ;
//
//another_statement
//    : declare_statement
//    | execute_statement
//    | cursor_statement
//    | conversation_statement
//    | create_contract
//    | create_queue
//    | alter_queue
//    | kill_statement
//    | message_statement
//    | security_statement
//    | set_statement
//    | transaction_statement
//    | use_statement
//    | setuser_statement
//    | reconfigure_statement
//    | shutdown_statement
//    | checkpoint_statement
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-application-role-transact-sql
//alter_application_role
//    : ALTER APPLICATION ROLE appliction_role=id_ WITH  (COMMA? NAME EQUAL new_application_role_name=id_)? (COMMA? PASSWORD EQUAL application_role_password=STRING)? (COMMA? DEFAULT_SCHEMA EQUAL app_role_default_schema=id_)?
//    ;
//
//create_application_role
//    : CREATE APPLICATION ROLE appliction_role=id_ WITH   (COMMA? PASSWORD EQUAL application_role_password=STRING)? (COMMA? DEFAULT_SCHEMA EQUAL app_role_default_schema=id_)?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-aggregate-transact-sql
//
//drop_aggregate
//    : DROP AGGREGATE ( IF EXISTS )? ( schema_name=id_ DOT )? aggregate_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-application-role-transact-sql
//drop_application_role
//    : DROP APPLICATION ROLE rolename=id_
//    ;
//
//alter_assembly
//    : alter_assembly_start assembly_name=id_ alter_assembly_clause
//    ;
//
//alter_assembly_start
//    :  ALTER ASSEMBLY
//    ;
//
//alter_assembly_clause
//    : alter_assembly_from_clause? alter_assembly_with_clause? alter_assembly_drop_clause? alter_assembly_add_clause?
//    ;
//
//alter_assembly_from_clause
//    : alter_assembly_from_clause_start (client_assembly_specifier | alter_assembly_file_bits )
//    ;
//
//alter_assembly_from_clause_start
//    : FROM
//    ;
//
//alter_assembly_drop_clause
//    : alter_assembly_drop alter_assembly_drop_multiple_files
//    ;
//
//alter_assembly_drop_multiple_files
//    : ALL
//    | multiple_local_files
//    ;
//
//alter_assembly_drop
//    : DROP
//    ;
//
//alter_assembly_add_clause
//    : alter_asssembly_add_clause_start alter_assembly_client_file_clause
//    ;
//
//alter_asssembly_add_clause_start
//    : ADD FILE FROM
//    ;
//
//// need to implement
//alter_assembly_client_file_clause
//    :  alter_assembly_file_name (alter_assembly_as id_)?
//    ;
//
//alter_assembly_file_name
//    : STRING
//    ;
//
////need to implement
//alter_assembly_file_bits
//    : alter_assembly_as id_
//    ;
//
//alter_assembly_as
//    : AS
//    ;
//
//alter_assembly_with_clause
//    : alter_assembly_with assembly_option
//    ;
//
//alter_assembly_with
//    : WITH
//    ;
//
//client_assembly_specifier
//    : network_file_share
//    | local_file
//    | STRING
//    ;
//
//assembly_option
//    : PERMISSION_SET EQUAL (SAFE|EXTERNAL_ACCESS|UNSAFE)
//    | VISIBILITY EQUAL (ON | OFF)
//    | UNCHECKED DATA
//    | assembly_option COMMA
//    ;
//
//network_file_share
//    : network_file_start network_computer file_path
//    ;
//
//network_computer
//    : computer_name=id_
//    ;
//
//network_file_start
//    : DOUBLE_BACK_SLASH
//    ;
//
//file_path
//    : file_directory_path_separator file_path
//    | id_
//    ;
//
//file_directory_path_separator
//    : '\\'
//    ;
//
//local_file
//    : local_drive file_path
//    ;
//
//local_drive
//    :
//    DISK_DRIVE
//    ;
//multiple_local_files
//    :
//    multiple_local_file_start local_file SINGLE_QUOTE COMMA
//    | local_file
//    ;
//
//multiple_local_file_start
//    : SINGLE_QUOTE
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-assembly-transact-sql
//create_assembly
//    : CREATE ASSEMBLY assembly_name=id_ (AUTHORIZATION owner_name=id_)?
//       FROM (COMMA? (STRING|BINARY) )+
//       (WITH PERMISSION_SET EQUAL (SAFE|EXTERNAL_ACCESS|UNSAFE) )?
//
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-assembly-transact-sql
//drop_assembly
//    : DROP ASSEMBLY ( IF EXISTS )? (COMMA? assembly_name=id_)+
//       ( WITH NO DEPENDENTS )?
//    ;
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-asymmetric-key-transact-sql
//
//alter_asymmetric_key
//    : alter_asymmetric_key_start Asym_Key_Name=id_ (asymmetric_key_option | REMOVE PRIVATE KEY )
//    ;
//
//alter_asymmetric_key_start
//    : ALTER ASYMMETRIC KEY
//    ;
//
//asymmetric_key_option
//    : asymmetric_key_option_start asymmetric_key_password_change_option ( COMMA asymmetric_key_password_change_option)? RR_BRACKET
//    ;
//
//asymmetric_key_option_start
//    : WITH PRIVATE KEY LR_BRACKET
//    ;
//
//asymmetric_key_password_change_option
//    : DECRYPTION BY PASSWORD EQUAL STRING
//    | ENCRYPTION BY PASSWORD EQUAL STRING
//    ;
//
//
////https://docs.microsoft.com/en-us/sql/t-sql/statements/create-asymmetric-key-transact-sql
//
//create_asymmetric_key
//    : CREATE ASYMMETRIC KEY Asym_Key_Nam=id_
//       (AUTHORIZATION database_principal_name=id_)?
//       ( FROM (FILE EQUAL STRING |EXECUTABLE_FILE EQUAL STRING|ASSEMBLY Assembly_Name=id_ | PROVIDER Provider_Name=id_) )?
//       (WITH (ALGORITHM EQUAL ( RSA_4096 | RSA_3072 | RSA_2048 | RSA_1024 | RSA_512)  |PROVIDER_KEY_NAME EQUAL provider_key_name=STRING | CREATION_DISPOSITION EQUAL (CREATE_NEW|OPEN_EXISTING)  )   )?
//       (ENCRYPTION BY PASSWORD EQUAL asymmetric_key_password=STRING )?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-asymmetric-key-transact-sql
//drop_asymmetric_key
//    : DROP ASYMMETRIC KEY key_name=id_ ( REMOVE PROVIDER KEY )?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-authorization-transact-sql
//
//alter_authorization
//    : alter_authorization_start (class_type colon_colon)? entity=entity_name entity_to authorization_grantee
//    ;
//
//authorization_grantee
//    : principal_name=id_
//    | SCHEMA OWNER
//    ;
//
//entity_to
//    : TO
//    ;
//
//colon_colon
//    : DOUBLE_COLON
//    ;
//
//alter_authorization_start
//    : ALTER AUTHORIZATION ON
//    ;
//
//alter_authorization_for_sql_database
//    : alter_authorization_start (class_type_for_sql_database colon_colon)? entity=entity_name entity_to authorization_grantee
//    ;
//
//alter_authorization_for_azure_dw
//    : alter_authorization_start (class_type_for_azure_dw colon_colon)? entity=entity_name_for_azure_dw entity_to authorization_grantee
//    ;
//
//alter_authorization_for_parallel_dw
//    : alter_authorization_start (class_type_for_parallel_dw colon_colon)? entity=entity_name_for_parallel_dw entity_to authorization_grantee
//    ;
//
//
//class_type
//    : OBJECT
//    | ASSEMBLY
//    | ASYMMETRIC KEY
//    | AVAILABILITY GROUP
//    | CERTIFICATE
//    | CONTRACT
//    | TYPE
//    | DATABASE
//    | ENDPOINT
//    | FULLTEXT CATALOG
//    | FULLTEXT STOPLIST
//    | MESSAGE TYPE
//    | REMOTE SERVICE BINDING
//    | ROLE
//    | ROUTE
//    | SCHEMA
//    | SEARCH PROPERTY LIST
//    | SERVER ROLE
//    | SERVICE
//    | SYMMETRIC KEY
//    | XML SCHEMA COLLECTION
//    ;
//
//class_type_for_sql_database
//    :  OBJECT
//    | ASSEMBLY
//    | ASYMMETRIC KEY
//    | CERTIFICATE
//    | TYPE
//    | DATABASE
//    | FULLTEXT CATALOG
//    | FULLTEXT STOPLIST
//    | ROLE
//    | SCHEMA
//    | SEARCH PROPERTY LIST
//    | SYMMETRIC KEY
//    | XML SCHEMA COLLECTION
//    ;
//
//class_type_for_azure_dw
//    : SCHEMA
//    | OBJECT
//    ;
//
//class_type_for_parallel_dw
//    : DATABASE
//    | SCHEMA
//    | OBJECT
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/grant-transact-sql?view=sql-server-ver15
//// SELECT DISTINCT '| ' + CLASS_DESC
//// FROM sys.dm_audit_actions
//// ORDER BY 1
//class_type_for_grant
//    : APPLICATION ROLE
//    | ASSEMBLY
//    | ASYMMETRIC KEY
//    | AUDIT
//    | AVAILABILITY GROUP
//    | BROKER PRIORITY
//    | CERTIFICATE
//    | COLUMN ( ENCRYPTION | MASTER ) KEY
//    | CONTRACT
//    | CREDENTIAL
//    | CRYPTOGRAPHIC PROVIDER
//    | DATABASE ( AUDIT SPECIFICATION
//               | ENCRYPTION KEY
//               | EVENT SESSION
//               | SCOPED ( CONFIGURATION
//                        | CREDENTIAL
//                        | RESOURCE GOVERNOR )
//               )?
//    | ENDPOINT
//    | EVENT SESSION
//    | NOTIFICATION (DATABASE | OBJECT | SERVER)
//    | EXTERNAL ( DATA SOURCE
//               | FILE FORMAT
//               | LIBRARY
//               | RESOURCE POOL
//               | TABLE
//               | CATALOG
//               | STOPLIST
//               )
//    | LOGIN
//    | MASTER KEY
//    | MESSAGE TYPE
//    | OBJECT
//    | PARTITION ( FUNCTION | SCHEME)
//    | REMOTE SERVICE BINDING
//    | RESOURCE GOVERNOR
//    | ROLE
//    | ROUTE
//    | SCHEMA
//    | SEARCH PROPERTY LIST
//    | SERVER ( ( AUDIT SPECIFICATION? ) | ROLE )?
//    | SERVICE
//    | SQL LOGIN
//    | SYMMETRIC KEY
//    | TRIGGER ( DATABASE | SERVER)
//    | TYPE
//    | USER
//    | XML SCHEMA COLLECTION
//    ;
//
//
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-availability-group-transact-sql
//drop_availability_group
//    : DROP AVAILABILITY GROUP group_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-availability-group-transact-sql
//alter_availability_group
//    : alter_availability_group_start alter_availability_group_options
//    ;
//
//alter_availability_group_start
//    : ALTER AVAILABILITY GROUP group_name=id_
//    ;
//
//alter_availability_group_options
//    : SET LR_BRACKET ( ( AUTOMATED_BACKUP_PREFERENCE EQUAL ( PRIMARY | SECONDARY_ONLY| SECONDARY | NONE )  | FAILURE_CONDITION_LEVEL  EQUAL DECIMAL   | HEALTH_CHECK_TIMEOUT EQUAL milliseconds=DECIMAL  | DB_FAILOVER  EQUAL ( ON | OFF )   | REQUIRED_SYNCHRONIZED_SECONDARIES_TO_COMMIT EQUAL DECIMAL ) RR_BRACKET  )
//    | ADD DATABASE database_name=id_
//    | REMOVE DATABASE database_name=id_
//    | ADD REPLICA ON server_instance=STRING (WITH LR_BRACKET ( (ENDPOINT_URL EQUAL STRING)?   (COMMA? AVAILABILITY_MODE EQUAL (SYNCHRONOUS_COMMIT| ASYNCHRONOUS_COMMIT))?    (COMMA? FAILOVER_MODE EQUAL (AUTOMATIC|MANUAL) )?  (COMMA?   SEEDING_MODE EQUAL (AUTOMATIC|MANUAL) )?  (COMMA?  BACKUP_PRIORITY EQUAL DECIMAL)?  ( COMMA? PRIMARY_ROLE  LR_BRACKET ALLOW_CONNECTIONS EQUAL ( READ_WRITE | ALL ) RR_BRACKET)?   ( COMMA? SECONDARY_ROLE  LR_BRACKET ALLOW_CONNECTIONS EQUAL ( READ_ONLY  ) RR_BRACKET )? )
//)    RR_BRACKET
//        |SECONDARY_ROLE LR_BRACKET (ALLOW_CONNECTIONS EQUAL (NO|READ_ONLY|ALL) | READ_ONLY_ROUTING_LIST EQUAL ( LR_BRACKET ( ( STRING) ) RR_BRACKET ) )
//        |PRIMARY_ROLE LR_BRACKET (ALLOW_CONNECTIONS EQUAL (NO|READ_ONLY|ALL) | READ_ONLY_ROUTING_LIST EQUAL ( LR_BRACKET ( (COMMA? STRING)*|NONE ) RR_BRACKET )
//        | SESSION_TIMEOUT EQUAL session_timeout=DECIMAL
//)
//    | MODIFY REPLICA ON server_instance=STRING (WITH LR_BRACKET (ENDPOINT_URL EQUAL STRING|  AVAILABILITY_MODE EQUAL (SYNCHRONOUS_COMMIT| ASYNCHRONOUS_COMMIT)  | FAILOVER_MODE EQUAL (AUTOMATIC|MANUAL) |   SEEDING_MODE EQUAL (AUTOMATIC|MANUAL)  |  BACKUP_PRIORITY EQUAL DECIMAL  )
//        |SECONDARY_ROLE LR_BRACKET (ALLOW_CONNECTIONS EQUAL (NO|READ_ONLY|ALL) | READ_ONLY_ROUTING_LIST EQUAL ( LR_BRACKET ( ( STRING) ) RR_BRACKET ) )
//        |PRIMARY_ROLE LR_BRACKET (ALLOW_CONNECTIONS EQUAL (NO|READ_ONLY|ALL) | READ_ONLY_ROUTING_LIST EQUAL ( LR_BRACKET ( (COMMA? STRING)*|NONE ) RR_BRACKET )
//         | SESSION_TIMEOUT EQUAL session_timeout=DECIMAL
//)   ) RR_BRACKET
//    | REMOVE REPLICA ON STRING
//    | JOIN
//    | JOIN AVAILABILITY GROUP ON (COMMA? ag_name=STRING WITH LR_BRACKET ( LISTENER_URL EQUAL STRING COMMA AVAILABILITY_MODE EQUAL (SYNCHRONOUS_COMMIT|ASYNCHRONOUS_COMMIT) COMMA FAILOVER_MODE EQUAL MANUAL COMMA SEEDING_MODE EQUAL (AUTOMATIC|MANUAL) RR_BRACKET ) )+
//     | MODIFY AVAILABILITY GROUP ON (COMMA? ag_name_modified=STRING WITH LR_BRACKET (LISTENER_URL EQUAL STRING  (COMMA? AVAILABILITY_MODE EQUAL (SYNCHRONOUS_COMMIT|ASYNCHRONOUS_COMMIT) )? (COMMA? FAILOVER_MODE EQUAL MANUAL )? (COMMA? SEEDING_MODE EQUAL (AUTOMATIC|MANUAL))? RR_BRACKET ) )+
//    |GRANT CREATE ANY DATABASE
//    | DENY CREATE ANY DATABASE
//    | FAILOVER
//    | FORCE_FAILOVER_ALLOW_DATA_LOSS
//    | ADD LISTENER listener_name=STRING  LR_BRACKET ( WITH DHCP (ON LR_BRACKET ip_v4_failover ip_v4_failover RR_BRACKET ) | WITH IP LR_BRACKET (    (COMMA? LR_BRACKET ( ip_v4_failover COMMA  ip_v4_failover | ip_v6_failover ) RR_BRACKET)+ RR_BRACKET  (COMMA PORT EQUAL DECIMAL)? ) ) RR_BRACKET
//    | MODIFY LISTENER (ADD IP LR_BRACKET (ip_v4_failover ip_v4_failover | ip_v6_failover) RR_BRACKET | PORT EQUAL DECIMAL )
//    |RESTART LISTENER STRING
//    |REMOVE LISTENER STRING
//    |OFFLINE
//    | WITH LR_BRACKET DTC_SUPPORT EQUAL PER_DB RR_BRACKET
//    ;
//
//ip_v4_failover
//    : STRING
//    ;
//
//ip_v6_failover
//    : STRING
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-broker-priority-transact-sql
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-broker-priority-transact-sql
//create_or_alter_broker_priority
//    : (CREATE | ALTER) BROKER PRIORITY ConversationPriorityName=id_ FOR CONVERSATION
//      SET LR_BRACKET
//     ( CONTRACT_NAME EQUAL ( ( id_) | ANY )  COMMA?  )?
//     ( LOCAL_SERVICE_NAME EQUAL (DOUBLE_FORWARD_SLASH? id_ | ANY ) COMMA? )?
//     ( REMOTE_SERVICE_NAME  EQUAL (RemoteServiceName=STRING | ANY ) COMMA? )?
//     ( PRIORITY_LEVEL EQUAL ( PriorityValue=DECIMAL | DEFAULT ) ) ?
//     RR_BRACKET
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-broker-priority-transact-sql
//drop_broker_priority
//    : DROP BROKER PRIORITY ConversationPriorityName=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-certificate-transact-sql
//alter_certificate
//    : ALTER CERTIFICATE certificate_name=id_ (REMOVE PRIVATE_KEY | WITH PRIVATE KEY LR_BRACKET ( FILE EQUAL STRING COMMA? | DECRYPTION BY PASSWORD EQUAL STRING COMMA?| ENCRYPTION BY PASSWORD EQUAL STRING  COMMA?)+ RR_BRACKET | WITH ACTIVE FOR BEGIN_DIALOG EQUAL ( ON | OFF ) )
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-column-encryption-key-transact-sql
//alter_column_encryption_key
//    : ALTER COLUMN ENCRYPTION KEY column_encryption_key=id_ (ADD | DROP) VALUE LR_BRACKET COLUMN_MASTER_KEY EQUAL column_master_key_name=id_ ( COMMA ALGORITHM EQUAL algorithm_name=STRING  COMMA ENCRYPTED_VALUE EQUAL BINARY)? RR_BRACKET
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-column-encryption-key-transact-sql
//create_column_encryption_key
//    :   CREATE COLUMN ENCRYPTION KEY column_encryption_key=id_
//         WITH VALUES
//           (LR_BRACKET COMMA? COLUMN_MASTER_KEY EQUAL column_master_key_name=id_ COMMA
//           ALGORITHM EQUAL algorithm_name=STRING  COMMA
//           ENCRYPTED_VALUE EQUAL encrypted_value=BINARY RR_BRACKET COMMA?)+
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-certificate-transact-sql
//drop_certificate
//    : DROP CERTIFICATE certificate_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-column-encryption-key-transact-sql
//drop_column_encryption_key
//    : DROP COLUMN ENCRYPTION KEY key_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-column-master-key-transact-sql
//drop_column_master_key
//    : DROP COLUMN MASTER KEY key_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-contract-transact-sql
//drop_contract
//    : DROP CONTRACT dropped_contract_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-credential-transact-sql
//drop_credential
//    : DROP CREDENTIAL credential_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-cryptographic-provider-transact-sql
//drop_cryptograhic_provider
//    : DROP CRYPTOGRAPHIC PROVIDER provider_name=id_
//    ;
//
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-database-transact-sql
//drop_database
//    : DROP DATABASE ( IF EXISTS )? (COMMA? database_name_or_database_snapshot_name=id_)+
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-database-audit-specification-transact-sql
//drop_database_audit_specification
//    : DROP DATABASE AUDIT SPECIFICATION audit_specification_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-database-encryption-key-transact-sql?view=sql-server-ver15
//drop_database_encryption_key
//    : DROP DATABASE ENCRYPTION KEY
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-database-scoped-credential-transact-sql
//drop_database_scoped_credential
//   : DROP DATABASE SCOPED CREDENTIAL credential_name=id_
//   ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-default-transact-sql
//drop_default
//    : DROP DEFAULT ( IF EXISTS )? (COMMA? (schema_name=id_ DOT)? default_name=id_)
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-endpoint-transact-sql
//drop_endpoint
//    : DROP ENDPOINT endPointName=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-external-data-source-transact-sql
//drop_external_data_source
//    : DROP EXTERNAL DATA SOURCE external_data_source_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-external-file-format-transact-sql
//drop_external_file_format
//    : DROP EXTERNAL FILE FORMAT external_file_format_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-external-library-transact-sql
//drop_external_library
//    : DROP EXTERNAL LIBRARY library_name=id_
//( AUTHORIZATION owner_name=id_ )?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-external-resource-pool-transact-sql
//drop_external_resource_pool
//    : DROP EXTERNAL RESOURCE POOL pool_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-external-table-transact-sql
//drop_external_table
//    : DROP EXTERNAL TABLE (database_name=id_ DOT)? (schema_name=id_ DOT)? table=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-event-notification-transact-sql
//drop_event_notifications
//    : DROP EVENT NOTIFICATION (COMMA? notification_name=id_)+
//        ON (SERVER|DATABASE|QUEUE queue_name=id_)
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-event-session-transact-sql
//drop_event_session
//    : DROP EVENT SESSION event_session_name=id_
//        ON SERVER
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-fulltext-catalog-transact-sql
//drop_fulltext_catalog
//    : DROP FULLTEXT CATALOG catalog_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-fulltext-index-transact-sql
//drop_fulltext_index
//    : DROP FULLTEXT INDEX ON (schema=id_ DOT)? table=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-fulltext-stoplist-transact-sql
//drop_fulltext_stoplist
//    : DROP FULLTEXT STOPLIST stoplist_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-login-transact-sql
//drop_login
//    : DROP LOGIN login_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-master-key-transact-sql
//drop_master_key
//    : DROP MASTER KEY
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-message-type-transact-sql
//drop_message_type
//    : DROP MESSAGE TYPE message_type_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-partition-function-transact-sql
//drop_partition_function
//    : DROP PARTITION FUNCTION partition_function_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-partition-scheme-transact-sql
//drop_partition_scheme
//    : DROP PARTITION SCHEME partition_scheme_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-queue-transact-sql
//drop_queue
//    : DROP QUEUE (database_name=id_ DOT)? (schema_name=id_ DOT)? queue_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-remote-service-binding-transact-sql
//drop_remote_service_binding
//    : DROP REMOTE SERVICE BINDING binding_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-resource-pool-transact-sql
//drop_resource_pool
//    : DROP RESOURCE POOL pool_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-role-transact-sql
//drop_db_role
//    : DROP ROLE ( IF EXISTS )? role_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-route-transact-sql
//drop_route
//    : DROP ROUTE route_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-rule-transact-sql
//drop_rule
//    : DROP RULE ( IF EXISTS )? (COMMA? (schema_name=id_ DOT)? rule_name=id_)?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-schema-transact-sql
//drop_schema
//    :  DROP SCHEMA ( IF EXISTS )? schema_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-search-property-list-transact-sql
//drop_search_property_list
//    : DROP SEARCH PROPERTY LIST property_list_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-security-policy-transact-sql
//drop_security_policy
//    : DROP SECURITY POLICY ( IF EXISTS )? (schema_name=id_ DOT )? security_policy_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-sequence-transact-sql
//drop_sequence
//    : DROP SEQUENCE ( IF EXISTS )? ( COMMA? (database_name=id_ DOT)? (schema_name=id_ DOT)?          sequence_name=id_ )?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-server-audit-transact-sql
//drop_server_audit
//    : DROP SERVER AUDIT audit_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-server-audit-specification-transact-sql
//drop_server_audit_specification
//    : DROP SERVER AUDIT SPECIFICATION audit_specification_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-server-role-transact-sql
//drop_server_role
//    : DROP SERVER ROLE role_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-service-transact-sql
//drop_service
//    : DROP SERVICE dropped_service_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-signature-transact-sql
//drop_signature
//    : DROP ( COUNTER )? SIGNATURE FROM (schema_name=id_ DOT)? module_name=id_
//        BY (COMMA?  CERTIFICATE cert_name=id_
//           | COMMA? ASYMMETRIC KEY Asym_key_name=id_
//           )+
//    ;
//
//
//drop_statistics_name_azure_dw_and_pdw
//    :  DROP STATISTICS  (schema_name=id_ DOT)? object_name=id_ DOT statistics_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-symmetric-key-transact-sql
//drop_symmetric_key
//    : DROP SYMMETRIC KEY symmetric_key_name=id_ (REMOVE PROVIDER KEY)?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-synonym-transact-sql
//drop_synonym
//    : DROP SYNONYM ( IF EXISTS )? ( schema=id_ DOT )? synonym_name=id_
//    ;
//
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-user-transact-sql
//drop_user
//    : DROP USER ( IF EXISTS )? user_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-workload-group-transact-sql
//drop_workload_group
//    : DROP WORKLOAD GROUP group_name=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-xml-schema-collection-transact-sql
//drop_xml_schema_collection
//    : DROP XML SCHEMA COLLECTION ( relational_schema=id_ DOT )?  sql_identifier=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/disable-trigger-transact-sql
//disable_trigger
//    : DISABLE TRIGGER ( ( COMMA? (schema_name=id_ DOT)? trigger_name=id_ )+ | ALL)         ON ((schema_id=id_ DOT)? object_name=id_|DATABASE|ALL SERVER)
//    ;
//
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/enable-trigger-transact-sql
//enable_trigger
//    : ENABLE TRIGGER ( ( COMMA? (schema_name=id_ DOT)? trigger_name=id_ )+ | ALL)         ON ( (schema_id=id_ DOT)? object_name=id_|DATABASE|ALL SERVER)
//    ;
//
//lock_table
//    : LOCK TABLE table_name IN (SHARE | EXCLUSIVE) MODE (WAIT seconds=DECIMAL | NOWAIT)? ';'?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/truncate-table-transact-sql
//truncate_table
//    : TRUNCATE TABLE table_name
//          ( WITH LR_BRACKET
//              PARTITIONS LR_BRACKET
//                                (COMMA? (DECIMAL|DECIMAL TO DECIMAL) )+
//                         RR_BRACKET
//
//                 RR_BRACKET
//          )?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-column-master-key-transact-sql
//create_column_master_key
//    : CREATE COLUMN MASTER KEY key_name=id_
//         WITH LR_BRACKET
//            KEY_STORE_PROVIDER_NAME EQUAL  key_store_provider_name=STRING COMMA
//            KEY_PATH EQUAL key_path=STRING
//           RR_BRACKET
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-credential-transact-sql
//alter_credential
//    : ALTER CREDENTIAL credential_name=id_
//        WITH IDENTITY EQUAL identity_name=STRING
//         ( COMMA SECRET EQUAL secret=STRING )?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-credential-transact-sql
//create_credential
//    : CREATE CREDENTIAL credential_name=id_
//        WITH IDENTITY EQUAL identity_name=STRING
//         ( COMMA SECRET EQUAL secret=STRING )?
//         (  FOR CRYPTOGRAPHIC PROVIDER cryptographic_provider_name=id_ )?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-cryptographic-provider-transact-sql
//alter_cryptographic_provider
//    : ALTER CRYPTOGRAPHIC PROVIDER provider_name=id_ (FROM FILE EQUAL crypto_provider_ddl_file=STRING)? (ENABLE | DISABLE)?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-cryptographic-provider-transact-sql
//create_cryptographic_provider
//    : CREATE CRYPTOGRAPHIC PROVIDER provider_name=id_
//      FROM FILE EQUAL path_of_DLL=STRING
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-event-notification-transact-sql
//create_event_notification
//    : CREATE EVENT NOTIFICATION event_notification_name=id_
//      ON (SERVER|DATABASE|QUEUE queue_name=id_)
//        (WITH FAN_IN)?
//        FOR (COMMA? event_type_or_group=id_)+
//          TO SERVICE  broker_service=STRING  COMMA
//             broker_service_specifier_or_current_database=STRING
//    ;
//
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-event-session-transact-sql
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-event-session-transact-sql
//// todo: not implemented
//create_or_alter_event_session
//    : (CREATE | ALTER) EVENT SESSION event_session_name=id_ ON SERVER
//       (COMMA? ADD EVENT ( (event_module_guid=id_ DOT)? event_package_name=id_ DOT event_name=id_)
//        (LR_BRACKET
//          (SET ( COMMA? event_customizable_attributue=id_ EQUAL (DECIMAL|STRING) )* )?
//          ( ACTION LR_BRACKET (COMMA? (event_module_guid=id_ DOT)? event_package_name=id_ DOT action_name=id_)+  RR_BRACKET)+
//          (WHERE event_session_predicate_expression)?
//         RR_BRACKET )*
//      )*
//      (COMMA? DROP EVENT (event_module_guid=id_ DOT)? event_package_name=id_ DOT event_name=id_ )*
//
//      ( (ADD TARGET (event_module_guid=id_ DOT)? event_package_name=id_ DOT target_name=id_ ) ( LR_BRACKET SET (COMMA? target_parameter_name=id_ EQUAL (LR_BRACKET? DECIMAL RR_BRACKET? |STRING) )+ RR_BRACKET )* )*
//       (DROP TARGET (event_module_guid=id_ DOT)? event_package_name=id_ DOT target_name=id_ )*
//
//
//     (WITH
//           LR_BRACKET
//           (COMMA? MAX_MEMORY EQUAL max_memory=DECIMAL (KB|MB) )?
//           (COMMA? EVENT_RETENTION_MODE EQUAL (ALLOW_SINGLE_EVENT_LOSS | ALLOW_MULTIPLE_EVENT_LOSS | NO_EVENT_LOSS ) )?
//           (COMMA? MAX_DISPATCH_LATENCY EQUAL (max_dispatch_latency_seconds=DECIMAL SECONDS | INFINITE) )?
//           (COMMA?  MAX_EVENT_SIZE EQUAL max_event_size=DECIMAL (KB|MB) )?
//           (COMMA? MEMORY_PARTITION_MODE EQUAL (NONE | PER_NODE | PER_CPU) )?
//           (COMMA? TRACK_CAUSALITY EQUAL (ON|OFF) )?
//           (COMMA? STARTUP_STATE EQUAL (ON|OFF) )?
//           RR_BRACKET
//     )?
//     (STATE EQUAL (START|STOP) )?
//
//    ;
//
//event_session_predicate_expression
//    : ( COMMA? (AND|OR)? NOT? ( event_session_predicate_factor | LR_BRACKET event_session_predicate_expression RR_BRACKET) )+
//    ;
//
//event_session_predicate_factor
//    : event_session_predicate_leaf
//    | LR_BRACKET event_session_predicate_expression RR_BRACKET
//    ;
//
//event_session_predicate_leaf
//    : (event_field_name=id_ | (event_field_name=id_ |( (event_module_guid=id_ DOT)?  event_package_name=id_ DOT predicate_source_name=id_ ) ) (EQUAL |(LESS GREATER) | (EXCLAMATION EQUAL) | GREATER  | (GREATER EQUAL)| LESS | LESS EQUAL) (DECIMAL | STRING) )
//    | (event_module_guid=id_ DOT)?  event_package_name=id_ DOT predicate_compare_name=id_ LR_BRACKET (event_field_name=id_ |( (event_module_guid=id_ DOT)?  event_package_name=id_ DOT predicate_source_name=id_ ) COMMA  (DECIMAL | STRING) ) RR_BRACKET
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-external-data-source-transact-sql
//alter_external_data_source
//    : ALTER EXTERNAL DATA SOURCE data_source_name=id_  SET
//    ( LOCATION EQUAL location=STRING COMMA? |  RESOURCE_MANAGER_LOCATION EQUAL resource_manager_location=STRING COMMA? |  CREDENTIAL EQUAL credential_name=id_ )+
//    | ALTER EXTERNAL DATA SOURCE data_source_name=id_ WITH LR_BRACKET TYPE EQUAL BLOB_STORAGE COMMA LOCATION EQUAL location=STRING (COMMA CREDENTIAL EQUAL credential_name=id_ )? RR_BRACKET
//    ;
//
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-external-library-transact-sql
//alter_external_library
//    : ALTER EXTERNAL LIBRARY library_name=id_ (AUTHORIZATION owner_name=id_)?
//       (SET|ADD) ( LR_BRACKET CONTENT EQUAL (client_library=STRING | BINARY | NONE) (COMMA PLATFORM EQUAL (WINDOWS|LINUX)? RR_BRACKET) WITH (COMMA? LANGUAGE EQUAL (R|PYTHON) | DATA_SOURCE EQUAL external_data_source_name=id_ )+ RR_BRACKET )
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-external-library-transact-sql
//create_external_library
//    : CREATE EXTERNAL LIBRARY library_name=id_ (AUTHORIZATION owner_name=id_)?
//       FROM (COMMA? LR_BRACKET?  (CONTENT EQUAL)? (client_library=STRING | BINARY | NONE) (COMMA PLATFORM EQUAL (WINDOWS|LINUX)? RR_BRACKET)? ) ( WITH (COMMA? LANGUAGE EQUAL (R|PYTHON) | DATA_SOURCE EQUAL external_data_source_name=id_ )+ RR_BRACKET  )?
//    ;
//
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-external-resource-pool-transact-sql
//alter_external_resource_pool
//    : ALTER EXTERNAL RESOURCE POOL (pool_name=id_ | DEFAULT_DOUBLE_QUOTE) WITH LR_BRACKET MAX_CPU_PERCENT EQUAL max_cpu_percent=DECIMAL ( COMMA? AFFINITY CPU EQUAL (AUTO|(COMMA? DECIMAL TO DECIMAL |COMMA DECIMAL )+ ) | NUMANODE EQUAL (COMMA? DECIMAL TO DECIMAL| COMMA? DECIMAL )+  ) (COMMA? MAX_MEMORY_PERCENT EQUAL max_memory_percent=DECIMAL)? (COMMA? MAX_PROCESSES EQUAL max_processes=DECIMAL)?  RR_BRACKET
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-external-resource-pool-transact-sql
//create_external_resource_pool
//    : CREATE EXTERNAL RESOURCE POOL pool_name=id_  WITH LR_BRACKET MAX_CPU_PERCENT EQUAL max_cpu_percent=DECIMAL ( COMMA? AFFINITY CPU EQUAL (AUTO|(COMMA? DECIMAL TO DECIMAL |COMMA DECIMAL )+ ) | NUMANODE EQUAL (COMMA? DECIMAL TO DECIMAL| COMMA? DECIMAL )+  ) (COMMA? MAX_MEMORY_PERCENT EQUAL max_memory_percent=DECIMAL)? (COMMA? MAX_PROCESSES EQUAL max_processes=DECIMAL)?  RR_BRACKET
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-fulltext-catalog-transact-sql
//alter_fulltext_catalog
//    : ALTER FULLTEXT CATALOG catalog_name=id_ (REBUILD (WITH ACCENT_SENSITIVITY EQUAL (ON|OFF) )? | REORGANIZE | AS DEFAULT )
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-fulltext-catalog-transact-sql
//create_fulltext_catalog
//    : CREATE FULLTEXT CATALOG catalog_name=id_
//        (ON FILEGROUP filegroup=id_)?
//        (IN PATH rootpath=STRING)?
//        (WITH ACCENT_SENSITIVITY EQUAL (ON|OFF) )?
//        (AS DEFAULT)?
//        (AUTHORIZATION owner_name=id_)?
//    ;
//
//
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-fulltext-stoplist-transact-sql
//alter_fulltext_stoplist
//    : ALTER FULLTEXT STOPLIST stoplist_name=id_ (ADD stopword=STRING LANGUAGE (STRING|DECIMAL|BINARY) | DROP ( stopword=STRING LANGUAGE (STRING|DECIMAL|BINARY) |ALL (STRING|DECIMAL|BINARY) | ALL ) )
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-fulltext-stoplist-transact-sql
//create_fulltext_stoplist
//    :   CREATE FULLTEXT STOPLIST stoplist_name=id_
//          (FROM ( (database_name=id_ DOT)? source_stoplist_name=id_ |SYSTEM STOPLIST ) )?
//          (AUTHORIZATION owner_name=id_)?
//    ;
//
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-login-transact-sql
//alter_login_sql_server
//    : ALTER LOGIN login_name=id_
//       ( (ENABLE|DISABLE)?  | WITH ( (PASSWORD EQUAL ( password=STRING | password_hash=BINARY HASHED ) ) (MUST_CHANGE|UNLOCK)* )? (OLD_PASSWORD EQUAL old_password=STRING (MUST_CHANGE|UNLOCK)* )? (DEFAULT_DATABASE EQUAL default_database=id_)? (DEFAULT_LANGUAGE EQUAL default_laguage=id_)?  (NAME EQUAL login_name=id_)? (CHECK_POLICY EQUAL (ON|OFF) )? (CHECK_EXPIRATION EQUAL (ON|OFF) )? (CREDENTIAL EQUAL credential_name=id_)? (NO CREDENTIAL)? | (ADD|DROP) CREDENTIAL credential_name=id_ )
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-login-transact-sql
//create_login_sql_server
//    : CREATE LOGIN login_name=id_
//       ( WITH ( (PASSWORD EQUAL ( password=STRING | password_hash=BINARY HASHED ) ) (MUST_CHANGE|UNLOCK)* )?
//       (COMMA? SID EQUAL sid=BINARY)?
//       (COMMA? DEFAULT_DATABASE EQUAL default_database=id_)?
//       (COMMA? DEFAULT_LANGUAGE EQUAL default_laguage=id_)?
//       (COMMA? CHECK_EXPIRATION EQUAL (ON|OFF) )?
//       (COMMA? CHECK_POLICY EQUAL (ON|OFF) )?
//       (COMMA? CREDENTIAL EQUAL credential_name=id_)?
//      |(FROM
//	(WINDOWS
//          (WITH (COMMA? DEFAULT_DATABASE EQUAL default_database=id_)? (COMMA?  DEFAULT_LANGUAGE EQUAL default_language=STRING)? )
//        | CERTIFICATE certname=id_
//        | ASYMMETRIC KEY asym_key_name=id_
//                )
//        )
//      )
//    ;
//
//alter_login_azure_sql
//    : ALTER LOGIN login_name=id_ ( (ENABLE|DISABLE)? | WITH (PASSWORD EQUAL password=STRING (OLD_PASSWORD EQUAL old_password=STRING)? | NAME EQUAL login_name=id_ ) )
//    ;
//
//create_login_azure_sql
//    : CREATE LOGIN login_name=id_
//       WITH PASSWORD EQUAL STRING (SID EQUAL sid=BINARY)?
//    ;
//
//alter_login_azure_sql_dw_and_pdw
//    : ALTER LOGIN login_name=id_ ( (ENABLE|DISABLE)? | WITH (PASSWORD EQUAL password=STRING (OLD_PASSWORD EQUAL old_password=STRING (MUST_CHANGE|UNLOCK)* )? | NAME EQUAL login_name=id_ ) )
//    ;
//
//create_login_pdw
//    : CREATE LOGIN loginName=id_
//        (WITH
//          ( PASSWORD EQUAL password=STRING (MUST_CHANGE)?
//              (CHECK_POLICY EQUAL (ON|OFF)? )?
//          )
//        | FROM WINDOWS
//        )
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-master-key-transact-sql
//alter_master_key_sql_server
//    : ALTER MASTER KEY ( (FORCE)? REGENERATE WITH ENCRYPTION BY PASSWORD EQUAL password=STRING |(ADD|DROP) ENCRYPTION BY (SERVICE MASTER KEY | PASSWORD EQUAL encryption_password=STRING) )
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-master-key-transact-sql
//create_master_key_sql_server
//    : CREATE MASTER KEY ENCRYPTION BY PASSWORD EQUAL password=STRING
//    ;
//
//alter_master_key_azure_sql
//    : ALTER MASTER KEY ( (FORCE)? REGENERATE WITH ENCRYPTION BY PASSWORD EQUAL password=STRING |ADD ENCRYPTION BY (SERVICE MASTER KEY | PASSWORD EQUAL encryption_password=STRING) | DROP ENCRYPTION BY  PASSWORD EQUAL encryption_password=STRING )
//    ;
//
//create_master_key_azure_sql
//    : CREATE MASTER KEY (ENCRYPTION BY PASSWORD EQUAL password=STRING)?
//    ;
//
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-message-type-transact-sql
//alter_message_type
//    : ALTER MESSAGE TYPE message_type_name=id_ VALIDATION EQUAL (NONE | EMPTY | WELL_FORMED_XML | VALID_XML WITH SCHEMA COLLECTION schema_collection_name=id_)
//    ;
//
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-partition-function-transact-sql
//alter_partition_function
//    : ALTER PARTITION FUNCTION partition_function_name=id_ LR_BRACKET RR_BRACKET        (SPLIT|MERGE) RANGE LR_BRACKET DECIMAL RR_BRACKET
//    ;
//
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-partition-scheme-transact-sql
//alter_partition_scheme
//    : ALTER PARTITION SCHEME partition_scheme_name=id_ NEXT USED (file_group_name=id_)?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-remote-service-binding-transact-sql
//alter_remote_service_binding
//    : ALTER REMOTE SERVICE BINDING binding_name=id_
//        WITH (USER EQUAL user_name=id_)?
//             (COMMA ANONYMOUS EQUAL (ON|OFF) )?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-remote-service-binding-transact-sql
//create_remote_service_binding
//    : CREATE REMOTE SERVICE BINDING binding_name=id_
//         (AUTHORIZATION owner_name=id_)?
//         TO SERVICE remote_service_name=STRING
//         WITH (USER EQUAL user_name=id_)?
//              (COMMA ANONYMOUS EQUAL (ON|OFF) )?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-resource-pool-transact-sql
//create_resource_pool
//    : CREATE RESOURCE POOL pool_name=id_
//        (WITH
//            LR_BRACKET
//               (COMMA? MIN_CPU_PERCENT EQUAL DECIMAL)?
//               (COMMA? MAX_CPU_PERCENT EQUAL DECIMAL)?
//               (COMMA? CAP_CPU_PERCENT EQUAL DECIMAL)?
//               (COMMA? AFFINITY SCHEDULER EQUAL
//                                  (AUTO
//                                   | LR_BRACKET (COMMA? (DECIMAL|DECIMAL TO DECIMAL) )+ RR_BRACKET
//                                   | NUMANODE EQUAL LR_BRACKET (COMMA? (DECIMAL|DECIMAL TO DECIMAL) )+ RR_BRACKET
//                                   )
//               )?
//               (COMMA? MIN_MEMORY_PERCENT EQUAL DECIMAL)?
//               (COMMA? MAX_MEMORY_PERCENT EQUAL DECIMAL)?
//               (COMMA? MIN_IOPS_PER_VOLUME EQUAL DECIMAL)?
//               (COMMA? MAX_IOPS_PER_VOLUME EQUAL DECIMAL)?
//            RR_BRACKET
//         )?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-resource-governor-transact-sql
//alter_resource_governor
//    : ALTER RESOURCE GOVERNOR ( (DISABLE | RECONFIGURE) | WITH LR_BRACKET CLASSIFIER_FUNCTION EQUAL ( schema_name=id_ DOT function_name=id_ | NULL_ ) RR_BRACKET | RESET STATISTICS | WITH LR_BRACKET MAX_OUTSTANDING_IO_PER_VOLUME EQUAL max_outstanding_io_per_volume=DECIMAL RR_BRACKET )
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-role-transact-sql
//alter_db_role
//    : ALTER ROLE role_name=id_
//        ( (ADD|DROP) MEMBER database_principal=id_
//        | WITH NAME EQUAL new_role_name=id_ )
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-role-transact-sql
//create_db_role
//    : CREATE ROLE role_name=id_ (AUTHORIZATION owner_name = id_)?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-route-transact-sql
//create_route
//    : CREATE ROUTE route_name=id_
//        (AUTHORIZATION owner_name=id_)?
//        WITH
//          (COMMA? SERVICE_NAME EQUAL route_service_name=STRING)?
//          (COMMA? BROKER_INSTANCE EQUAL broker_instance_identifier=STRING)?
//          (COMMA? LIFETIME EQUAL DECIMAL)?
//          COMMA? ADDRESS EQUAL STRING
//          (COMMA MIRROR_ADDRESS EQUAL STRING )?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-rule-transact-sql
//create_rule
//    : CREATE RULE (schema_name=id_ DOT)? rule_name=id_
//        AS search_condition
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-schema-transact-sql
//alter_schema_sql
//    : ALTER SCHEMA schema_name=id_ TRANSFER ((OBJECT|TYPE|XML SCHEMA COLLECTION) DOUBLE_COLON )? id_ (DOT id_)?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-schema-transact-sql
//create_schema
//    : CREATE SCHEMA
//	(schema_name=id_
//        |AUTHORIZATION owner_name=id_
//        | schema_name=id_ AUTHORIZATION owner_name=id_
//        )
//        (create_table
//         |create_view
//         | (GRANT|DENY) (SELECT|INSERT|DELETE|UPDATE) ON (SCHEMA DOUBLE_COLON)? object_name=id_ TO owner_name=id_
//         | REVOKE (SELECT|INSERT|DELETE|UPDATE) ON (SCHEMA DOUBLE_COLON)? object_name=id_ FROM owner_name=id_
//        )*
//    ;
//
//create_schema_azure_sql_dw_and_pdw
//    :
//CREATE SCHEMA schema_name=id_ (AUTHORIZATION owner_name=id_ )?
//    ;
//
//alter_schema_azure_sql_dw_and_pdw
//    : ALTER SCHEMA schema_name=id_ TRANSFER (OBJECT DOUBLE_COLON )? id_ (DOT ID)?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-search-property-list-transact-sql
//create_search_property_list
//    : CREATE SEARCH PROPERTY LIST new_list_name=id_
//        (FROM (database_name=id_ DOT)? source_list_name=id_ )?
//        (AUTHORIZATION owner_name=id_)?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-security-policy-transact-sql
//create_security_policy
//   : CREATE SECURITY POLICY (schema_name=id_ DOT)? security_policy_name=id_
//        (COMMA? ADD (FILTER|BLOCK)? PREDICATE tvf_schema_name=id_ DOT security_predicate_function_name=id_
//            LR_BRACKET (COMMA? column_name_or_arguments=id_)+ RR_BRACKET
//              ON table_schema_name=id_ DOT name
//                (COMMA? AFTER (INSERT|UPDATE)
//                | COMMA? BEFORE (UPDATE|DELETE)
//                )*
//         )+
//            (WITH LR_BRACKET
//                     STATE EQUAL (ON|OFF)
//		     (SCHEMABINDING (ON|OFF) )?
//                  RR_BRACKET
//             )?
//             (NOT FOR REPLICATION)?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-sequence-transact-sql
//alter_sequence
//    : ALTER SEQUENCE (schema_name=id_ DOT)? sequence_name=id_ ( RESTART (WITH DECIMAL)? )? (INCREMENT BY sequnce_increment=DECIMAL )? ( MINVALUE DECIMAL| NO MINVALUE)? (MAXVALUE DECIMAL| NO MAXVALUE)? (CYCLE|NO CYCLE)? (CACHE DECIMAL | NO CACHE)?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-sequence-transact-sql
//create_sequence
//    : CREATE SEQUENCE (schema_name=id_ DOT)? sequence_name=id_
//        (AS data_type  )?
//        (START WITH DECIMAL)?
//        (INCREMENT BY MINUS? DECIMAL)?
//        (MINVALUE (MINUS? DECIMAL)? | NO MINVALUE)?
//        (MAXVALUE (MINUS? DECIMAL)? | NO MAXVALUE)?
//        (CYCLE|NO CYCLE)?
//        (CACHE DECIMAL? | NO CACHE)?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-server-audit-transact-sql
//alter_server_audit
//    : ALTER SERVER AUDIT audit_name=id_
//        ( ( TO
//              (FILE
//                ( LR_BRACKET
//                   ( COMMA? FILEPATH EQUAL filepath=STRING
//                    | COMMA? MAXSIZE EQUAL ( DECIMAL (MB|GB|TB)
//                    |  UNLIMITED
//                   )
//                   | COMMA? MAX_ROLLOVER_FILES EQUAL max_rollover_files=(DECIMAL|UNLIMITED)
//                   | COMMA? MAX_FILES EQUAL max_files=DECIMAL
//                   | COMMA? RESERVE_DISK_SPACE EQUAL (ON|OFF)  )*
//                 RR_BRACKET )
//                | APPLICATION_LOG
//                | SECURITY_LOG
//            ) )?
//            ( WITH LR_BRACKET
//              (COMMA? QUEUE_DELAY EQUAL queue_delay=DECIMAL
//              | COMMA? ON_FAILURE EQUAL (CONTINUE | SHUTDOWN|FAIL_OPERATION)
//              |COMMA?  STATE EQUAL (ON|OFF) )*
//              RR_BRACKET
//            )?
//            ( WHERE ( COMMA? (NOT?) event_field_name=id_
//                                    (EQUAL
//                                    |(LESS GREATER)
//                                    | (EXCLAMATION EQUAL)
//                                    | GREATER
//                                    | (GREATER EQUAL)
//                                    | LESS
//                                    | LESS EQUAL
//                                    )
//                                      (DECIMAL | STRING)
//                    | COMMA? (AND|OR) NOT? (EQUAL
//                                           |(LESS GREATER)
//                                           | (EXCLAMATION EQUAL)
//                                           | GREATER
//                                           | (GREATER EQUAL)
//                                           | LESS
//                                           | LESS EQUAL)
//                                             (DECIMAL | STRING) ) )?
//        |REMOVE WHERE
//        | MODIFY NAME EQUAL new_audit_name=id_
//       )
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-server-audit-transact-sql
//create_server_audit
//    : CREATE SERVER AUDIT audit_name=id_
//        ( ( TO
//              (FILE
//                ( LR_BRACKET
//                   ( COMMA? FILEPATH EQUAL filepath=STRING
//                    | COMMA? MAXSIZE EQUAL ( DECIMAL (MB|GB|TB)
//                    |  UNLIMITED
//                   )
//                   | COMMA? MAX_ROLLOVER_FILES EQUAL max_rollover_files=(DECIMAL|UNLIMITED)
//                   | COMMA? MAX_FILES EQUAL max_files=DECIMAL
//                   | COMMA? RESERVE_DISK_SPACE EQUAL (ON|OFF)  )*
//                 RR_BRACKET )
//                | APPLICATION_LOG
//                | SECURITY_LOG
//            ) )?
//            ( WITH LR_BRACKET
//              (COMMA? QUEUE_DELAY EQUAL queue_delay=DECIMAL
//              | COMMA? ON_FAILURE EQUAL (CONTINUE | SHUTDOWN|FAIL_OPERATION)
//              |COMMA?  STATE EQUAL (ON|OFF)
//              |COMMA? AUDIT_GUID EQUAL audit_guid=id_
//            )*
//
//              RR_BRACKET
//            )?
//            ( WHERE ( COMMA? (NOT?) event_field_name=id_
//                                    (EQUAL
//                                    |(LESS GREATER)
//                                    | (EXCLAMATION EQUAL)
//                                    | GREATER
//                                    | (GREATER EQUAL)
//                                    | LESS
//                                    | LESS EQUAL
//                                    )
//                                      (DECIMAL | STRING)
//                    | COMMA? (AND|OR) NOT? (EQUAL
//                                           |(LESS GREATER)
//                                           | (EXCLAMATION EQUAL)
//                                           | GREATER
//                                           | (GREATER EQUAL)
//                                           | LESS
//                                           | LESS EQUAL)
//                                             (DECIMAL | STRING) ) )?
//        |REMOVE WHERE
//        | MODIFY NAME EQUAL new_audit_name=id_
//       )
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-server-audit-specification-transact-sql
//
//alter_server_audit_specification
//    : ALTER SERVER AUDIT SPECIFICATION audit_specification_name=id_
//       (FOR SERVER AUDIT audit_name=id_)?
//       ( (ADD|DROP) LR_BRACKET  audit_action_group_name=id_ RR_BRACKET )*
//         (WITH LR_BRACKET STATE EQUAL (ON|OFF) RR_BRACKET )?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-server-audit-specification-transact-sql
//create_server_audit_specification
//    : CREATE SERVER AUDIT SPECIFICATION audit_specification_name=id_
//       (FOR SERVER AUDIT audit_name=id_)?
//       ( ADD LR_BRACKET  audit_action_group_name=id_ RR_BRACKET )*
//         (WITH LR_BRACKET STATE EQUAL (ON|OFF) RR_BRACKET )?
//    ;
//
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-server-configuration-transact-sql
//
//alter_server_configuration
//    : ALTER SERVER CONFIGURATION
//      SET  ( (PROCESS AFFINITY (CPU EQUAL (AUTO | (COMMA? DECIMAL | COMMA? DECIMAL TO DECIMAL)+ ) | NUMANODE EQUAL ( COMMA? DECIMAL |COMMA?  DECIMAL TO DECIMAL)+ ) | DIAGNOSTICS LOG (ON|OFF|PATH EQUAL (STRING | DEFAULT) |MAX_SIZE EQUAL (DECIMAL MB |DEFAULT)|MAX_FILES EQUAL (DECIMAL|DEFAULT) ) | FAILOVER CLUSTER PROPERTY (VERBOSELOGGING EQUAL (STRING|DEFAULT) |SQLDUMPERFLAGS EQUAL (STRING|DEFAULT) | SQLDUMPERPATH EQUAL (STRING|DEFAULT) | SQLDUMPERTIMEOUT (STRING|DEFAULT) | FAILURECONDITIONLEVEL EQUAL (STRING|DEFAULT) | HEALTHCHECKTIMEOUT EQUAL (DECIMAL|DEFAULT) ) | HADR CLUSTER CONTEXT EQUAL (STRING|LOCAL) | BUFFER POOL EXTENSION (ON LR_BRACKET FILENAME EQUAL STRING COMMA SIZE EQUAL DECIMAL (KB|MB|GB)  RR_BRACKET | OFF ) | SET SOFTNUMA (ON|OFF) ) )
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-server-role-transact-sql
//alter_server_role
//    : ALTER SERVER ROLE server_role_name=id_
//      ( (ADD|DROP) MEMBER server_principal=id_
//      | WITH NAME EQUAL new_server_role_name=id_
//      )
//    ;
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-server-role-transact-sql
//create_server_role
//    : CREATE SERVER ROLE server_role=id_ (AUTHORIZATION server_principal=id_)?
//    ;
//
//alter_server_role_pdw
//    : ALTER SERVER ROLE server_role_name=id_ (ADD|DROP) MEMBER login=id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-service-transact-sql
//alter_service
//    : ALTER SERVICE modified_service_name=id_ (ON QUEUE (schema_name=id_ DOT) queue_name=id_)? (COMMA? (ADD|DROP) modified_contract_name=id_)*
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-service-transact-sql
//create_service
//    : CREATE SERVICE create_service_name=id_
//        (AUTHORIZATION owner_name=id_)?
//        ON QUEUE (schema_name=id_ DOT)? queue_name=id_
//          ( LR_BRACKET (COMMA? (id_|DEFAULT) )+ RR_BRACKET )?
//    ;
//
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-service-master-key-transact-sql
//
//alter_service_master_key
//    : ALTER SERVICE MASTER KEY ( FORCE? REGENERATE | (WITH (OLD_ACCOUNT EQUAL acold_account_name=STRING COMMA OLD_PASSWORD EQUAL old_password=STRING | NEW_ACCOUNT EQUAL new_account_name=STRING COMMA NEW_PASSWORD EQUAL new_password=STRING)?  ) )
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-symmetric-key-transact-sql
//
//alter_symmetric_key
//    : ALTER SYMMETRIC KEY key_name=id_ ( (ADD|DROP) ENCRYPTION BY (CERTIFICATE certificate_name=id_ | PASSWORD EQUAL password=STRING | SYMMETRIC KEY symmetric_key_name=id_ | ASYMMETRIC KEY Asym_key_name=id_  ) )
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-synonym-transact-sql
//create_synonym
//    : CREATE SYNONYM (schema_name_1=id_ DOT )? synonym_name=id_
//        FOR ( (server_name=id_ DOT )? (database_name=id_ DOT)? (schema_name_2=id_ DOT)? object_name=id_
//            | (database_or_schema2=id_ DOT)? (schema_id_2_or_object_name=id_ DOT)?
//            )
//    ;
//
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-user-transact-sql
//alter_user
//    : ALTER USER username=id_ WITH (COMMA? NAME EQUAL newusername=id_ | COMMA? DEFAULT_SCHEMA EQUAL ( schema_name=id_ |NULL_ ) | COMMA? LOGIN EQUAL loginame=id_ | COMMA? PASSWORD EQUAL STRING (OLD_PASSWORD EQUAL STRING)+ | COMMA? DEFAULT_LANGUAGE EQUAL (NONE| lcid=DECIMAL| language_name_or_alias=id_) | COMMA? ALLOW_ENCRYPTED_VALUE_MODIFICATIONS EQUAL (ON|OFF) )+
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-user-transact-sql
//create_user
//    : CREATE USER user_name=id_
//         (  (FOR|FROM) LOGIN login_name=id_ )?
//         ( WITH (COMMA? DEFAULT_SCHEMA EQUAL schema_name=id_
//                |COMMA? ALLOW_ENCRYPTED_VALUE_MODIFICATIONS EQUAL (ON|OFF)
//                )*
//         )?
//    | CREATE USER   ( windows_principal=id_
//                      (WITH
//                        (COMMA? DEFAULT_SCHEMA EQUAL schema_name=id_
//                        |COMMA? DEFAULT_LANGUAGE EQUAL (NONE
//                                                |DECIMAL
//                                                |language_name_or_alias=id_                                                      )
//                        |COMMA? SID EQUAL BINARY
//                        |COMMA? ALLOW_ENCRYPTED_VALUE_MODIFICATIONS EQUAL (ON|OFF)
//                        )*
//                      )?
//                   | user_name=id_ WITH PASSWORD EQUAL password=STRING
//                            (COMMA? DEFAULT_SCHEMA EQUAL schema_name=id_
//                            |COMMA? DEFAULT_LANGUAGE EQUAL (NONE
//                                                |DECIMAL
//                                                |language_name_or_alias=id_                                                      )
//                            |COMMA? SID EQUAL BINARY
//                           |COMMA? ALLOW_ENCRYPTED_VALUE_MODIFICATIONS EQUAL (ON|OFF)
//                          )*
//                   | Azure_Active_Directory_principal=id_ FROM EXTERNAL PROVIDER
//                   )
//    | CREATE USER user_name=id_
//                 ( WITHOUT LOGIN
//                   (COMMA? DEFAULT_SCHEMA EQUAL schema_name=id_
//                   |COMMA? ALLOW_ENCRYPTED_VALUE_MODIFICATIONS EQUAL (ON|OFF)
//                   )*
//                 | (FOR|FROM) CERTIFICATE cert_name=id_
//                 | (FOR|FROM) ASYMMETRIC KEY asym_key_name=id_
//                 )
//    | CREATE USER user_name=id_
//    ;
//
//create_user_azure_sql_dw
//    : CREATE USER user_name=id_
//        ( (FOR|FROM) LOGIN login_name=id_
//        | WITHOUT LOGIN
//        )?
//
//        ( WITH DEFAULT_SCHEMA EQUAL schema_name=id_)?
//    | CREATE USER Azure_Active_Directory_principal=id_
//        FROM EXTERNAL PROVIDER
//        ( WITH DEFAULT_SCHEMA EQUAL schema_name=id_)?
//    ;
//
//
//alter_user_azure_sql
//    : ALTER USER username=id_ WITH (COMMA? NAME EQUAL newusername=id_ | COMMA? DEFAULT_SCHEMA EQUAL  schema_name=id_ | COMMA? LOGIN EQUAL loginame=id_  | COMMA? ALLOW_ENCRYPTED_VALUE_MODIFICATIONS EQUAL (ON|OFF) )+
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-workload-group-transact-sql
//
//alter_workload_group
//    : ALTER WORKLOAD GROUP
//         (workload_group_group_name=id_
//         |DEFAULT_DOUBLE_QUOTE
//         )
//         (WITH LR_BRACKET
//           (IMPORTANCE EQUAL (LOW|MEDIUM|HIGH)
//           | COMMA? REQUEST_MAX_MEMORY_GRANT_PERCENT EQUAL request_max_memory_grant=DECIMAL
//           | COMMA? REQUEST_MAX_CPU_TIME_SEC EQUAL request_max_cpu_time_sec=DECIMAL
//           | REQUEST_MEMORY_GRANT_TIMEOUT_SEC EQUAL request_memory_grant_timeout_sec=DECIMAL
//           | MAX_DOP EQUAL max_dop=DECIMAL
//           | GROUP_MAX_REQUESTS EQUAL group_max_requests=DECIMAL)+
//          RR_BRACKET )?
//     (USING (workload_group_pool_name=id_ | DEFAULT_DOUBLE_QUOTE) )?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-workload-group-transact-sql
//create_workload_group
//    : CREATE WORKLOAD GROUP workload_group_group_name=id_
//         (WITH LR_BRACKET
//           (IMPORTANCE EQUAL (LOW|MEDIUM|HIGH)
//           | COMMA? REQUEST_MAX_MEMORY_GRANT_PERCENT EQUAL request_max_memory_grant=DECIMAL
//           | COMMA? REQUEST_MAX_CPU_TIME_SEC EQUAL request_max_cpu_time_sec=DECIMAL
//           | REQUEST_MEMORY_GRANT_TIMEOUT_SEC EQUAL request_memory_grant_timeout_sec=DECIMAL
//           | MAX_DOP EQUAL max_dop=DECIMAL
//           | GROUP_MAX_REQUESTS EQUAL group_max_requests=DECIMAL)+
//          RR_BRACKET )?
//     (USING (workload_group_pool_name=id_ | DEFAULT_DOUBLE_QUOTE)?
//            (COMMA? EXTERNAL external_pool_name=id_ | DEFAULT_DOUBLE_QUOTE)?
//      )?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-xml-schema-collection-transact-sql
//create_xml_schema_collection
//    : CREATE XML SCHEMA COLLECTION (relational_schema=id_ DOT)? sql_identifier=id_ AS  (STRING|id_|LOCAL_ID)
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-partition-function-transact-sql?view=sql-server-ver15
//create_partition_function
//    : CREATE PARTITION FUNCTION partition_function_name=id_   l_bracket   input_parameter_type=data_type   r_bracket
//      AS RANGE ( LEFT | RIGHT )?
//      FOR VALUES   l_bracket   boundary_values=expression_list    r_bracket
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-partition-scheme-transact-sql?view=sql-server-ver15
//create_partition_scheme
//    : CREATE PARTITION SCHEME partition_scheme_name=id_
//      AS PARTITION partition_function_name=id_
//      ALL? TO   l_bracket   file_group_names+=id_ (  comma    file_group_names+=id_)*    r_bracket
//    ;
//
//create_queue
//    : CREATE QUEUE (full_table_name | queue_name=id_) queue_settings?
//      (ON filegroup=id_ | DEFAULT)?
//    ;
//
//
//queue_settings
//    : WITH
//       (STATUS EQUAL (ON | OFF) COMMA?)?
//       (RETENTION EQUAL (ON | OFF) COMMA?)?
//       (ACTIVATION
//         LR_BRACKET
//           (
//             (
//              (STATUS EQUAL (ON | OFF) COMMA? )?
//              (PROCEDURE_NAME EQUAL func_proc_name_database_schema COMMA?)?
//              (MAX_QUEUE_READERS EQUAL max_readers=DECIMAL COMMA?)?
//              (EXECUTE AS (SELF | user_name=STRING | OWNER) COMMA?)?
//             )
//             | DROP
//           )
//         RR_BRACKET COMMA?
//       )?
//       (POISON_MESSAGE_HANDLING
//         LR_BRACKET
//           (STATUS EQUAL (ON | OFF))
//         RR_BRACKET
//       )?
//    ;
//
//alter_queue
//    : ALTER QUEUE (full_table_name | queue_name=id_)
//      (queue_settings | queue_action)
//    ;
//
//queue_action
//    : REBUILD ( WITH LR_BRACKET queue_rebuild_options RR_BRACKET)?
//    | REORGANIZE (WITH LOB_COMPACTION EQUAL (ON | OFF))?
//    | MOVE TO (id_ | DEFAULT)
//    ;
//queue_rebuild_options
//    : MAXDOP EQUAL DECIMAL
//    ;
//
//create_contract
//    : CREATE CONTRACT contract_name
//      (AUTHORIZATION owner_name=id_)?
//      LR_BRACKET ((message_type_name=id_ | DEFAULT)
//          SENT BY (INITIATOR | TARGET | ANY ) COMMA?)+
//      RR_BRACKET
//    ;
//
//conversation_statement
//    : begin_conversation_timer
//    | begin_conversation_dialog
//    | end_conversation
//    | get_conversation
//    | send_conversation
//    | waitfor_conversation
//    ;
//
//message_statement
//    : CREATE MESSAGE TYPE message_type_name=id_
//      (AUTHORIZATION owner_name=id_)?
//      (VALIDATION EQUAL (NONE
//      | EMPTY
//      | WELL_FORMED_XML
//      | VALID_XML WITH SCHEMA COLLECTION schema_collection_name=id_))
//    ;
//
//// DML
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/merge-transact-sql
//// note that there's a limit on number of when_matches but it has to be done runtime due to different ordering of statements allowed
//merge_statement
//    : with_expression?
//      MERGE (TOP   l_bracket   expression    r_bracket     PERCENT?)?
//      INTO? ddl_object insert_with_table_hints? as_table_alias?
//      USING table_sources
//      ON search_condition
//      when_matches+
//      output_clause?
//      option_clause? ';'
//    ;
//
//when_matches
//    : (WHEN MATCHED (AND search_condition)?
//          THEN merge_matched)+
//    | (WHEN NOT MATCHED (BY TARGET)? (AND search_condition)?
//          THEN merge_not_matched)
//    | (WHEN NOT MATCHED BY SOURCE (AND search_condition)?
//          THEN merge_matched)+
//    ;
//
//merge_matched
//    : UPDATE SET update_elem_merge (  comma    update_elem_merge)*
//    | DELETE
//    ;
//
//merge_not_matched
//    : INSERT (  l_bracket   column_name_list    r_bracket    )?
//      (table_value_constructor | DEFAULT VALUES)
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms189835.aspx
//delete_statement
//    : with_expression?
//      DELETE (TOP   l_bracket   expression    r_bracket     PERCENT? | TOP DECIMAL)?
//      FROM? delete_statement_from
//      insert_with_table_hints?
//      output_clause?
//      (FROM table_sources)?
//      (WHERE (search_condition | CURRENT OF (GLOBAL? cursor_name | cursor_var=LOCAL_ID)))?
//      for_clause? option_clause? ';'?
//    ;
//
//delete_statement_from
//    : ddl_object
//    | table_alias
//    | rowset_function_limited
//    | table_var=LOCAL_ID
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms174335.aspx
//insert_statement
//    : with_expression?
//      INSERT (TOP   l_bracket   expression    r_bracket     PERCENT?)?
//      INTO? (ddl_object | rowset_function_limited)
//      insert_with_table_hints?
//      (  l_bracket   insert_column_name_list    r_bracket    )?
//      output_clause?
//      insert_statement_value
//      for_clause? option_clause? ';'?
//    ;
//
//insert_statement_value
//    : table_value_constructor
//    | derived_table
//    | execute_statement
//    | DEFAULT VALUES
//    ;
//
//
//receive_statement
//    :   l_bracket  ? RECEIVE (ALL | DISTINCT | top_clause |    asterikSymbol  )
//      (LOCAL_ID '=' expression   comma?)* FROM full_table_name
//      (INTO table_variable=id_ (WHERE where=search_condition))?    r_bracket    ?
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms189499.aspx
select_statement_standalone
    : with_expression? select_statement
    ;
//Î
select_statement
    : query_expression order_by_clause? for_clause? option_clause? semicolon?
    ;
semicolon: SEMICOLON;
//
//time
//    : (LOCAL_ID | constant)
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms177523.aspx
//update_statement
//    : with_expression?
//      UPDATE (TOP   l_bracket   expression    r_bracket     PERCENT?)?
//      (ddl_object | rowset_function_limited)
//      with_table_hints?
//      SET update_elem (  comma    update_elem)*
//      output_clause?
//      (FROM table_sources)?
//      (WHERE (search_condition | CURRENT OF (GLOBAL? cursor_name | cursor_var=LOCAL_ID)))?
//      for_clause? option_clause? ';'?
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms177564.aspx
//output_clause
//    : OUTPUT output_dml_list_elem (  comma    output_dml_list_elem)*
//      (INTO (LOCAL_ID | table_name) (  l_bracket   column_name_list    r_bracket    )? )?
//    ;
//
//output_dml_list_elem
//    : (expression | asteriskClause) as_column_alias?
//    ;
//
//// DDL
//
//// https://msdn.microsoft.com/en-ie/library/ms176061.aspx
//create_database
//    : CREATE DATABASE (database=id_)
//    ( CONTAINMENT '=' ( NONE | PARTIAL ) )?
//    ( ON PRIMARY? database_file_spec (   comma    database_file_spec )* )?
//    ( LOG ON database_file_spec (   comma    database_file_spec )* )?
//    ( COLLATE collation_name = id_ )?
//    ( WITH  create_database_option (   comma    create_database_option )* )?
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms188783.aspx
//create_index
//    : CREATE UNIQUE? clustered? INDEX id_ ON table_name   l_bracket   column_name_list_with_order    r_bracket
//    (INCLUDE   l_bracket   column_name_list    r_bracket     )?
//    (WHERE where=search_condition)?
//    (index_options)?
//    (ON id_)?
//    ';'?
//    ;
//
//alter_index
//    : ALTER INDEX id_ ON table_name (DISABLE | /*PAUSE | ABORT*/ | rebuild_partition)
//    ;
//
//rebuild_partition
//    : REBUILD (PARTITION '=' ALL)? index_options?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-columnstore-index-transact-sql?view=sql-server-ver15
//create_columnstore_index
//    : CREATE (CLUSTERED | NONCLUSTERED?) COLUMNSTORE INDEX id_ ON table_name
//    index_options?
//    (ON id_)?
//    ';'?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-columnstore-index-transact-sql?view=sql-server-ver15
//create_nonclustered_columnstore_index
//    : CREATE NONCLUSTERED? COLUMNSTORE INDEX id_ ON table_name   l_bracket   column_name_list_with_order    r_bracket
//    (WHERE search_condition)?
//    index_options?
//    (ON id_)?
//    ';'?
//    ;
//
//create_xml_index
//    : CREATE PRIMARY? XML INDEX id_ ON table_name   l_bracket   id_    r_bracket
//    (USING XML INDEX id_ (FOR (VALUE | PATH | PROPERTY)?)?)?
//    index_options?
//    ';'?
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms187926(v=sql.120).aspx
//create_or_alter_procedure
//    : ((CREATE (OR ALTER)?) | ALTER) proc=(PROC | PROCEDURE) procName=func_proc_name_schema (';' DECIMAL)?
//      (  l_bracket  ? procedure_param (  comma    procedure_param)*    r_bracket    ?)?
//      (WITH procedure_option (  comma    procedure_option)*)?
//      (FOR REPLICATION)? AS (as_external_name | sql_clauses*)
//    ;
//
//as_external_name
//    : EXTERNAL NAME assembly_name = id_ '.' class_name = id_ '.' method_name = id_
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-trigger-transact-sql
//create_or_alter_trigger
//    : create_or_alter_dml_trigger
//    | create_or_alter_ddl_trigger
//    ;
//
//create_or_alter_dml_trigger
//    : ((CREATE (OR ALTER)?) | ALTER) TRIGGER simple_name
//      ON table_name
//      (WITH dml_trigger_option (  comma    dml_trigger_option)* )?
//      (FOR | AFTER | INSTEAD OF)
//      dml_trigger_operation (  comma    dml_trigger_operation)*
//      (WITH APPEND)?
//      (NOT FOR REPLICATION)?
//      AS sql_clauses+
//    ;
//
//dml_trigger_option
//    : ENCRYPTION
//    | execute_clause
//    ;
//
//dml_trigger_operation
//    : (INSERT | UPDATE | DELETE)
//    ;
//
//create_or_alter_ddl_trigger
//    : ((CREATE (OR ALTER)?) | ALTER) TRIGGER simple_name
//      ON (ALL SERVER | DATABASE)
//      (WITH dml_trigger_option (  comma    dml_trigger_option)* )?
//      (FOR | AFTER) ddl_trigger_operation (  comma    ddl_trigger_operation)*
//      AS sql_clauses+
//    ;
//
//ddl_trigger_operation
//    : simple_id
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms186755.aspx
//create_or_alter_function
//    : ((CREATE (OR ALTER)?) | ALTER) FUNCTION funcName=func_proc_name_schema
//        ((  l_bracket   procedure_param (  comma    procedure_param)*    r_bracket    ) |   l_bracket      r_bracket    ) //must have (), but can be empty
//        (func_body_returns_select | func_body_returns_table | func_body_returns_scalar) ';'?
//    ;
//
//func_body_returns_select
//    : RETURNS TABLE
//        (WITH function_option (  comma    function_option)*)?
//        AS? (as_external_name | RETURN (  l_bracket   select_statement_standalone    r_bracket     | select_statement_standalone))
//    ;
//
//func_body_returns_table
//    : RETURNS LOCAL_ID table_type_definition
//        (WITH function_option (  comma    function_option)*)?
//        AS? (as_external_name |
//        BEGIN
//           sql_clauses*
//           RETURN ';'?
//        END ';'?)
//    ;
//
//func_body_returns_scalar
//    : RETURNS data_type
//        (WITH function_option (  comma    function_option)*)?
//        AS? (as_external_name |
//        BEGIN
//           sql_clauses*
//           RETURN ret=expression ';'?
//       END)
//    ;
//
//procedure_param
//    : LOCAL_ID AS? (type_schema=id_ '.')? data_type VARYING? ('=' default_val=default_value)? (OUT | OUTPUT | READONLY)?
//    ;
//
//procedure_option
//    : ENCRYPTION
//    | RECOMPILE
//    | execute_clause
//    ;
//
//function_option
//    : ENCRYPTION
//    | SCHEMABINDING
//    | RETURNS NULL_ ON NULL_ INPUT
//    | CALLED ON NULL_ INPUT
//    | execute_clause
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms188038.aspx
//create_statistics
//    : CREATE STATISTICS id_ ON table_name   l_bracket   column_name_list    r_bracket
//      (WITH (FULLSCAN | SAMPLE DECIMAL (PERCENT | ROWS) | STATS_STREAM)
//            (  comma    NORECOMPUTE)? (  comma    INCREMENTAL EQUAL on_off)? )? ';'?
//    ;
//
//update_statistics
//    : UPDATE (INDEX | ALL)? STATISTICS full_table_name id_?  (USING DECIMAL VALUES)?
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms174979.aspx
//create_table
//    : CREATE TABLE table_name   l_bracket   column_def_table_constraints  (  comma? table_indices)*    comma?    r_bracket     (LOCK simple_id)? table_options* (ON id_ | DEFAULT)? (TEXTIMAGE_ON id_ | DEFAULT)?';'?
//    ;
//
//table_indices
//    : INDEX id_  (UNIQUE | CLUSTERED | NONCLUSTERED)?   l_bracket   column_name_list_with_order    r_bracket
//    index_options?
//    (ON id_)?
//    ;
//
//table_options
//    : WITH (  l_bracket   index_option (  comma    index_option)*    r_bracket     | index_option (  comma    index_option)*)
//    ;
//
// https://msdn.microsoft.com/en-us/library/ms187956.aspx
create_view
    : CREATE VIEW simple_name (  l_bracket   column_name_list    r_bracket    )?
      (WITH view_attribute (  comma    view_attribute)*)?
      AS select_statement_standalone withCheckOptions? semicolon?
    ;
withCheckOptions: (WITH CHECK OPTION);
view_attribute
    : ENCRYPTION | SCHEMABINDING | VIEW_METADATA
    ;

// https://msdn.microsoft.com/en-us/library/ms190273.aspx
//alter_table
//    : ALTER TABLE table_name (SET   l_bracket   LOCK_ESCALATION '=' (AUTO | TABLE | DISABLE)    r_bracket
//                             | ADD column_def_table_constraints
//                             | ALTER COLUMN column_definition
//                             | DROP COLUMN id_ (  comma    id_)*
//                             | DROP CONSTRAINT constraint=id_
//                             | WITH (CHECK | NOCHECK) ADD (CONSTRAINT constraint=id_)?
//                                ( FOREIGN KEY   l_bracket   fk=column_name_list    r_bracket     REFERENCES table_name (  l_bracket   pk=column_name_list   r_bracket    )? (on_delete | on_update)*
//                                | CHECK   l_bracket   search_condition    r_bracket     )
//                             | (NOCHECK | CHECK) CONSTRAINT constraint=id_
//                             | (ENABLE | DISABLE) TRIGGER id_?
//                             | REBUILD table_options
//                             | SWITCH switch_partition)
//                             ';'?
//    ;
//
//switch_partition
//    : (PARTITION? source_partition_number_expression=expression)?
//      TO target_table=table_name
//      (PARTITION target_partition_number_expression=expression)?
//      (WITH low_priority_lock_wait)?
//    ;
//
//low_priority_lock_wait
//    : WAIT_AT_LOW_PRIORITY   l_bracket
//      MAX_DURATION '=' max_duration=time MINUTES?   comma
//      ABORT_AFTER_WAIT '=' abort_after_wait=(NONE | SELF | BLOCKERS)    r_bracket
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms174269.aspx
//alter_database
//    : ALTER DATABASE (database=id_ | CURRENT)
//      (MODIFY NAME '=' new_name=id_
//      | COLLATE collation=id_
//      | SET database_optionspec (WITH termination)?
//      | add_or_modify_files
//      | add_or_modify_filegroups
//      ) ';'?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-database-transact-sql-file-and-filegroup-options?view=sql-server-ver15
//add_or_modify_files
//    : ADD FILE filespec (  comma    filespec)* (TO FILEGROUP filegroup_name=id_)?
//    | ADD LOG FILE filespec (  comma    filespec)*
//    | REMOVE FILE logical_file_name=id_
//    | MODIFY FILE filespec
//    ;
//
//filespec
//    :   l_bracket        NAME       '=' name1=id_or_string
//          (  comma    NEWNAME    '=' new_name=id_or_string )?
//          (  comma    FILENAME   '=' file_name=STRING )?
//          (  comma    SIZE       '=' size=file_size )?
//          (  comma    MAXSIZE    '=' (max_size=file_size) | UNLIMITED )?
//          (  comma    FILEGROWTH '=' growth_increment=file_size )?
//          (  comma    OFFLINE )?
//         r_bracket
//    ;
//
//add_or_modify_filegroups
//    : ADD FILEGROUP filegroup_name=id_ (CONTAINS FILESTREAM | CONTAINS MEMORY_OPTIMIZED_DATA)?
//    | REMOVE FILEGROUP filegrou_name=id_
//    | MODIFY FILEGROUP filegrou_name=id_ (
//          filegroup_updatability_option
//        | DEFAULT
//        | NAME '=' new_filegroup_name=id_
//        | AUTOGROW_SINGLE_FILE
//        | AUTOGROW_ALL_FILES
//      )
//    ;
//
//filegroup_updatability_option
//    : READONLY
//    | READWRITE
//    | READ_ONLY
//    | READ_WRITE
//    ;
//
//// https://msdn.microsoft.com/en-us/library/bb522682.aspx
//// Runtime check.
//database_optionspec
//    : auto_option
//    | change_tracking_option
//    | containment_option
//    | cursor_option
//    | database_mirroring_option
//    | date_correlation_optimization_option
//    | db_encryption_option
//    | db_state_option
//    | db_update_option
//    | db_user_access_option
//    | delayed_durability_option
//    | external_access_option
//    | FILESTREAM database_filestream_option
//    | hadr_options
//    | mixed_page_allocation_option
//    | parameterization_option
////  | query_store_options
//    | recovery_option
////  | remote_data_archive_option
//    | service_broker_option
//    | snapshot_option
//    | sql_option
//    | target_recovery_time_option
//    | termination
//    ;
//
//auto_option
//    : AUTO_CLOSE on_off
//    | AUTO_CREATE_STATISTICS  OFF | ON ( INCREMENTAL EQUAL  ON | OFF  )
//    | AUTO_SHRINK  on_off
//    | AUTO_UPDATE_STATISTICS on_off
//    | AUTO_UPDATE_STATISTICS_ASYNC  (ON | OFF )
//    ;
//
//change_tracking_option
//    : CHANGE_TRACKING  EQUAL ( OFF | ON (change_tracking_option_list (  comma    change_tracking_option_list)*)*  )
//    ;
//
//change_tracking_option_list
//    : AUTO_CLEANUP EQUAL on_off
//    | CHANGE_RETENTION EQUAL ( DAYS | HOURS | MINUTES )
//    ;
//
//containment_option
//    : CONTAINMENT EQUAL ( NONE | PARTIAL )
//    ;
//
//cursor_option
//    : CURSOR_CLOSE_ON_COMMIT on_off
//    | CURSOR_DEFAULT ( LOCAL | GLOBAL )
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/alter-endpoint-transact-sql
//alter_endpoint
//    : ALTER ENDPOINT endpointname=id_ (AUTHORIZATION login=id_)?
//       ( STATE EQUAL ( state=STARTED | state=STOPPED | state=DISABLED ) )?
//            AS TCP LR_BRACKET
//               LISTENER_PORT EQUAL port=DECIMAL
//                 ( COMMA LISTENER_IP EQUAL
//                   (ALL | /*IPV4_ADDR | IPV6_ADDR*/ | STRING) )?
//                RR_BRACKET
//               (TSQL
//               |
//                FOR SERVICE_BROKER LR_BRACKET
//                   AUTHENTICATION EQUAL
//                           ( WINDOWS ( NTLM |KERBEROS | NEGOTIATE )?  (CERTIFICATE cert_name=id_)?
//                           | CERTIFICATE cert_name=id_  WINDOWS? ( NTLM |KERBEROS | NEGOTIATE )?
//                           )
//                   ( COMMA? ENCRYPTION EQUAL ( DISABLED |SUPPORTED | REQUIRED )
//                      ( ALGORITHM ( AES | RC4 | AES RC4 | RC4 AES ) )?
//                   )?
//
//                   ( COMMA? MESSAGE_FORWARDING EQUAL ( ENABLED | DISABLED ) )?
//                   ( COMMA? MESSAGE_FORWARD_SIZE EQUAL DECIMAL)?
//                   RR_BRACKET
//              |
//               FOR DATABASE_MIRRORING LR_BRACKET
//                   AUTHENTICATION EQUAL
//                           ( WINDOWS ( NTLM |KERBEROS | NEGOTIATE )?  (CERTIFICATE cert_name=id_)?
//                           | CERTIFICATE cert_name=id_  WINDOWS? ( NTLM |KERBEROS | NEGOTIATE )?
//                           )
//
//                   ( COMMA? ENCRYPTION EQUAL ( DISABLED |SUPPORTED | REQUIRED )
//                      ( ALGORITHM ( AES | RC4 | AES RC4 | RC4 AES ) )?
//                   )?
//
//                   COMMA? ROLE EQUAL ( WITNESS | PARTNER | ALL )
//                   RR_BRACKET
//             )
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/create-endpoint-transact-sql
//// todo: not implemented
//
///* Will visit later
//*/
//database_mirroring_option
//    : mirroring_set_option
//    ;
//
//mirroring_set_option
//    : mirroring_partner  partner_option
//    | mirroring_witness  witness_option
//    ;
//mirroring_partner
//    : PARTNER
//    ;
//
//mirroring_witness
//    : WITNESS
//    ;
//
//witness_partner_equal
//    : EQUAL
//    ;
//
//
//partner_option
//    : witness_partner_equal partner_server
//    | FAILOVER
//    | FORCE_SERVICE_ALLOW_DATA_LOSS
//    | OFF
//    | RESUME
//    | SAFETY (FULL | OFF )
//    | SUSPEND
//    | TIMEOUT DECIMAL
//    ;
//
//witness_option
//    : witness_partner_equal witness_server
//    | OFF
//    ;
//
//witness_server
//    : partner_server
//    ;
//
//partner_server
//    : partner_server_tcp_prefix host mirroring_host_port_seperator port_number
//    ;
//
//mirroring_host_port_seperator
//    : COLON
//    ;
//
//partner_server_tcp_prefix
//    : TCP COLON DOUBLE_FORWARD_SLASH
//    ;
//port_number
//    : port=DECIMAL
//    ;
//
//host
//    : id_ DOT host
//    | (id_ DOT |id_)
//    ;
//
//date_correlation_optimization_option
//    : DATE_CORRELATION_OPTIMIZATION on_off
//    ;
//
//db_encryption_option
//    : ENCRYPTION on_off
//    ;
//db_state_option
//    : ( ONLINE | OFFLINE | EMERGENCY )
//    ;
//
//db_update_option
//    : READ_ONLY | READ_WRITE
//    ;
//
//db_user_access_option
//    : SINGLE_USER | RESTRICTED_USER | MULTI_USER
//    ;
//delayed_durability_option
//    : DELAYED_DURABILITY EQUAL ( DISABLED | ALLOWED | FORCED )
//    ;
//
//external_access_option
//    : DB_CHAINING on_off
//    | TRUSTWORTHY on_off
//    | DEFAULT_LANGUAGE EQUAL ( id_ | STRING )
//    | DEFAULT_FULLTEXT_LANGUAGE EQUAL ( id_ | STRING )
//    | NESTED_TRIGGERS EQUAL ( OFF | ON )
//    | TRANSFORM_NOISE_WORDS EQUAL ( OFF | ON )
//    | TWO_DIGIT_YEAR_CUTOFF EQUAL DECIMAL
//    ;
//
//hadr_options
//    : HADR
//      ( ( AVAILABILITY GROUP EQUAL availability_group_name=id_ | OFF ) |(SUSPEND|RESUME) )
//    ;
//
//mixed_page_allocation_option
//    : MIXED_PAGE_ALLOCATION ( OFF | ON )
//    ;
//
//parameterization_option
//    : PARAMETERIZATION ( SIMPLE | FORCED )
//    ;
//
//recovery_option
//    : RECOVERY ( FULL | BULK_LOGGED | SIMPLE )
//    | TORN_PAGE_DETECTION on_off
//    | ACCELERATED_DATABASE_RECOVERY '=' on_off
//    | PAGE_VERIFY ( CHECKSUM | TORN_PAGE_DETECTION | NONE )
//    ;
//
//service_broker_option:
//    ENABLE_BROKER
//    | DISABLE_BROKER
//    | NEW_BROKER
//    | ERROR_BROKER_CONVERSATIONS
//    | HONOR_BROKER_PRIORITY on_off
//    ;
//snapshot_option
//    : ALLOW_SNAPSHOT_ISOLATION on_off
//    | READ_COMMITTED_SNAPSHOT (ON | OFF )
//    | MEMORY_OPTIMIZED_ELEVATE_TO_SNAPSHOT = (ON | OFF )
//    ;
//
//sql_option
//    : ANSI_NULL_DEFAULT on_off
//    | ANSI_NULLS on_off
//    | ANSI_PADDING on_off
//    | ANSI_WARNINGS on_off
//    | ARITHABORT on_off
//    | COMPATIBILITY_LEVEL EQUAL DECIMAL
//    | CONCAT_NULL_YIELDS_NULL on_off
//    | NUMERIC_ROUNDABORT on_off
//    | QUOTED_IDENTIFIER on_off
//    | RECURSIVE_TRIGGERS on_off
//    ;
//
//target_recovery_time_option
//    : TARGET_RECOVERY_TIME EQUAL DECIMAL ( SECONDS | MINUTES )
//    ;
//
//termination
//    : ROLLBACK AFTER seconds = DECIMAL
//    | ROLLBACK IMMEDIATE
//    | NO_WAIT
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms176118.aspx
//drop_index
//    : DROP INDEX (IF EXISTS)?
//    ( drop_relational_or_xml_or_spatial_index (  comma    drop_relational_or_xml_or_spatial_index)*
//    | drop_backward_compatible_index (  comma    drop_backward_compatible_index)*
//    )
//    ';'?
//    ;
//
//drop_relational_or_xml_or_spatial_index
//    : index_name=id_ ON full_table_name
//    ;
//
//drop_backward_compatible_index
//    : (owner_name=id_ '.')? table_or_view_name=id_ '.' index_name=id_
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms174969.aspx
//drop_procedure
//    : DROP proc=(PROC | PROCEDURE) (IF EXISTS)? func_proc_name_schema (  comma    func_proc_name_schema)* ';'?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/drop-trigger-transact-sql
//drop_trigger
//    : drop_dml_trigger
//    | drop_ddl_trigger
//    ;
//
//drop_dml_trigger
//    : DROP TRIGGER (IF EXISTS)? simple_name (  comma    simple_name)* ';'?
//    ;
//
//drop_ddl_trigger
//    : DROP TRIGGER (IF EXISTS)? simple_name (  comma    simple_name)*
//    ON (DATABASE | ALL SERVER) ';'?
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms190290.aspx
//drop_function
//    : DROP FUNCTION (IF EXISTS)? func_proc_name_schema (  comma    func_proc_name_schema)* ';'?
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms175075.aspx
//drop_statistics
//    : DROP STATISTICS (COMMA? (table_name '.')? name)+ ';'
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms173790.aspx
//drop_table
//    : DROP TABLE (IF EXISTS)? table_name ';'?
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms173492.aspx
//drop_view
//    : DROP VIEW (IF EXISTS)? simple_name (  comma    simple_name)* ';'?
//    ;
//
//create_type
//    : CREATE TYPE name1 = simple_name
//      (FROM data_type default_value)?
//      (AS TABLE LR_BRACKET column_def_table_constraints RR_BRACKET)?
//    ;
//
//drop_type:
//    DROP TYPE ( IF EXISTS )? name1 = simple_name
//    ;
//
//rowset_function_limited
//    : openquery
//    | opendatasource
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms188427(v=sql.120).aspx
//openquery
//    : OPENQUERY   l_bracket   linked_server=id_   comma    query=STRING    r_bracket
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms179856.aspx
//opendatasource
//    : OPENDATASOURCE   l_bracket   provider=STRING   comma    init=STRING    r_bracket
//     '.' (database=id_)? '.' (scheme=id_)? '.' (table=id_)
//    ;
//
//// Other statements.
//
//// https://msdn.microsoft.com/en-us/library/ms188927.aspx
//declare_statement
//    : DECLARE LOCAL_ID AS? (table_type_definition | table_name) ';'?
//    | DECLARE loc+=declare_local (  comma    loc+=declare_local)* ';'?
//    | DECLARE LOCAL_ID AS? xml_type_definition ';'?
//    | WITH XMLNAMESPACES   l_bracket   xml_dec+=xml_declaration (  comma    xml_dec+=xml_declaration)*    r_bracket     ';'?
//    ;
//
//xml_declaration
//    : xml_namespace_uri=STRING AS id_
//    | DEFAULT STRING
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms181441(v=sql.120).aspx
//cursor_statement
//    // https://msdn.microsoft.com/en-us/library/ms175035(v=sql.120).aspx
//    : CLOSE GLOBAL? cursor_name ';'?
//    // https://msdn.microsoft.com/en-us/library/ms188782(v=sql.120).aspx
//    | DEALLOCATE GLOBAL? CURSOR? cursor_name ';'?
//    // https://msdn.microsoft.com/en-us/library/ms180169(v=sql.120).aspx
//    | declare_cursor
//    // https://msdn.microsoft.com/en-us/library/ms180152(v=sql.120).aspx
//    | fetch_cursor
//    // https://msdn.microsoft.com/en-us/library/ms190500(v=sql.120).aspx
//    | OPEN GLOBAL? cursor_name ';'?
//    ;
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/backup-transact-sql
//backup_database
//    : BACKUP DATABASE ( database_name=id_ )
//          (READ_WRITE_FILEGROUPS (COMMA? (FILE|FILEGROUP) EQUAL file_or_filegroup=STRING)* )?
//          (COMMA? (FILE|FILEGROUP) EQUAL file_or_filegroup=STRING)*
//           ( TO ( COMMA? logical_device_name=id_)+
//           | TO ( COMMA? (DISK|TAPE|URL) EQUAL (STRING|id_) )+
//           )
//
//           ( (MIRROR TO ( COMMA? logical_device_name=id_)+ )+
//           | ( MIRROR TO ( COMMA? (DISK|TAPE|URL) EQUAL (STRING|id_) )+ )+
//           )?
//
//             (WITH ( COMMA? DIFFERENTIAL
//                   | COMMA? COPY_ONLY
//                   | COMMA? (COMPRESSION|NO_COMPRESSION)
//                   | COMMA? DESCRIPTION EQUAL (STRING|id_)
//                   | COMMA? NAME EQUAL backup_set_name=id_
//                   | COMMA? CREDENTIAL
//                   | COMMA? FILE_SNAPSHOT
//                   | COMMA? (EXPIREDATE EQUAL (STRING|id_) | RETAINDAYS EQUAL (DECIMAL|id_) )
//                   | COMMA? (NOINIT|INIT)
//                   | COMMA? (NOSKIP|SKIP_KEYWORD)
//                   | COMMA? (NOFORMAT|FORMAT)
//                   | COMMA? MEDIADESCRIPTION EQUAL (STRING|id_)
//                   | COMMA? MEDIANAME EQUAL (medianame=STRING)
//                   | COMMA? BLOCKSIZE EQUAL (DECIMAL|id_)
//                   | COMMA? BUFFERCOUNT EQUAL (DECIMAL|id_)
//                   | COMMA? MAXTRANSFER EQUAL (DECIMAL|id_)
//                   | COMMA? (NO_CHECKSUM|CHECKSUM)
//                   | COMMA? (STOP_ON_ERROR|CONTINUE_AFTER_ERROR)
//                   | COMMA? RESTART
//                   | COMMA? STATS (EQUAL stats_percent=DECIMAL)?
//                   | COMMA? (REWIND|NOREWIND)
//                   | COMMA? (LOAD|NOUNLOAD)
//                   | COMMA? ENCRYPTION LR_BRACKET
//                                         ALGORITHM EQUAL
//                                         (AES_128
//                                         | AES_192
//                                         | AES_256
//                                         | TRIPLE_DES_3KEY
//                                         )
//                                         COMMA
//                                         SERVER CERTIFICATE EQUAL
//                                           (encryptor_name=id_
//                                           | SERVER ASYMMETRIC KEY EQUAL encryptor_name=id_
//                                           )
//                  )*
//              )?
//
//    ;
//
//backup_log
//    : BACKUP LOG ( database_name=id_ )
//           ( TO ( COMMA? logical_device_name=id_)+
//           | TO ( COMMA? (DISK|TAPE|URL) EQUAL (STRING|id_) )+
//           )
//
//           ( (MIRROR TO ( COMMA? logical_device_name=id_)+ )+
//           | ( MIRROR TO ( COMMA? (DISK|TAPE|URL) EQUAL (STRING|id_) )+ )+
//           )?
//
//             (WITH ( COMMA? DIFFERENTIAL
//                   | COMMA? COPY_ONLY
//                   | COMMA? (COMPRESSION|NO_COMPRESSION)
//                   | COMMA? DESCRIPTION EQUAL (STRING|id_)
//                   | COMMA? NAME EQUAL backup_set_name=id_
//                   | COMMA? CREDENTIAL
//                   | COMMA? FILE_SNAPSHOT
//                   | COMMA? (EXPIREDATE EQUAL (STRING|id_) | RETAINDAYS EQUAL (DECIMAL|id_) )
//                   | COMMA? (NOINIT|INIT)
//                   | COMMA? (NOSKIP|SKIP_KEYWORD)
//                   | COMMA? (NOFORMAT|FORMAT)
//                   | COMMA? MEDIADESCRIPTION EQUAL (STRING|id_)
//                   | COMMA? MEDIANAME EQUAL (medianame=STRING)
//                   | COMMA? BLOCKSIZE EQUAL (DECIMAL|id_)
//                   | COMMA? BUFFERCOUNT EQUAL (DECIMAL|id_)
//                   | COMMA? MAXTRANSFER EQUAL (DECIMAL|id_)
//                   | COMMA? (NO_CHECKSUM|CHECKSUM)
//                   | COMMA? (STOP_ON_ERROR|CONTINUE_AFTER_ERROR)
//                   | COMMA? RESTART
//                   | COMMA? STATS (EQUAL stats_percent=DECIMAL)?
//                   | COMMA? (REWIND|NOREWIND)
//                   | COMMA? (LOAD|NOUNLOAD)
//                   | COMMA? (NORECOVERY| STANDBY EQUAL undo_file_name=STRING)
//                   | COMMA? NO_TRUNCATE
//                   | COMMA? ENCRYPTION LR_BRACKET
//                                         ALGORITHM EQUAL
//                                         (AES_128
//                                         | AES_192
//                                         | AES_256
//                                         | TRIPLE_DES_3KEY
//                                         )
//                                         COMMA
//                                         SERVER CERTIFICATE EQUAL
//                                           (encryptor_name=id_
//                                           | SERVER ASYMMETRIC KEY EQUAL encryptor_name=id_
//                                           )
//                  )*
//              )?
//
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/backup-certificate-transact-sql
//backup_certificate
//    : BACKUP CERTIFICATE certname=id_ TO FILE EQUAL cert_file=STRING
//       ( WITH PRIVATE KEY
//           LR_BRACKET
//             (COMMA? FILE EQUAL private_key_file=STRING
//             |COMMA? ENCRYPTION BY PASSWORD EQUAL encryption_password=STRING
//             |COMMA? DECRYPTION BY PASSWORD EQUAL decryption_pasword=STRING
//             )+
//           RR_BRACKET
//       )?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/backup-master-key-transact-sql
//backup_master_key
//    : BACKUP MASTER KEY TO FILE EQUAL master_key_backup_file=STRING
//         ENCRYPTION BY PASSWORD EQUAL encryption_password=STRING
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/statements/backup-service-master-key-transact-sql
//backup_service_master_key
//    : BACKUP SERVICE MASTER KEY TO FILE EQUAL service_master_key_backup_file=STRING
//         ENCRYPTION BY PASSWORD EQUAL encryption_password=STRING
//    ;
//
//kill_statement
//    : KILL (kill_process | kill_query_notification | kill_stats_job)
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/kill-transact-sql
//kill_process
//    : (session_id=(DECIMAL|STRING) | UOW) (WITH STATUSONLY)?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/kill-query-notification-subscription-transact-sql
//kill_query_notification
//    : QUERY NOTIFICATION SUBSCRIPTION (ALL | subscription_id=DECIMAL)
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/kill-stats-job-transact-sql
//kill_stats_job
//    : STATS JOB job_id=DECIMAL
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms188332.aspx
//execute_statement
//    : EXECUTE execute_body ';'?
//    ;
//
//execute_body_batch
//    : func_proc_name_server_database_schema (execute_statement_arg (  comma    execute_statement_arg)*)? ';'?
//    ;
//
////https://docs.microsoft.com/it-it/sql/t-sql/language-elements/execute-transact-sql?view=sql-server-ver15
//execute_body
//    : (return_status=LOCAL_ID '=')? (func_proc_name_server_database_schema | execute_var_string)  execute_statement_arg?
//    |   l_bracket   execute_var_string (  comma    execute_var_string)*    r_bracket     (AS? (LOGIN | USER) '=' STRING)? (AT_KEYWORD linkedServer=id_)?
//    ;
//
//execute_statement_arg
//    :
//    execute_statement_arg_unnamed (  comma    execute_statement_arg) *    //Unnamed params can continue unnamed
//    |
//    execute_statement_arg_named (  comma    execute_statement_arg_named)* //Named can only be continued by unnamed
//    ;
//
//execute_statement_arg_named
//    : name1=LOCAL_ID '=' value=execute_parameter
//    ;
//
//execute_statement_arg_unnamed
//    : value=execute_parameter
//    ;
//
//execute_parameter
//    : (constant | LOCAL_ID (OUTPUT | OUT)? | id_ | DEFAULT | NULL_)
//    ;
//
execute_var_string
    : LOCAL_ID (OUTPUT | OUT)? ('+' LOCAL_ID ('+' execute_var_string)?)?
    | STRING ('+' LOCAL_ID ('+' execute_var_string)?)?
    ;
//
//// https://msdn.microsoft.com/en-us/library/ff848791.aspx
//security_statement
//    // https://msdn.microsoft.com/en-us/library/ms188354.aspx
//    : execute_clause ';'?
//    // https://msdn.microsoft.com/en-us/library/ms187965.aspx
//    | GRANT (ALL PRIVILEGES? | grant_permission (  l_bracket   column_name_list    r_bracket    )?) (ON (class_type_for_grant '::')? on_id=table_name)? TO to_principal+=principal_id (  comma    to_principal+=principal_id)* (WITH GRANT OPTION)? (AS as_principal=principal_id)? ';'?
//    // https://msdn.microsoft.com/en-us/library/ms178632.aspx
//    | REVERT (  l_bracket   WITH COOKIE '=' LOCAL_ID    r_bracket    )? ';'?
//    | open_key
//    | close_key
//    | create_key
//    | create_certificate
//    ;
//
//principal_id:
//    | id_
//    | PUBLIC
//    ;
//
//create_certificate
//    : CREATE CERTIFICATE certificate_name=id_ (AUTHORIZATION user_name=id_)?
//      (FROM existing_keys | generate_new_keys)
//      (ACTIVE FOR BEGIN DIALOG '=' (ON | OFF))?
//    ;
//
//existing_keys
//    : ASSEMBLY assembly_name=id_
//    | EXECUTABLE? FILE EQUAL path_to_file=STRING (WITH PRIVATE KEY   l_bracket   private_key_options    r_bracket    )?
//    ;
//
//private_key_options
//    : (FILE | BINARY) '=' path=STRING (  comma    (DECRYPTION | ENCRYPTION) BY PASSWORD '=' password=STRING)?
//    ;
//
//generate_new_keys
//    : (ENCRYPTION BY PASSWORD '=' password=STRING)?
//      WITH SUBJECT EQUAL certificate_subject_name=STRING (  comma    date_options)*
//    ;
//
//date_options
//    : (START_DATE | EXPIRY_DATE) EQUAL STRING
//    ;
//
//open_key
//    : OPEN SYMMETRIC KEY key_name=id_ DECRYPTION BY decryption_mechanism
//    | OPEN MASTER KEY DECRYPTION BY PASSWORD '=' password=STRING
//    ;
//
//close_key
//    : CLOSE SYMMETRIC KEY key_name=id_
//    | CLOSE ALL SYMMETRIC KEYS
//    | CLOSE MASTER KEY
//    ;
//
//create_key
//    : CREATE MASTER KEY ENCRYPTION BY PASSWORD '=' password=STRING
//    | CREATE SYMMETRIC KEY key_name=id_
//      (AUTHORIZATION user_name=id_)?
//      (FROM PROVIDER provider_name=id_)?
//      WITH ((key_options | ENCRYPTION BY encryption_mechanism)  comma?)+
//    ;
//
//key_options
//    : KEY_SOURCE EQUAL pass_phrase=STRING
//    | ALGORITHM EQUAL algorithm
//    | IDENTITY_VALUE EQUAL identity_phrase=STRING
//    | PROVIDER_KEY_NAME EQUAL key_name_in_provider=STRING
//    | CREATION_DISPOSITION EQUAL (CREATE_NEW | OPEN_EXISTING)
//    ;
//
//algorithm
//    : DES
//    | TRIPLE_DES
//    | TRIPLE_DES_3KEY
//    | RC2
//    | RC4
//    | RC4_128
//    | DESX
//    | AES_128
//    | AES_192
//    | AES_256
//    ;
//
//encryption_mechanism
//    : CERTIFICATE certificate_name=id_
//    | ASYMMETRIC KEY asym_key_name=id_
//    | SYMMETRIC KEY decrypting_Key_name=id_
//    | PASSWORD '=' STRING
//    ;
//
//decryption_mechanism
//    : CERTIFICATE certificate_name=id_ (WITH PASSWORD EQUAL STRING)?
//    | ASYMMETRIC KEY asym_key_name=id_ (WITH PASSWORD EQUAL STRING)?
//    | SYMMETRIC KEY decrypting_Key_name=id_
//    | PASSWORD EQUAL STRING
//    ;
//
//// https://docs.microsoft.com/en-us/sql/relational-databases/system-functions/sys-fn-builtin-permissions-transact-sql?view=sql-server-ver15
//// SELECT DISTINCT '| ' + permission_name
//// FROM sys.fn_builtin_permissions (DEFAULT)
//// ORDER BY 1
//grant_permission
//    : ADMINISTER ( BULK OPERATIONS | DATABASE BULK OPERATIONS)
//    | ALTER ( ANY ( APPLICATION ROLE
//                  | ASSEMBLY
//                  | ASYMMETRIC KEY
//                  | AVAILABILITY GROUP
//                  | CERTIFICATE
//                  | COLUMN ( ENCRYPTION KEY | MASTER KEY )
//                  | CONNECTION
//                  | CONTRACT
//                  | CREDENTIAL
//                  | DATABASE ( AUDIT
//                             | DDL TRIGGER
//                             | EVENT ( NOTIFICATION | SESSION )
//                             | SCOPED CONFIGURATION
//                             )?
//                  | DATASPACE
//                  | ENDPOINT
//                  | EVENT ( NOTIFICATION | SESSION )
//                  | EXTERNAL ( DATA SOURCE | FILE FORMAT | LIBRARY)
//                  | FULLTEXT CATALOG
//                  | LINKED SERVER
//                  | LOGIN
//                  | MASK
//                  | MESSAGE TYPE
//                  | REMOTE SERVICE BINDING
//                  | ROLE
//                  | ROUTE
//                  | SCHEMA
//                  | SECURITY POLICY
//                  | SERVER ( AUDIT | ROLE )
//                  | SERVICE
//                  | SYMMETRIC KEY
//                  | USER
//                  )
//            | RESOURCES
//            | SERVER STATE
//            | SETTINGS
//            | TRACE
//            )?
//    | AUTHENTICATE SERVER?
//    | BACKUP ( DATABASE | LOG )
//    | CHECKPOINT
//    | CONNECT ( ANY DATABASE | REPLICATION | SQL )?
//    | CONTROL SERVER?
//    | CREATE ( AGGREGATE
//             | ANY DATABASE
//             | ASSEMBLY
//             | ASYMMETRIC KEY
//             | AVAILABILITY GROUP
//             | CERTIFICATE
//             | CONTRACT
//             | DATABASE (DDL EVENT NOTIFICATION)?
//             | DDL EVENT NOTIFICATION
//             | DEFAULT
//             | ENDPOINT
//             | EXTERNAL LIBRARY
//             | FULLTEXT CATALOG
//             | FUNCTION
//             | MESSAGE TYPE
//             | PROCEDURE
//             | QUEUE
//             | REMOTE SERVICE BINDING
//             | ROLE
//             | ROUTE
//             | RULE
//             | SCHEMA
//             | SEQUENCE
//             | SERVER ROLE
//             | SERVICE
//             | SYMMETRIC KEY
//             | SYNONYM
//             | TABLE
//             | TRACE EVENT NOTIFICATION
//             | TYPE
//             | VIEW
//             | XML SCHEMA COLLECTION
//             )
//    | DELETE
//    | EXECUTE ( ANY EXTERNAL SCRIPT )?
//    | EXTERNAL ACCESS ASSEMBLY
//    | IMPERSONATE ( ANY LOGIN )?
//    | INSERT
//    | KILL DATABASE CONNECTION
//    | RECEIVE
//    | REFERENCES
//    | SELECT ( ALL USER SECURABLES )?
//    | SEND
//    | SHOWPLAN
//    | SHUTDOWN
//    | SUBSCRIBE QUERY NOTIFICATIONS
//    | TAKE OWNERSHIP
//    | UNMASK
//    | UNSAFE ASSEMBLY
//    | UPDATE
//    | VIEW ( ANY ( DATABASE | DEFINITION | COLUMN ( ENCRYPTION | MASTER ) KEY DEFINITION )
//           | CHANGE TRACKING
//           | DATABASE STATE
//           | DEFINITION
//           | SERVER STATE
//           )
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms190356.aspx
//// https://msdn.microsoft.com/en-us/library/ms189484.aspx
//set_statement
//    : SET LOCAL_ID ('.' member_name=id_)? '=' expression ';'?
//    | SET LOCAL_ID assignment_operator expression ';'?
//    | SET LOCAL_ID '='
//      CURSOR declare_set_cursor_common (FOR (READ ONLY | UPDATE (OF column_name_list)?))? ';'?
//    // https://msdn.microsoft.com/en-us/library/ms189837.aspx
//    | set_special
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms174377.aspx
//transaction_statement
//    // https://msdn.microsoft.com/en-us/library/ms188386.aspx
//    : BEGIN DISTRIBUTED (TRAN | TRANSACTION) (id_ | LOCAL_ID)? ';'?
//    // https://msdn.microsoft.com/en-us/library/ms188929.aspx
//    | BEGIN (TRAN | TRANSACTION) ((id_ | LOCAL_ID) (WITH MARK STRING)?)? ';'?
//    // https://msdn.microsoft.com/en-us/library/ms190295.aspx
//    | COMMIT (TRAN | TRANSACTION) ((id_ | LOCAL_ID) (WITH   l_bracket   DELAYED_DURABILITY EQUAL (OFF | ON)    r_bracket    )?)? ';'?
//    // https://msdn.microsoft.com/en-us/library/ms178628.aspx
//    | COMMIT WORK? ';'?
//    | COMMIT id_
//    | ROLLBACK id_
//    // https://msdn.microsoft.com/en-us/library/ms181299.aspx
//    | ROLLBACK (TRAN | TRANSACTION) (id_ | LOCAL_ID)? ';'?
//    // https://msdn.microsoft.com/en-us/library/ms174973.aspx
//    | ROLLBACK WORK? ';'?
//    // https://msdn.microsoft.com/en-us/library/ms188378.aspx
//    | SAVE (TRAN | TRANSACTION) (id_ | LOCAL_ID)? ';'?
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms188037.aspx
//go_batch_statement
//    : GO_BATCH (count=DECIMAL)?
//    ;
//
//go_statement
//    : GO (count=DECIMAL)?
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms188366.aspx
//use_statement
//    : USE database=id_ ';'?
//    ;
//
//setuser_statement
//    : SETUSER user=STRING?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/reconfigure-transact-sql
//reconfigure_statement
//    : RECONFIGURE (WITH OVERRIDE)?
//    ;
//
//// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/shutdown-transact-sql
//shutdown_statement
//    : SHUTDOWN (WITH NOWAIT)?
//    ;
//
//checkpoint_statement
//    : CHECKPOINT (checkPointDuration=DECIMAL)?
//    ;
//
////These are dbcc commands with strange syntax that doesn't fit the regular dbcc syntax
//dbcc_special
//    : DBCC SHRINKLOG (  l_bracket   SIZE '='  (constant_expression| id_ | DEFAULT)    r_bracket    )? ';'?
//    ;
//
//dbcc_clause
//    : DBCC name1=dbcc_command (  l_bracket   expression_list    r_bracket    )? (WITH dbcc_options)? ';'?
//    ;
//
//dbcc_command
//    : simple_id | keyword
//    ;
//
//dbcc_options
//    :  simple_id (  comma    simple_id)?
//    ;
//
//execute_clause
//    : EXECUTE AS clause=(CALLER | SELF | OWNER | STRING)
//    ;
//
//declare_local
//    : LOCAL_ID AS? data_type ('=' expression)?
//    ;
//
//table_type_definition
//    : TABLE   l_bracket   column_def_table_constraints (  comma? table_type_indices)*     r_bracket
//    ;
//
//table_type_indices
//    :  (((PRIMARY KEY | INDEX id_) (CLUSTERED | NONCLUSTERED)?) | UNIQUE)   l_bracket   column_name_list_with_order    r_bracket
//    | CHECK   l_bracket   search_condition    r_bracket
//    ;
//
//xml_type_definition
//    : XML   l_bracket   ( CONTENT | DOCUMENT )? xml_schema_collection    r_bracket
//    ;
//
//xml_schema_collection
//    : ID '.' ID
//    ;
//
//column_def_table_constraints
//    : column_def_table_constraint (  comma? column_def_table_constraint)*
//    ;
//
//column_def_table_constraint
//    : column_definition
//    | materialized_column_definition
//    | table_constraint
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms187742.aspx
//column_definition
//    : id_ (data_type | AS expression PERSISTED? ) (COLLATE id_)? null_notnull?
//      ((CONSTRAINT constraint=id_)? null_or_default null_or_default?
//       | IDENTITY (  l_bracket   seed=DECIMAL   comma    increment=DECIMAL    r_bracket    )? (NOT FOR REPLICATION)?)?
//      ROWGUIDCOL?
//      column_constraint*
//    ;
//
//materialized_column_definition
//    : id_ (COMPUTE | AS) expression (MATERIALIZED | NOT MATERIALIZED)?
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms186712.aspx
//column_constraint
//    :(CONSTRAINT constraint=id_)?
//      ((PRIMARY KEY | UNIQUE) clustered? index_options?
//      | CHECK (NOT FOR REPLICATION)?   l_bracket   search_condition    r_bracket
//      | (FOREIGN KEY)? REFERENCES table_name   l_bracket   pk = column_name_list   r_bracket     on_delete? on_update?
//      | null_notnull)
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms188066.aspx
//table_constraint
//    : (CONSTRAINT constraint=id_)?
//       ((PRIMARY KEY | UNIQUE) clustered?   l_bracket   column_name_list_with_order    r_bracket     index_options? (ON id_)?
//         | CHECK (NOT FOR REPLICATION)?   l_bracket   search_condition    r_bracket
//         | DEFAULT   l_bracket  ?  ((STRING | PLUS | function_call | DECIMAL)+ | NEXT VALUE FOR table_name)    r_bracket    ? FOR id_
//         | FOREIGN KEY   l_bracket   fk = column_name_list    r_bracket     REFERENCES table_name (  l_bracket   pk = column_name_list   r_bracket    )? on_delete? on_update?)
//    ;
//
//on_delete
//    : ON DELETE (NO ACTION | CASCADE | SET NULL_ | SET DEFAULT)
//    ;
//
//on_update
//    : ON UPDATE (NO ACTION | CASCADE | SET NULL_ | SET DEFAULT)
//    ;
//
//index_options
//    : WITH   l_bracket   index_option (  comma    index_option)*    r_bracket
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms186869.aspx
//// Id runtime checking. Id in (PAD_INDEX, FILLFACTOR, IGNORE_DUP_KEY, STATISTICS_NORECOMPUTE, ALLOW_ROW_LOCKS,
//// ALLOW_PAGE_LOCKS, SORT_IN_TEMPDB, ONLINE, MAXDOP, DATA_COMPRESSION, ONLINE).
//index_option
//    : (simple_id | keyword) '=' (simple_id | keyword | on_off | DECIMAL)
//    | CLUSTERED COLUMNSTORE INDEX | HEAP
//    | DISTRIBUTION '=' HASH   l_bracket   id_    r_bracket     | CLUSTERED INDEX   l_bracket   id_ (ASC | DESC)? (  comma    id_ (ASC | DESC)?)*    r_bracket
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms180169.aspx
//declare_cursor
//    : DECLARE cursor_name
//      (CURSOR (declare_set_cursor_common (FOR UPDATE (OF column_name_list)?)?)?
//      | (SEMI_SENSITIVE | INSENSITIVE)? SCROLL? CURSOR FOR select_statement_standalone (FOR (READ ONLY | UPDATE | (OF column_name_list)))?
//      ) ';'?
//    ;
//
//declare_set_cursor_common
//    : declare_set_cursor_common_partial*
//      FOR select_statement_standalone
//    ;
//
//declare_set_cursor_common_partial
//    : (LOCAL | GLOBAL)
//    | (FORWARD_ONLY | SCROLL)
//    | (STATIC | KEYSET | DYNAMIC | FAST_FORWARD)
//    | (READ_ONLY | SCROLL_LOCKS | OPTIMISTIC)
//    | TYPE_WARNING
//    ;
//
//fetch_cursor
//    : FETCH ((NEXT | PRIOR | FIRST | LAST | (ABSOLUTE | RELATIVE) expression)? FROM)?
//      GLOBAL? cursor_name (INTO LOCAL_ID (  comma    LOCAL_ID)*)? ';'?
//    ;
//
//// https://msdn.microsoft.com/en-us/library/ms190356.aspx
//// Runtime check.
//set_special
//    : SET id_ (id_ | constant_LOCAL_ID | on_off) ';'?
//    | SET STATISTICS (IO | TIME | XML | PROFILE) on_off ';'?
//    | SET ROWCOUNT (LOCAL_ID | DECIMAL) ';'?
//    // https://msdn.microsoft.com/en-us/library/ms173763.aspx
//    | SET TRANSACTION ISOLATION LEVEL
//      (READ UNCOMMITTED | READ COMMITTED | REPEATABLE READ | SNAPSHOT | SERIALIZABLE | DECIMAL) ';'?
//    // https://msdn.microsoft.com/en-us/library/ms188059.aspx
//    | SET IDENTITY_INSERT table_name on_off ';'?
//    | SET special_list (  comma    special_list)* on_off
//    | SET modify_method
//    ;
//
//special_list:
////    : ANSI_NULLS
//    | QUOTED_IDENTIFIER
//    | ANSI_PADDING
//    | ANSI_WARNINGS
////    | ANSI_DEFAULTS
////    | ANSI_NULL_DFLT_OFF
////    | ANSI_NULL_DFLT_ON
//    | ARITHABORT
////    | ARITHIGNORE
//    | CONCAT_NULL_YIELDS_NULL
//    | CURSOR_CLOSE_ON_COMMIT
////    | FMTONLY
////    | FORCEPLAN
////    | IMPLICIT_TRANSACTIONS
//    | NOCOUNT
////    | NOEXEol
//    | NUMERIC_ROUNDABORT
////    | PARSEONLY
////    | REMOTE_PROC_TRANSACTIONS
////    | SHOWPLAN_ALL
////    | SHOWPLAN_TEXT
////    | SHOWPLAN_XML
//    | XACT_ABORT
//    ;

//constant_LOCAL_ID
//    : constant
//    | LOCAL_ID
//    ;

// Expression.
// Expression.
//test:     ((function_call | primitive_expression| full_column_name|case_expression)) (strOpr (dotsym|string) strOpr (full_column_name | function_call | primitive_expression| case_expression))+;
// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/expressions-transact-sql
// Operator precendence: https://docs.microsoft.com/en-us/sql/t-sql/language-elements/operator-precedence-transact-sql
expression:
    ((function_call | primitive_expression| full_column_name|case_expression)) (strOpr (dotsym|string) strOpr (full_column_name | function_call | primitive_expression| case_expression))+
    | ((dotsym) strOpr (function_call | primitive_expression| full_column_name|case_expression))
    | primitive_expression
    | expression dot (value_call | query_call | exist_call | modify_call)
    |  function_call
    |  collateKw collateValue
    | case_expression
    | full_column_name
    | bracket_expression
    | unary_operator_expression
    | expression operator rhs
    | expression time_zone
    | over_clause
    | dollarAction
    | currentTimeStamp
    ;
currentTimeStamp: CURRENT_TIMESTAMP;
strOpr: '+';
dotsym: DOTSYM;
string:  constant | primitive_expression;
collateKw: COLLATE;
dollarAction: DOLLAR_ACTION;

operator: (   asterikSymbol   |'=' | '/' | '%' | '+' | '-' | '&' | '^' | '|' | '||');
lhs: expression;
rhs: expression;
collateValue: id_;
time_zone
    :  atKeyWord timeKw zonekW expression
    ;
atKeyWord: AT_KEYWORD;
timeKw:TIME;
zonekW:ZONE;
primitive_expression
    : defaultPrimitiveExpression | nullPrimitiveExpression | localIdPrimitiveExpression | constant
    ;
defaultPrimitiveExpression: DEFAULT;
nullPrimitiveExpression:    NULL_;
localIdPrimitiveExpression: LOCAL_ID;
// https://docs.microsoft.com/en-us/sql/t-sql/language-elements/case-transact-sql
case_expression
    : caseKw expression switch_section+ (elseKw expression)? endKw
    | caseKw switch_search_condition_section+ (elseKw expression)? endKw
    ;
caseKw: CASE;
elseKw: ELSE;
endKw: END;
unary_operator_expression
    :  unarySymbol expression
    ;
unarySymbol: ('~'|'+' | '-');
bracket_expression
    :   l_bracket   expression    r_bracket     |   l_bracket   subquery    r_bracket
    ;

constant_expression
    : NULL_
    | constant
    // system functions: https://msdn.microsoft.com/en-us/library/ms187786.aspx
    | function_call
    | LOCAL_ID         // TODO: remove.
    |   l_bracket   constant_expression    r_bracket
    ;

subquery
    : select_statement
    ;

// https://msdn.microsoft.com/en-us/library/ms175972.aspx
with_expression
    : WITH common_table_expression (  comma    common_table_expression)*
    ;

common_table_expression
    : expression_name (  l_bracket   column_name_list    r_bracket    )? AS   l_bracket1   cte_query    r_bracket1
    ;
expression_name: id_;
cte_query : select_statement;
l_bracket1: l_bracket;
r_bracket1: r_bracket;
//update_elem
//    : LOCAL_ID '=' full_column_name ('=' | assignment_operator) expression //Combined variable and column update
//    | (full_column_name | LOCAL_ID) ('=' | assignment_operator) expression
//    | udt_column_name '.' method_name=id_   l_bracket   expression_list    r_bracket
//    //| full_column_name '.' WRITE (expression, )
//    ;
//
//update_elem_merge
//    : (full_column_name | LOCAL_ID) ('=' | assignment_operator) expression
//    | udt_column_name '.' method_name=id_   l_bracket   expression_list    r_bracket
//    //| full_column_name '.' WRITE (expression, )
//    ;

// https://docs.microsoft.com/en-us/sql/t-sql/queries/search-condition-transact-sql
search_condition
    : logicalNot* (predicate |   l_bracket   search_condition    r_bracket    )
    | search_condition (logicalAnd|logicalOr) search_condition // AND takes precedence over OR
    ;
logicalNot: NOT;
logicalAnd: AND;
logicalOr:  OR;
predicate
    : existsPredicate
    | freetext_predicate
    | comparison_operator_predicate
    | betweenAndPredicate
    | inPredicate
    | likePredicate
    | nullPredicate
    ;
existsPredicate: existsKw  l_bracket   subquery    r_bracket;
comparison_operator_predicate:
 comparisionOprWithColumnName
 | (expression comparison_operator expression)
  | (expression comparison_operator comparisionType   l_bracket   subquery    r_bracket );
betweenAndPredicate:    expression logicalNot* betweenKw expression andKw expression;
inPredicate:     expression logicalNot* inKw   l_bracket   (subquery | expression_list)    r_bracket;
likePredicate:   expression logicalNot* likeKw expression (escapeKw expression)?;
nullPredicate:   expression isKw null_notnull;
comparisionOprWithColumnName: full_column_name comparison_operator expression;
likeKw: LIKE;
escapeKw: ESCAPE;
existsKw: EXISTS;
isKw: IS;
and_expression: expression;
comparisionType: (ALL | SOME | ANY);
// Changed union rule to sql_union to avoid union construct with C++ target.  Issue reported by person who generates into C++.  This individual reports change causes generated code to work

query_expression
    : (query_specification |   l_bracket   query_expression    r_bracket     (union_all? query_expression)? )
    |  query_specification  (sqlUnionType (query_specification | (  l_bracket  query_expression    r_bracket    )))* //if using top, order by can be on the "top" side of union :/
    ;
union_all: UNION ALL?;
sqlUnionType: ((UNION ALL?) | EXCEPT | INTERSECT);
// https://msdn.microsoft.com/en-us/library/ms176104.aspx
query_specification
    : selectKw allOrDistinct top_clause?  select_element_list
      // https://msdn.microsoft.com/en-us/library/ms188029.aspx
      (intoKw table_name)?
      (fromKw (table_source (  comma    table_source)*))?
      (whereKw search_condition)?
      // https://msdn.microsoft.com/en-us/library/ms177673.aspx
      (groupKw byKw groupByAll? group_by_item (  comma   group_by_item)*)?
      (havingKw search_condition)?
      order_by_clause?
    ;
select_element_list: select_list_elem (  comma    select_list_elem)*;
selectKw: SELECT;
intoKw: INTO;
fromKw: FROM;
whereKw: WHERE;
groupKw: GROUP;
byKw: BY;
havingKw: HAVING;
groupByAll: ALL;
where_search_condition: search_condition;
having_search_condition: search_condition;
intoTable_name: table_name;
allOrDistinct: (ALL | DISTINCT)?;
// https://msdn.microsoft.com/en-us/library/ms189463.aspx
top_clause
    : topKw (top_percent | top_count) withTies?
    ;
topKw: TOP;
withTies: (WITH TIES);
top_percent
    : (percent_constant percentKw)
    |   l_bracket   expression    r_bracket     percentKw
    ;
percentKw: PERCENT;
topper_expression: expression ;
percent_constant: (REAL | FLOAT | DECIMAL) ;
top_count
    : count_constant
    |   l_bracket   expression  r_bracket
    ;
count_constant: DECIMAL;
topcount_expression: expression;
// https://msdn.microsoft.com/en-us/library/ms188385.aspx
order_by_clause
    : orderKw byKw order_by_expression (  comma    order_by_expression)*
      (offsetKw offsetExp offset_rows (fetchKw fetch_offset fetchExp fetch_rows onlyKw)?)?
    ;
offsetExp: expression;
fetchExp: expression;
offsetKw: OFFSET;
onlyKw: ONLY;
fetchKw:  FETCH;
//offset_exp: expression;
offset_rows: (ROW | ROWS);
fetch_offset: (FIRST | NEXT);
//fetch_exp: expression;
fetch_rows: (ROW | ROWS);
// https://docs.microsoft.com/en-us/sql/t-sql/queries/select-for-clause-transact-sql
for_clause
    : forKw browseKw
    | forKw xmlKw (rawKw (  l_bracket   elementName    r_bracket    )? | autoKw) ( comma    (binary_base64 | type | root (  l_bracket   rootName    r_bracket    )?))*
      (comma (xmlData | xmlSchema (  l_bracket   targetNameSpaceURI    r_bracket    )?))?
      (comma elements (xsinil | absent)?)?
    | forKw xmlKw explicit ( comma    (binary_base64 | type | root (  l_bracket   rootName    r_bracket    )?))*
      (comma xmlData)?
    | forKw xmlKw pathKw (  l_bracket   elementName    r_bracket    )? ( comma    (binary_base64 | type | root (  l_bracket   rootName    r_bracket    )?))*
      (comma elements (xsinil | absent)?)?
    | forKw jsonKw (autoKw | pathKw)
      (comma rootKw (  l_bracket   rootName    r_bracket    )?)?
      (comma includeNullValues)?
      (comma withoutArrayWrapper)?
    ;
rootName: STRING;
targetNameSpaceURI: STRING;
includeNullValues: INCLUDE_NULL_VALUES;
withoutArrayWrapper:WITHOUT_ARRAY_WRAPPER;
rootKw: ROOT;
pathKw:PATH;
explicit: EXPLICIT;
xmlData: XMLDATA;
elements: ELEMENTS;
xsinil: XSINIL;
absent: ABSENT;
xmlSchema: XMLSCHEMA;
jsonKw: JSON;
autoKw: AUTO;
elementName: STRING;
xmlKw: XML;
rawKw: RAW;
forKw: FOR;
browseKw: BROWSE;

//xml_common_directives
//    :   comma    (binary_base64 | type | root (  l_bracket   rootName    r_bracket    )?)
//    ;
binary_base64:BINARY_BASE64;
type:TYPE;
root:ROOT;
order_by_expression
    : expression (ascending | descending)?
    ;
ascending: ASC;
descending: DESC;
group_by_item
    : expression
    | (rollUpKw l_bracket (expression|(l_bracket expression(comma expression)* r_bracket))(comma (expression|(l_bracket expression(comma expression)* r_bracket)))* r_bracket)
    | (cubeKw l_bracket (expression|(l_bracket expression(comma expression)* r_bracket))(comma (expression|(l_bracket expression(comma expression)* r_bracket)))* r_bracket)
    | (groupingKw setsKw l_bracket groupingSet(comma groupingSet)* r_bracket)
    | (l_bracket r_bracket)
    ;
//grand_total: l_bracket r_bracket;
//rollup_spec: rollUpKw l_bracket groupingExpr(comma groupingExpr)* r_bracket;
//cube_spec: cubeKw l_bracket groupingExpr(comma groupingExpr)* r_bracket;
//grouping_sets_spec:groupingKw setsKw l_bracket groupingSet(comma groupingSet)* r_bracket;
cubeKw: CUBE;
rollUpKw: ROLLUP;
groupingKw: GROUPING;
setsKw: SETS;
//groupingExpr: expression|(l_bracket expression(comma expression)* r_bracket);
groupingSet: (l_bracket r_bracket) | grouping_set_item | (l_bracket grouping_set_item (comma grouping_set_item)* r_bracket);
grouping_set_item:  (expression|(l_bracket expression(comma expression)* r_bracket)) | (rollUpKw l_bracket (expression|(l_bracket expression(comma expression)* r_bracket))(comma (expression|(l_bracket expression(comma expression)* r_bracket)))* r_bracket) | (cubeKw l_bracket (expression|(l_bracket expression(comma expression)* r_bracket))(comma (expression|(l_bracket expression(comma expression)* r_bracket)))* r_bracket) ;
option_clause
    // https://msdn.microsoft.com/en-us/library/ms181714.aspx
    : optionKw   l_bracket   (optionValue (optionArg)?) (  comma    (optionValue optionArg?))*    r_bracket;
optionKw: OPTION;
option
    : optionValue optionArg?;
optionValue:FAST
    | (HASH | ORDER) GROUP
    | (MERGE | HASH | CONCAT) UNION
    | (LOOP | MERGE | HASH) JOIN
    | EXPAND VIEWS
    | FORCE ORDER
    | IGNORE_NONCLUSTERED_COLUMNSTORE_INDEX
    | KEEP PLAN
    | KEEPFIXED PLAN
    | MAXDOP
    | MAXRECURSION
    | OPTIMIZE FOR
    | OPTIMIZE FOR UNKNOWN
    | PARAMETERIZATION (SIMPLE | FORCED)
    | RECOMPILE
    | ROBUST PLAN
    | USE PLAN STRING
    ;
optionArg:
    number_rows | number_of_processors | number_recursion | (l_bracket   optimize_for_arg (  comma    optimize_for_arg)*    r_bracket);

number_of_processors:DECIMAL;
number_recursion:DECIMAL;
number_rows: DECIMAL;
optimize_for_arg
    : LOCAL_ID (UNKNOWN | '=' (constant | NULL_))
    ;

// https://msdn.microsoft.com/en-us/library/ms176104.aspx
select_list
    : select_list_elem (  comma    select_list_elem)*
    ;

udt_method_arguments
    :   l_bracket   execute_var_string (  comma    execute_var_string)*    r_bracket
    ;

// https://docs.microsoft.com/ru-ru/sql/t-sql/queries/select-clause-transact-sql
asteriskClause
    : (table_name dot)?    asterikSymbol
    | (inserted|deleted) dot    asterikSymbol
    ;
inserted: INSERTED;
deleted: DELETED;
column_elem
    : (full_column_name | dollarIdentity | dollarRowGuid | nullUnderscore) (asKw? column_alias)?
    ;
dollarIdentity: '$' IDENTITY;
dollarRowGuid: '$' ROWGUID;
nullUnderscore: NULL_;
udt_elem
    : udt_column_name (dot non_static_attr (udt_method_arguments)?)? (asKw? column_alias)?
    | udt_column_name (doubleColonSymb static_attr (udt_method_arguments)?)? (asKw? column_alias)?
    ;
udt_column_name: id_;
doubleColonSymb: DOUBLE_COLON;
non_static_attr: id_;
static_attr: id_;

expression_elem
    : expression equalToSym expression
    | expression asKw? column_alias?
    ;

select_list_elem
    : asteriskClause
    | column_elem
    | select_list_elem_with_assignopr
    | expression_elem
    | nextValueClause
    | udt_elem
    ;

select_list_elem_with_assignopr: lhsLocalId (assignment_operator | equalToSym) ( expression | nextValueForKw table_name);
nextValueClause: nextValueForKw table_name (asKw? column_alias)?;
nextValueForKw: NEXT VALUE FOR;
lhsLocalId: LOCAL_ID;
equalToSym: '=';
table_sources
    : table_source (  comma    table_source)*
    ;

// https://docs.microsoft.com/en-us/sql/t-sql/queries/from-transact-sql
table_source
    : (table_source_item_joined)
    |   l_bracket   table_source    r_bracket
    ;

table_source_item_joined
    : table_source_item (join_on
                             | cross_join
                             | apply_
                             | pivot
                             | unpivot
                             )*
    |   l_bracket   table_source_item_joined    r_bracket     ( join_on
                                                                   | cross_join
                                                                   | apply_
                                                                   | pivot
                                                                   | unpivot)*
    ;

table_source_item
    : (table_name (withKw?   l_bracket   table_hint (  comma?   table_hint)*    r_bracket)?)        as_table_alias?
    | full_table_name             as_table_alias?
//    | rowset_function             as_table_alias?
    |   l_bracket   derived_table    r_bracket           (as_table_alias (l_bracket   column_alias (  comma   column_alias)*    r_bracket)?)?
//    | change_table                as_table_alias?
    | function_call               (as_table_alias (l_bracket   column_alias (  comma   column_alias)*    r_bracket)?)?
    | loc_id           as_table_alias?
//    | nodes_method                (as_table_alias column_alias_list?)?
//    | loc_id_call=LOCAL_ID '.' loc_fcall=function_call (as_table_alias column_alias_list?)?
    | open_xml
//    | open_json
    | doubleColonSymb  function_call  as_table_alias? // Build-in function (old syntax)
    ;

// https://docs.microsoft.com/en-us/sql/t-sql/functions/openxml-transact-sql
open_xml
    : openXmlKw   l_bracket   expression (inKw)?   comma    expression (inKw)?  (  comma    expression (inKw)?)?    r_bracket
    (withKw   l_bracket   schema_declaration    r_bracket     )? as_table_alias?
    ;
openXmlKw: OPENXML;
withKw: WITH;
idocExp: expression;
rowPatternExp: expression;
flagByteExp: expression;
inKw: IN;
open_json
    : OPENJSON   l_bracket   expression (  comma    expression)?    r_bracket
    (WITH   l_bracket   json_declaration    r_bracket     )? as_table_alias?
    ;

json_declaration
    : json_col+=json_column_declaration (  comma    json_col+=json_column_declaration)*
    ;

json_column_declaration
    : column_declaration (AS JSON)?
    ;

schema_declaration
    : (id_ data_type columnDeclerationVariableName?) (  comma    (id_ data_type columnDeclerationVariableName?))*
    ;

column_declaration
    : id_ data_type columnDeclerationVariableName?
    ;
columnDeclerationVariableName:  DOTSYM | STRING;
change_table
    : change_table_changes
    | change_table_version
    ;

change_table_changes
    : CHANGETABLE   l_bracket   CHANGES changetable=table_name   comma    changesid=(NULL_ | DECIMAL | LOCAL_ID)    r_bracket
    ;
change_table_version
    : CHANGETABLE   l_bracket   VERSION versiontable=table_name   comma    pk_columns=full_column_name_list   comma    pk_values=select_list     r_bracket
    ;

// https://msdn.microsoft.com/en-us/library/ms191472.aspx
join_part
    // https://msdn.microsoft.com/en-us/library/ms173815(v=sql.120).aspx
    : join_on
    | cross_join
    | apply_
    | pivot
    | unpivot
    ;
join_on
    : (innerKw | join_type outerKw?)? (join_hint)?
       joinKw table_source onKw search_condition
    ;
onKw: ON;
joinKw: JOIN;
outerKw: OUTER;
innerKw:  INNER;
join_type: (LEFT | RIGHT | FULL);
join_hint: (LOOP | HASH | MERGE | REMOTE);
source: table_source;
cross_join
    : crossKw joinKw table_source
    ;
crossKw: CROSS;
apply_
    : apply_style applyKw table_source
    ;
applyKw: APPLY;
apply_style: (CROSS | OUTER);
pivot
    : pivotKw pivot_clause as_table_alias
    ;
pivotKw: PIVOT;
unpivot
    : unPivotKw unpivot_clause as_table_alias
    ;
unPivotKw: UNPIVOT;
pivot_clause
    :   l_bracket   aggregate_windowed_function forKw full_column_name inKw (l_bracket   column_alias (  comma   column_alias)*    r_bracket)    r_bracket
    ;

unpivot_clause
    :   l_bracket   expression  forKw full_column_name inKw   l_bracket   (full_column_name (  comma    full_column_name)* )    r_bracket        r_bracket
    ;
unpivot_exp: expression ;
full_column_name_list
    : full_column_name (  comma    full_column_name)*
    ;

table_name_with_hint
    : table_name (withKw?   l_bracket   table_hint (  comma?   table_hint)*    r_bracket)?
    ;

// https://msdn.microsoft.com/en-us/library/ms190312.aspx
rowset_function
    :  (
        OPENROWSET LR_BRACKET provider_name = STRING COMMA connectionString = STRING COMMA sql = STRING RR_BRACKET
     )
     | ( OPENROWSET   l_bracket   BULK data_file=STRING   comma    (bulk_option (  comma    bulk_option)* | id_)   r_bracket     )
    ;

// runtime check.
bulk_option
    : id_ '=' bulk_option_value=(DECIMAL | STRING)
    ;

derived_table
    : subquery
    |  (l_bracket   subquery (union_all subquery)*    r_bracket)
    | table_value_constructor
    |   l_bracket   table_value_constructor    r_bracket
    ;
subqueryWithUnionAll: l_bracket   subquery (union_all subquery)*    r_bracket;
unionAllSubQuery: subquery;
function_call
    : ranking_windowed_function                         #RANKING_WINDOWED_FUNC
    | aggregate_windowed_function                       #AGGREGATE_WINDOWED_FUNC
    | analytic_windowed_function                        #ANALYTIC_WINDOWED_FUNC
    | built_in_functions                                #BUILT_IN_FUNC
    | scalarFunction                                    #SCALAR_FUNCTION
    | freetext_function                                 #FREE_TEXT
    | partition_function                                #PARTITION_FUNC
    ;
 scalarFunction:  scalar_function_name   l_bracket   expression_list?    r_bracket ;
partition_function
    :  partitionFunctionName  l_bracket   expression    r_bracket
    ;
dollarPartition: DOLLAR_PARTITION;
partitionFunctionName: (databaseName '.')? dollarPartition '.' id_;
freetext_function:
    containsTableFreeTextTableFunction
    | semanticsFunction;
 semanticsFunction: semanticsFunctionName  ( l_bracket
                                                    table_name
                                                            comma    full_column_name
                                                             comma    expression
                                                              comma    full_column_name
                                                               comma    expression    r_bracket)
                                                               |(l_bracket
                                                                      table_name
                                                                         comma    (full_column_name |   l_bracket   full_column_name (  comma    full_column_name)*    r_bracket     |    asterikSymbol   )
                                                                          comma    expression
                                                                     r_bracket);

 semanticsFunctionName:  SEMANTICSIMILARITYDETAILSTABLE | SEMANTICSIMILARITYTABLE | SEMANTICKEYPHRASETABLE;

 containsTableFreeTextTableFunction   : containsTableFreeTextTableFunctionName
                                             l_bracket   table_name   comma
                                                      (full_column_name |   l_bracket   full_column_name (  comma    full_column_name)*    r_bracket     |    asterikSymbol   )
                                                         comma  expression
                                                      (  comma    languageKw expression)?
                                                      (  comma    expression)?    r_bracket;
 languageKw: LANGUAGE;
containsTableFreeTextTableFunctionName: (CONTAINSTABLE | FREETEXTTABLE);

freetext_predicate
    : containsKw   l_bracket   (full_column_name |   l_bracket   full_column_name (  comma    full_column_name)*    r_bracket     |    asterikSymbol   | propertyKw   l_bracket   full_column_name   comma    expression    r_bracket    )   comma    expression    r_bracket
    | freeTextKw   l_bracket   (table_name   comma)?    (full_column_name |   l_bracket   full_column_name (  comma    full_column_name)*    r_bracket     |    asterikSymbol   )  comma    expression  (  comma    languageKw expression)?    r_bracket
    ;
propertyKw: PROPERTY;
containsKw: CONTAINS;
freeTextKw: FREETEXT;

built_in_functions
    : (builtInFunctionName builtInFunctionArg) | convertFunction | xml_data_type_methods  ;
builtInFunctionName: BINARY_CHECKSUM | CAST  | TRY_CAST   |   CHECKSUM | COALESCE  | CURRENT_TIMESTAMP | CURRENT_USER | DATEADD
                                         | DATEDIFF  | DATENAME   | DATEPART   | GETDATE | GETUTCDATE   | IDENTITY | MIN_ACTIVE_ROWVERSION  | NULLIF | STUFF  | SESSION_USER
                                         | SYSTEM_USER   | USER  | ISNULL  | IIF  | STRING_AGG  ;
                         // https://msdn

convertFunction: convertFunctionName l_bracket data_type comma expression (comma expression)? r_bracket;
convertFunctionName: CONVERT ;
    // https://msdn.microsoft.com/en-us/library/ms173784.aspx
builtInFunctionArg    : ( l_bracket   asterikSymbol    r_bracket )
                        |(l_bracket   expression_list    r_bracket )
                        |(l_bracket   expression   asKw data_type    r_bracket)
                        |(l_bracket      r_bracket )
                        |(l_bracket   search_condition   comma    expression   comma    expression    r_bracket  )
                        |(l_bracket   expression   comma    expression    r_bracket     (withinkw groupKw   l_bracket   order_by_clause    r_bracket    )? )
                        ;
asterikSymbol:         ASTERIK;
datepart:               ID;
convertDataType: data_type;
convertExpression: expression;
style: expression;
xml_data_type_methods
    : value_method
    | query_method
    | exist_method
    | modify_method
    | nodes_method
    ;

decimal: DECIMAL;
value_method
    : (loc_id | value_id | eventdata | query_method |   l_bracket   subquery    r_bracket    )? dot valueKw   l_bracket   xquery   comma    sqltype   r_bracket
    ;
eventdata: EVENTDATA;
value_call
    :  valueKw   l_bracket   xquery   comma    sqltype   r_bracket
    ;
valueKw: VALUE;
query_method
    : (loc_id | value_id | full_table_name |   l_bracket   subquery    r_bracket     )? dot queryKw   l_bracket   xquery   r_bracket
    ;
loc_id: LOCAL_ID;
value_id: id_;
query_call
    : queryKw   l_bracket   xquery   r_bracket
    ;
queryKw: QUERY;
exist_method
    : (loc_id | value_id |   l_bracket   subquery    r_bracket    )? dot existKw   l_bracket   xquery    r_bracket
    ;

exist_call
    : existKw   l_bracket   xquery    r_bracket
    ;
existKw: EXIST;
modify_method
    : (loc_id | value_id |   l_bracket   subquery    r_bracket    )? dot modifyKw   l_bracket   xml_dml    r_bracket
    ;

modify_call
    : modifyKw   l_bracket   xml_dml    r_bracket
    ;
modifyKw: MODIFY;
//nodes (XQuery) as Table(Column)
nodes_method
    : (loc_id | value_id |   l_bracket   subquery    r_bracket    )? dot nodesKw   l_bracket   xquery   r_bracket asKw full_table_name l_bracket full_column_name r_bracket
    ;

node_call: nodesKw   l_bracket   xquery   r_bracket asKw table_name l_bracket full_column_name r_bracket;
nodesKw: NODES;
asKw: AS;
xquery:  STRING ;
xml_dml: STRING;
sqltype: STRING;
switch_section
    : whenKw expression thenKw expression
    ;
whenKw: WHEN;
thenKw: THEN;
switch_search_condition_section
    : whenKw search_condition thenKw expression
    ;

as_column_alias
    : asKw? column_alias
    ;

as_table_alias
    : asKw? id_ (withKw?   l_bracket   table_hint (  comma?   table_hint)*    r_bracket)?
    ;

table_alias
    : id_ with_table_hints?
    ;

// https://msdn.microsoft.com/en-us/library/ms187373.aspx
with_table_hints
    : withKw?   l_bracket   table_hint (  comma?   table_hint)*    r_bracket
    ;
// https://msdn.microsoft.com/en-us/library/ms187373.aspx
//insert_with_table_hints
//    : WITH   l_bracket   hint+=table_hint (  comma? hint+=table_hint)*    r_bracket
//    ;

// Id runtime check. Id can be (FORCESCAN, HOLDLOCK, NOLOCK, NOWAIT, PAGLOCK, READCOMMITTED,
// READCOMMITTEDLOCK, READPAST, READUNCOMMITTED, REPEATABLEREAD, ROWLOCK, TABLOCK, TABLOCKX
// UPDLOCK, XLOCK)
table_hint
    : noExpand?  tableHintValue tableHintArg?;

tableHintArg: (comma? (l_bracket   index_value (  comma    index_value)*    r_bracket)
                | comma? (equalToSym  index_value)
                              | (equalToSym l_bracket index_value r_bracket)
                              | (  l_bracket   index_value   (l_bracket   indexColumnName  (  comma    indexColumnName)*    r_bracket)       r_bracket    )
                              )  ;
//index_valueWithAssignmentOpr:equalToSym l_bracket index_value r_bracket;
////indexValueList : index_value (  comma    index_value)*;
//bracktedIndexValueList: l_bracket   index_value (  comma    index_value)*    r_bracket;
//indexColumnNameList: l_bracket   indexColumnName  (  comma    indexColumnName)*    r_bracket ;
indexColumnName:   ID;
noExpand: NOEXPAND;
tableHintValue: (INDEX ) | FORCESEEK | SERIALIZABLE | SNAPSHOT | SPATIAL_WINDOW_MAX_CELLS | HOLDLOCK |ID;
index_value
    : id_ | DECIMAL
    ;
bracktedIndex_valueWithAssignmentOpr: equalToSym  index_value ;
column_alias_list
    :   l_bracket   column_alias (  comma   column_alias)*    r_bracket
    ;

column_alias
    : id_
    | STRING
    ;

table_value_constructor
    : valuesKw   l_bracket  ( expression (  comma   expression)*)    r_bracket     (  comma      l_bracket   ( expression (  comma   expression)*)    r_bracket    )*
    ;
valuesKw: VALUES;
expression_list
    : expression (  comma   expression)*
    ;

// https://msdn.microsoft.com/en-us/library/ms189798.aspx
ranking_windowed_function:
    rankFunction | denseRankFunction | rowNumberFunction | ntileFunction;
//    : (RANK | DENSE_RANK | ROW_NUMBER)   l_bracket      r_bracket     over_clause
//    | NTILE   l_bracket   expression    r_bracket     over_clause
//    ;
rankFunction:       rankKeyWord l_bracket r_bracket over_clause;
denseRankFunction:  denseKeyWord l_bracket r_bracket over_clause;
rowNumberFunction:  rowNumberKeyWord l_bracket r_bracket over_clause;
ntileFunction:      ntileKeyWord l_bracket expression r_bracket;
rankKeyWord: RANK;
denseKeyWord: DENSE_RANK;
rowNumberKeyWord: ROW_NUMBER;
ntileKeyWord: NTILE;
// https://msdn.microsoft.com/en-us/library/ms173454.aspx
aggregate_windowed_function
    : aggregrateFunction
    | countFunction
    | checksumAggrFunction
    | groupingFunction
    | groupingIdFunction
    ;
agg_func:  (AVG | MAX | MIN | SUM | STDEV | STDEVP | VAR | VARP);
checksumAggrFunction: checksumAggrKeyWord   l_bracket   all_distinct_expression    r_bracket;
aggregrateFunction:  agg_func l_bracket   all_distinct_expression    r_bracket     over_clause?;
countFunction:  cnt  l_bracket   (   asterikSymbol   | all_distinct_expression)    r_bracket     over_clause?;
cnt:            (COUNT | COUNT_BIG);
groupingFunction: groupingKeyWord   l_bracket   expression    r_bracket;
groupingIdFunction:  groupingIdKeyWord   l_bracket   expression_list    r_bracket;
checksumAggrKeyWord: CHECKSUM_AGG;
groupingKeyWord: GROUPING;
groupingIdKeyWord: GROUPING_ID;
// https://docs.microsoft.com/en-us/sql/t-sql/functions/analytic-functions-transact-sql
analytic_windowed_function
    : firstLastValueFunction
    | lagLeadFunction
    | cumeDistPercentRankFunction
    | percentileFunction    ;
firstLastValueFunction: firstLastValueFunctionName   l_bracket   expression    r_bracket     over_clause;
firstLastValueFunctionName: (FIRST_VALUE | LAST_VALUE);
lagLeadFunction: lagLeadFunctionName   l_bracket   expression  (  comma    expression (  comma    expression)? )?    r_bracket     over_clause;
lagLeadFunctionName:  (LAG | LEAD);
all_distinct_expression
    : allDistinctExpressionType? expression
    ;
allDistinctExpressionType: (ALL | DISTINCT);
cumeDistPercentRankFunction: cumeDistPercentRankFunctionName   l_bracket      r_bracket     overKw   l_bracket   (partitionKw byKw expression_list)? order_by_clause    r_bracket;
cumeDistPercentRankFunctionName: (CUME_DIST | PERCENT_RANK);
percentileFunction:  percentileFunctionName   l_bracket   expression    r_bracket     withinkw groupKw   l_bracket   orderKw byKw order_by_expression    r_bracket     overKw   l_bracket   (partitionKw byKw expression_list)?    r_bracket;
percentileFunctionName: (PERCENTILE_CONT | PERCENTILE_DISC);
overKw: OVER;
withinkw: WITHIN;
partitionKw: PARTITION;
orderKw: ORDER;
// https://msdn.microsoft.com/en-us/library/ms189461.aspx
over_clause
    : overKw   l_bracket   (partitionKw byKw expression_list)? order_by_clause? row_or_range_clause?    r_bracket
    ;

row_or_range_clause
    : rowRangeClauseType window_frame_extent
    ;
rowRangeClauseType: (ROWS | RANGE);
window_frame_extent
    : window_frame_preceding
    | betweenKw window_frame_bound_between andKw window_frame_bound_and
    ;
betweenKw: BETWEEN;
andKw: AND;
window_frame_bound_between: window_frame_bound;
window_frame_bound_and: window_frame_bound;
window_frame_bound
    : window_frame_preceding
    | window_frame_following
    ;

window_frame_preceding
    : UNBOUNDED PRECEDING
    | DECIMAL PRECEDING
    | CURRENT ROW
    ;

window_frame_following
    : UNBOUNDED FOLLOWING
    | DECIMAL FOLLOWING
    ;

//create_database_option
//    : FILESTREAM ( database_filestream_option (  comma    database_filestream_option)* )
//    | DEFAULT_LANGUAGE EQUAL ( id_ | STRING )
//    | DEFAULT_FULLTEXT_LANGUAGE EQUAL ( id_ | STRING )
//    | NESTED_TRIGGERS EQUAL ( OFF | ON )
//    | TRANSFORM_NOISE_WORDS EQUAL ( OFF | ON )
//    | TWO_DIGIT_YEAR_CUTOFF EQUAL DECIMAL
//    | DB_CHAINING ( OFF | ON )
//    | TRUSTWORTHY ( OFF | ON )
//    ;
//
//database_filestream_option
//    : LR_BRACKET
//     (
//         ( NON_TRANSACTED_ACCESS EQUAL ( OFF | READ_ONLY | FULL ) )
//         |
//         ( DIRECTORY_NAME EQUAL STRING )
//     )
//     RR_BRACKET
//    ;
//
//database_file_spec
//    : file_group | file_spec
//    ;
//
//file_group
//    : FILEGROUP id_
//     ( CONTAINS FILESTREAM )?
//     ( DEFAULT )?
//     ( CONTAINS MEMORY_OPTIMIZED_DATA )?
//     file_spec (   comma    file_spec )*
//    ;
//file_spec
//    : LR_BRACKET
//      NAME EQUAL ( id_ | STRING )   comma?
//      FILENAME EQUAL file = STRING   comma?
//      ( SIZE EQUAL file_size   comma? )?
//      ( MAXSIZE EQUAL (file_size | UNLIMITED )  comma? )?
//      ( FILEGROWTH EQUAL file_size   comma? )?
//      RR_BRACKET
//    ;
//
//
//// Primitive.
//entity_name
//    : (server=id_ '.' database=id_ '.'  schema=id_   '.'
//    |                database=id_ '.' (schema=id_)? '.'
//    |                                 schema=id_   '.')? table=id_
//    ;
//
//
//entity_name_for_azure_dw
//    : schema=id_
//    | schema=id_ '.' object_name=id_
//    ;
//
//entity_name_for_parallel_dw
//    : schema_database=id_
//    | schema=id_ '.' object_name=id_
//    ;

full_table_name
    : (linkedServerName dot dot schemaName   dot
    |                       serverName    dot databaseName dot schemaName   dot
    |                                         databaseName dot (schemaName)? dot
    |                                                          schemaName    dot)? tablename
    ;

table_name
    : (databaseName dot (schemaName)? dot | schemaName dot)? tablename
    | (databaseName dot (schemaName)? dot | schemaName dot)? blocking_hierarchy
    ;
 dot: '.';
blocking_hierarchy  :  BLOCKING_HIERARCHY;
databaseName:  id_;
schemaName: id_;
tablename: id_;
simple_name
    : (schemaName'.')? name
    ;
name: id_;
func_proc_name_schema
    : ((schemaName) '.')? procedureName
    ;

func_proc_name_database_schema
    : databaseName? '.' schemaName? '.' procedureName
    | func_proc_name_schema
    ;

func_proc_name_server_database_schema
    :(((serverName '.')? databaseName '.' )? schemaName '.')?  procedureName
//    | func_proc_name_database_schema
    ;
procedureName:   id_;

        //Build-ins:

//ddl_object
//    : full_table_name
//    | LOCAL_ID
//    ;

full_column_name
    : columnType '.' columnName
    | serverName? '.' schemaName? '.' tablename? '.' columnName
    | schemaName? '.' tablename? '.' columnName
    | tablename? '.' columnName
    | columnName
    ;
linkedServerName: id_;
columnName: id_;
serverName: id_;
columnType:  (DELETED | INSERTED);
//column_name_list_with_order
//    : id_ (ASC | DESC)? (  comma    id_ (ASC | DESC)?)*
//    ;

//For some reason, sql server allows any number of prefixes:  Here, h is the column: a.b.c.d.e.f.g.h
//insert_column_name_list
//    : col+=insert_column_id (  comma    col+=insert_column_id)*
//    ;p
//
//insert_column_id
//    : (ignore+=id_? '.' )* id_
//    ;
//
column_name_list
    : id_ (  comma    id_)*
    ;
//
//cursor_name
//    : id_
//    | LOCAL_ID
//    ;
//
//on_off
//    : ON
//    | OFF
//    ;
//
//clustered
//    : CLUSTERED
//    | NONCLUSTERED
//    ;
//
null_notnull
    : NOT? NULL_
    ;
//
//null_or_default
//    :(null_notnull | DEFAULT constant_expression (COLLATE id_)? (WITH VALUES)?)
//    ;

scalar_function_name
    : func_proc_name_server_database_schema
    |normalScalarFunctionName;


normalScalarFunctionName: RIGHT
                              | LEFT
                              | BINARY_CHECKSUM
                              | CHECKSUM
                              ;

//begin_conversation_timer
//    : BEGIN CONVERSATION TIMER   l_bracket   LOCAL_ID    r_bracket     TIMEOUT '=' time ';'?
//    ;
//
//begin_conversation_dialog
//    : BEGIN DIALOG (CONVERSATION)? dialog_handle=LOCAL_ID
//      FROM SERVICE initiator_service_name=service_name
//      TO SERVICE target_service_name=service_name (  comma    service_broker_guid=STRING)?
//      ON CONTRACT contract_name
//      (WITH
//        ((RELATED_CONVERSATION | RELATED_CONVERSATION_GROUP) '=' LOCAL_ID   comma?)?
//        (LIFETIME '=' (DECIMAL | LOCAL_ID)   comma?)?
//        (ENCRYPTION '=' (ON | OFF))? )?
//      ';'?
//    ;
//
//contract_name
//    : (id_ | expression)
//    ;
//
//service_name
//    : (id_ | expression)
//    ;
//
//end_conversation
//    : END CONVERSATION conversation_handle=LOCAL_ID ';'?
//      (WITH (ERROR '=' faliure_code=(LOCAL_ID | STRING) DESCRIPTION '=' failure_text=(LOCAL_ID | STRING))? CLEANUP? )?
//    ;
//
//waitfor_conversation
//    : WAITFOR?   l_bracket   get_conversation    r_bracket     (  comma? TIMEOUT timeout=time)? ';'?
//    ;
//
//get_conversation
//    :GET CONVERSATION GROUP conversation_group_id=(STRING | LOCAL_ID) FROM queue=queue_id ';'?
//    ;
//
//queue_id
//    : (database_name=id_ '.' schema_name=id_ '.' name)
//    | id_
//    ;
//
//send_conversation
//    : SEND ON CONVERSATION conversation_handle=(STRING | LOCAL_ID)
//      MESSAGE TYPE message_type_name=expression
//      (  l_bracket   message_body_expression=(STRING | LOCAL_ID)    r_bracket     )?
//      ';'?
//    ;

// https://msdn.microsoft.com/en-us/library/ms187752.aspx
// TODO: implement runtime check or add new tokens.

data_type
    : scaled   (l_bracket   (maxKw | scale)   r_bracket)
    | ext_type   l_bracket   scale  comma    prec    r_bracket
    | ext_type   l_bracket   scale   r_bracket
    | ext_type identityKw (  l_bracket   seed  comma    inc    r_bracket    )?
    | double_prec
    | unscaled_type
    ;
unscaled_type: id_;
ext_type: id_;
scaled : (VARCHAR | NVARCHAR | BINARY_KEYWORD | VARBINARY_KEYWORD |NUMERIC);
maxKw: MAX;
scale: DECIMAL;
prec: DECIMAL;
identityKw: IDENTITY;
seed: DECIMAL ;
inc:DECIMAL;
double_prec: DOUBLE PRECISION?;
//default_value
//    : NULL_
//    | DEFAULT
//    | constant
//    ;

// https://msdn.microsoft.com/en-us/library/ms179899.aspx
constant
    : DOTSYM
     |STRING // string, datetime or uniqueidentifier
    | BINARY
    | sign? DECIMAL
    | sign? (REAL | FLOAT)  // float or decimal
    | sign? dollar='$' (DECIMAL | FLOAT)       // money
     ;

sign
    : '+'
    | '-'
    ;

keyword
    : ABSOLUTE
    |DEFINITION
    |SETTINGS
    | ACCENT_SENSITIVITY
    | ACTION
    | ACTIVATION
    | ACTIVE
    | ADD
    | ADDRESS
    | AES_128
    | AES_192
    | AES_256
    | AFFINITY
    | AFTER
    | AGGREGATE
    | ALGORITHM
    | ALLOW_ENCRYPTED_VALUE_MODIFICATIONS
    | ALLOW_SNAPSHOT_ISOLATION
    | ALLOWED
    |VERSION
    | ANSI_NULL_DEFAULT
    | ANSI_NULLS
    | ANSI_PADDING
    | ANSI_WARNINGS
    | APPLICATION_LOG
    | APPLY
    | ARITHABORT
    | ASSEMBLY
    | AT_KEYWORD
    | AUDIT
    | AUDIT_GUID
    | AUTO
    | AUTO_CLEANUP
    | AUTO_CLOSE
    | AUTO_CREATE_STATISTICS
    | AUTO_SHRINK
    | AUTO_UPDATE_STATISTICS
    | AUTO_UPDATE_STATISTICS_ASYNC
    | AVAILABILITY
    | AVG
    | BACKUP_PRIORITY
    | BEGIN_DIALOG
    | BIGINT
    | BINARY_BASE64
    | BINARY_CHECKSUM
    | BINDING
    | BLOB_STORAGE
    | BROKER
    | BROKER_INSTANCE
    | BULK_LOGGED
    | CALLER
    | CAP_CPU_PERCENT
    | CAST
    | CATALOG
    | CATCH
    | CHANGE_RETENTION
    | CHANGE_TRACKING
    | CHECKSUM
    | CHECKSUM_AGG
    | CLEANUP
    | COLLECTION
    | COLUMN_MASTER_KEY
    | COMMITTED
    | COMPATIBILITY_LEVEL
    | CONCAT
    | CONCAT_NULL_YIELDS_NULL
    | CONTENT
    | CONTROL
    | COOKIE
    | COUNT
    | COUNT_BIG
    | COUNTER
    | CPU
    | CREATE_NEW
    | CREATION_DISPOSITION
    | CREDENTIAL
    | CRYPTOGRAPHIC
    | CURSOR_CLOSE_ON_COMMIT
    | CURSOR_DEFAULT
    | DATA
    | DATE_CORRELATION_OPTIMIZATION
    | DATEADD
    | DATEDIFF
    | DATENAME
    | DATEPART
    | DAYS
    | DB_CHAINING
    | DB_FAILOVER
    | DECRYPTION
    | DEFAULT_DOUBLE_QUOTE
    | DEFAULT_FULLTEXT_LANGUAGE
    | DEFAULT_LANGUAGE
    | DELAY
    | DELAYED_DURABILITY
    | DELETED
    | DENSE_RANK
    | DEPENDENTS
    | DES
    | DESCRIPTION
    | DESX
    | DHCP
    | DIALOG
    | DIRECTORY_NAME
    | DISABLE
    | DISABLE_BROKER
    | DISABLED
    | DISK_DRIVE
    | DOCUMENT
    | DYNAMIC
    | ELEMENTS
    | EMERGENCY
    | EMPTY
    | ENABLE
    | ENABLE_BROKER
    | ENCRYPTED_VALUE
    | ENCRYPTION
    | ENDPOINT_URL
    | ERROR_BROKER_CONVERSATIONS
    | EXCLUSIVE
    | EXECUTABLE
    | EXIST
    | EXPAND
    | EXPIRY_DATE
    | EXPLICIT
    | FAIL_OPERATION
    | FAILOVER_MODE
    | FAILURE
    | FAILURE_CONDITION_LEVEL
    | FAST
    | FAST_FORWARD
    | FILEGROUP
    | FILEGROWTH
    | FILEPATH
    | FILESTREAM
    | FILLFACTOR
    | FILTER
    | FIRST
    | FIRST_VALUE
    | FOLLOWING
    | FORCE
    | FORCE_FAILOVER_ALLOW_DATA_LOSS
    | FORCED
    | FORMAT
    | FORWARD_ONLY
    | FULLSCAN
    | FULLTEXT
    | GB
    | GETDATE
    | GETUTCDATE
    | GLOBAL
    | GO
    | GO_BATCH
    | GROUP_MAX_REQUESTS
    | GROUPING
    | GROUPING_ID
    | HADR
    | HASH
    | HEALTH_CHECK_TIMEOUT
    | HIGH
    | HONOR_BROKER_PRIORITY
    | HOURS
    | IDENTITY_VALUE
    | IGNORE_NONCLUSTERED_COLUMNSTORE_INDEX
    | IMMEDIATE
    | IMPERSONATE
    | IMPORTANCE
    | INCLUDE_NULL_VALUES
    | INCREMENTAL
    | INITIATOR
    | INPUT
    | INSENSITIVE
    | INSERTED
    | INT
    | IP
    | ISOLATION
    | JOB
    | JSON
    | KB
    | KEEP
    | KEEPFIXED
    | KEY_SOURCE
    | KEYS
    | KEYSET
    | LAG
    | LAST
    | LAST_VALUE
    | LEAD
    | LEVEL
    | LIST
    | LISTENER
    | LISTENER_URL
    | LOB_COMPACTION
    | LOCAL
    | LOCATION
    | LOCK
    | LOCK_ESCALATION
    | LOGIN
    | LOOP
    | LOW
    | MANUAL
    | MARK
    | MATERIALIZED
    | MAX
    | MAX_CPU_PERCENT
    | MAX_DOP
    | MAX_FILES
    | MAX_IOPS_PER_VOLUME
    | MAX_MEMORY_PERCENT
    | MAX_PROCESSES
    | MAX_QUEUE_READERS
    | MAX_ROLLOVER_FILES
    | MAXDOP
    | MAXRECURSION
    | MAXSIZE
    | MB
    | MEDIUM
    | MEMORY_OPTIMIZED_DATA
    | MESSAGE
    | MIN
    | MIN_ACTIVE_ROWVERSION
    | MIN_CPU_PERCENT
    | MIN_IOPS_PER_VOLUME
    | MIN_MEMORY_PERCENT
    | MINUTES
    | MIRROR_ADDRESS
    | MIXED_PAGE_ALLOCATION
    | MODE
    | MODIFY
    | MOVE
    | MULTI_USER
    | NAME
    | NESTED_TRIGGERS
    | NEW_ACCOUNT
    | NEW_BROKER
    | NEW_PASSWORD
    | NEXT
    | NO
    | NO_TRUNCATE
    | NO_WAIT
    | NOCOUNT
    | NODES
    | NOEXPAND
    | NON_TRANSACTED_ACCESS
    | NORECOMPUTE
    | NORECOVERY
    | NOWAIT
    | NTILE
    | NUMANODE
    | NUMBER
    | NUMERIC
    | NUMERIC_ROUNDABORT
    | NOTIFICATIONS
    | NOTIFICATION
    | OBJECT
    | OFFLINE
    | OFFSET
    | OLD_ACCOUNT
    | ONLINE
    | ONLY
    | OPEN_EXISTING
    | OPENJSON
    | OPTIMISTIC
    | OPTIMIZE
    | OUT
    | OUTPUT
    | OVERRIDE
    | OWNER
    | PAGE_VERIFY
    | PARAMETERIZATION
    | PARTITION
    | PARTITIONS
    | PARTNER
    | PATH
    | POISON_MESSAGE_HANDLING
    | POOL
    | PORT
    | PRECEDING
    | PRIMARY_ROLE
    | PRIOR
    | PRIORITY
    | PRIORITY_LEVEL
    | PRIVATE
    | PRIVATE_KEY
    | PRIVILEGES
    | PROCEDURE_NAME
    | PROPERTY
    | PROVIDER
    | PROVIDER_KEY_NAME
    | QUERY
    | QUEUE
    | QUEUE_DELAY
    | QUOTED_IDENTIFIER
    | RANGE
    | RANK
    | RC2
    | RC4
    | RC4_128
    | READ_COMMITTED_SNAPSHOT
    | READ_ONLY
    | READ_ONLY_ROUTING_LIST
    | READ_WRITE
    | READONLY
    | REBUILD
    | RECEIVE
    | RECOMPILE
    | RECOVERY
    | RECURSIVE_TRIGGERS
    | RELATIVE
    | REMOTE
    | REMOTE_SERVICE_NAME
    | REMOVE
    | REORGANIZE
    | REPEATABLE
    | REPLICA
    | REQUEST_MAX_CPU_TIME_SEC
    | REQUEST_MAX_MEMORY_GRANT_PERCENT
    | REQUEST_MEMORY_GRANT_TIMEOUT_SEC
    | REQUIRED_SYNCHRONIZED_SECONDARIES_TO_COMMIT
    | RESERVE_DISK_SPACE
    | RESOURCE
    | RESOURCE_MANAGER_LOCATION
    | RESTRICTED_USER
    | RETENTION
    | ROBUST
    | ROOT
    | ROUTE
    | ROW
    | ROW_NUMBER
    | ROWGUID
    | ROWS
    | SAMPLE
    | SCHEMABINDING
    | SCOPED
    | SCROLL
    | SCROLL_LOCKS
    | SEARCH
    | SECONDARY
    | SECONDARY_ONLY
    | SECONDARY_ROLE
    | SECONDS
    | SECRET
    | SECURITY
    | SECURITY_LOG
    | SEEDING_MODE
    | SELF
    | SEMI_SENSITIVE
    | SEND
    | SENT
    | SEQUENCE
    | SERIALIZABLE
    | SESSION_TIMEOUT
    | SETERROR
    | SHARE
    | SHOWPLAN
    | SIGNATURE
    | SIMPLE
    | SINGLE_USER
    | SIZE
    | SMALLINT
    | SNAPSHOT
    | SPATIAL_WINDOW_MAX_CELLS
    | STANDBY
    | START_DATE
    | STATIC
    | STATS_STREAM
    | STATUS
    | STATUSONLY
    | STDEV
    | STDEVP
    | STOPLIST
    | STRING_AGG
    | STUFF
    | SUBJECT
    | SUBSCRIPTION
    | SUM
    | SUSPEND
    | SYMMETRIC
    | SYNCHRONOUS_COMMIT
    | SYNONYM
    | SYSTEM
    |SQL
    | TAKE
    | TARGET_RECOVERY_TIME
    | TB
    | TEXTIMAGE_ON
    | THROW
    | TIES
    | TIME
    | TIMEOUT
    | TIMER
    | TINYINT
    | TORN_PAGE_DETECTION
    | TRANSFORM_NOISE_WORDS
    | TRIPLE_DES
    | TRIPLE_DES_3KEY
    | TRUSTWORTHY
    | TRY
    | TSQL
    | TWO_DIGIT_YEAR_CUTOFF
    | TYPE
    | TYPE_WARNING
    | UNBOUNDED
    | UNCOMMITTED
    | UNKNOWN
    | UNLIMITED
    | UOW
    | USING
    | VALID_XML
    | VALIDATION
    | VALUE
    | VAR
    | VARP
    | VIEW_METADATA
    | VIEWS
    | WAIT
    | WELL_FORMED_XML
    | WITHOUT_ARRAY_WRAPPER
    | WORK
    | WORKLOAD
    | XML
    | XMLDATA
    | XMLNAMESPACES
    | XMLSCHEMA
    | XSINIL
    | ABSENT
    | AES
    | ALLOW_CONNECTIONS
    | ALLOW_MULTIPLE_EVENT_LOSS
    | ALLOW_SINGLE_EVENT_LOSS
    | ANONYMOUS
    | APPEND
    | APPLICATION
    | ASYMMETRIC
    | ASYNCHRONOUS_COMMIT
    | AUTHENTICATION
    | AUTOMATED_BACKUP_PREFERENCE
    | AUTOMATIC
    | AVAILABILITY_MODE
    | BEFORE
    | BLOCK
    | BLOCKSIZE
    | BLOCKING_HIERARCHY
    | BUFFER
    | BUFFERCOUNT
    | CACHE
    | CALLED
    | CERTIFICATE
    | CHANGETABLE
    | CHANGES
    | CHECK_POLICY
    | CHECK_EXPIRATION
    | CLASSIFIER_FUNCTION
    | CLUSTER
    | COMPRESSION
    | CONFIGURATION
    | CONTAINMENT
    | CONTEXT
    | CONTINUE_AFTER_ERROR
    | CONTRACT
    | CONTRACT_NAME
    | CONVERSATION
    | COPY_ONLY
    | CUME_DIST
    | CYCLE
    | DATA_COMPRESSION
    | DATA_SOURCE
    | DATABASE_MIRRORING
    | DEFAULT_DATABASE
    | DEFAULT_SCHEMA
    | DIAGNOSTICS
    | DIFFERENTIAL
    | DISTRIBUTION
    | DTC_SUPPORT
    | ENABLED
    | ENDPOINT
    | ERROR
    | EVENT
    | EVENTDATA
    | EVENT_RETENTION_MODE
    | EXECUTABLE_FILE
    | EXPIREDATE
    | EXTENSION
    | EXTERNAL_ACCESS
    | FAILOVER
    | FAILURECONDITIONLEVEL
    | FAN_IN
    | FILE_SNAPSHOT
    | FILENAME
    | FORCESEEK
    | FORCE_SERVICE_ALLOW_DATA_LOSS
    | GET
    | GOVERNOR
    | HASHED
    | HEALTHCHECKTIMEOUT
    | IIF
    | IO
    | INCLUDE
    | INCREMENT
    | INFINITE
    | INIT
    | INSTEAD
    | ISNULL
    | KERBEROS
    | KEY_PATH
    | KEY_STORE_PROVIDER_NAME
    | LANGUAGE
    | LIBRARY
    | LIFETIME
    | LINUX
    | LISTENER_IP
    | LISTENER_PORT
    | LOCAL_SERVICE_NAME
    | LOG
    | MATCHED
    | MASTER
    | MAX_MEMORY
    | MAXTRANSFER
    | MAXVALUE
    | MAX_DISPATCH_LATENCY
    | MAX_EVENT_SIZE
    | MAX_SIZE
    | MAX_OUTSTANDING_IO_PER_VOLUME
    | MEDIADESCRIPTION
    | MEDIANAME
    | MEMBER
    | MEMORY_PARTITION_MODE
    | MESSAGE_FORWARDING
    | MESSAGE_FORWARD_SIZE
    | MINVALUE
    | MIRROR
    | MUST_CHANGE
    | NOFORMAT
    | NOINIT
    | NONE
    | NOREWIND
    | NOSKIP
    | NOUNLOAD
    | NO_CHECKSUM
    | NO_COMPRESSION
    | NO_EVENT_LOSS
    | NOTIFICATION
    | NTLM
    | OLD_PASSWORD
    | ON_FAILURE
    | PAGE
    | PARAM_NODE
    | PARTIAL
    | PASSWORD
    | PERMISSION_SET
    | PER_CPU
    | PER_DB
    | PER_NODE
    | PERCENTILE_CONT
    | PERCENTILE_DISC
    | PERCENT_RANK
    | PERSISTED
    | PLATFORM
    | POLICY
    | PREDICATE
    | PROCESS
    | PROFILE
    | PYTHON
    | R
    | READ_WRITE_FILEGROUPS
    | REGENERATE
    | RELATED_CONVERSATION
    | RELATED_CONVERSATION_GROUP
    | REPLICATE
    | REQUIRED
    | RESET
    | RESTART
    | RESUME
    | RETAINDAYS
    | RETURNS
    | REWIND
    | ROLE
    | ROUND_ROBIN
    | RSA_512
    | RSA_1024
    | RSA_2048
    | RSA_3072
    | RSA_4096
    | SAFETY
    | SAFE
    | SCHEDULER
    | SCHEME
    | SERVER
    | SERVICE
    | SERVICE_BROKER
    | SERVICE_NAME
    | SESSION
    | SID
    | SKIP_KEYWORD
    | SOFTNUMA
    | SOURCE
    | SPECIFICATION
    | SPLIT
    | SQLDUMPERFLAGS
    | SQLDUMPERPATH
    | SQLDUMPERTIMEOUT
    | STATE
    | STATS
    | START
    | STARTED
    | STARTUP_STATE
    | STOP
    | STOPPED
    | STOP_ON_ERROR
    | SUPPORTED
    | TAPE
    | TARGET
    | TCP
    | TRACK_CAUSALITY
    | TRANSFER
    | TRY_CAST
    | UNCHECKED
    | UNLOCK
    | UNSAFE
    | URL
    | USED
    | VERBOSELOGGING
    | VISIBILITY
    | WINDOWS
    | WITHOUT
    | WITNESS
    | ZONE
    //Build-ins:
    | VARCHAR
    | NVARCHAR
    | BINARY_KEYWORD
    | VARBINARY_KEYWORD
    | PRECISION //For some reason this is possible to use as ID
    ;

// https://msdn.microsoft.com/en-us/library/ms175874.aspx
id_
    : ID
    | DOUBLE_QUOTE_ID
    | SQUARE_BRACKET_ID
    | keyword
    ;

//simple_id
//    : ID
//    ;
//
//id_or_string
//    : id_
//    | STRING
//    ;

// https://msdn.microsoft.com/en-us/library/ms188074.aspx
// Spaces are allowed for comparison operators.
comparison_operator
    : '=' | '>' | '<' | '<' '=' | '>' '=' | '<' '>' | '!' '=' | '!' '>' | '!' '<'
    ;

assignment_operator
    : '+=' | '-=' | '*=' | '/=' | '%=' | '&=' | '^=' | '|='
    ;

//file_size
//    : DECIMAL( KB | MB | GB | TB | '%' )?
//    ;


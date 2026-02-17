%{
#include <stdlib.h>
#include "fb1-5.tab.h"
%}
%%
"+"     { return ADD; }
"-"     { return SUB; }
"*"     { return MUL; }
"/"     { return DIV; }
"|"     { return ABS; }
0[xX][0-9a-fA-F]+ { yylval = (int)strtol(yytext, NULL, 0); return NUMBER; }
[0-9]+  { yylval = atoi(yytext); return NUMBER; }
\n      { return EOL; }
[ \t]+  { /* ignore */ }
.       { /* ignore */ }
%%


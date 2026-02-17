%{
#include <stdio.h>

/* prototipos para clang (C99+) */
int yylex(void);
int yyerror(char *s);
%}

%token NUMBER
%token ADD SUB MUL DIV ABS
%token OP CP
%token EOL
%token POW
%right POW

%%
calclist:
    /* empty */
  | calclist exp EOL { printf("= %d (0x%x)\n", $2, $2); }
  | calclist EOL     { /* línea vacía */ }
  ;

exp:
    factor
  | exp ADD factor { $$ = $1 + $3; }
  | exp SUB factor { $$ = $1 - $3; }
  ;
factor:
    power
  | factor MUL power { $$ = $1 * $3; }
  | factor DIV power { $$ = $1 / $3; }
  ;

power:
    term
  | term POW power {
      int r = 1;
      for (int i = 0; i < $3; i++) r *= $1;
      $$ = r;
    }
  ;

term:
    NUMBER
  | ABS term { $$ = $2 >= 0 ? $2 : -$2; }
  | OP exp CP { $$ = $2; }
  ;

%%
int main(void) { return yyparse(); }

int yyerror(char *s)
{
  fprintf(stderr, "error: %s\n", s);
  return 0;
}


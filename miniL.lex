   /* cs152-miniL phase1 */
   
%{   
   /* write your C code here for definitions of variables and including headers */
%}

   /* some common rules */
DIGIT [0-9]
%%
   /* specific lexer rules in regex */
"+" {printf("PLUS");}
"-" {printf("MINUS");}
"/" {printf("DIV");}
"*" {printf("MULT");}
{DIGIT}+ {printf("NUMBER %s", yytext);}
%%
	/* C functions used in lexer */

int main(int argc, char ** argv)
{
   yylex();
}

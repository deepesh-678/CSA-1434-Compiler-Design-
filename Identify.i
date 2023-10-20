%{
#include <stdio.h>
%}
%%
if|else|(printf|scanf|int|string|char) {printf("%s is a keyword",yytext);}
[0-9]+ {printf("%s is a number",yytext);}
[a-z A-Z]+ {printf("%s is a word",yytext);}
.|\n {ECHO;}
%% 
int main()
{
printf("\n enter the string:");
yylex();
}
int yywrap()
{
return 1;
}

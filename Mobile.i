%{
#include<stdio.h>
%}
%%
[6-9][0-9]{9} {printf("%s,is mobile no",yytext);}
.+ {printf("no is invalid");}
%%
int main()
{
printf("enter the mobile number:");
yylex();
}
int yywrap()
{
return 1;
}

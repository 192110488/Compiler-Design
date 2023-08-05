%{
#include<stdio.h>
int cons=0;
%}
%%
[0-9]+ { cons++; printf("%s is a constant\n", yytext);  }
.\n { }
%%
int yywrap() 
{
}
int main()
{
printf("enter the string:\n");
yylex();
printf("Number of Constants : %d\n", cons);
}

%{
int nmacro, nheader; 
%}
%%
#define { nmacro++; } 
#include { nheader++; } 
.\n { } 
%%
int yywrap() 
{ 
} 
int main() 
{ 
printf("enter the string:\n");
yylex(); 
printf("Number of macros defined = %d\n", nmacro); 
printf("Number of header files included = %d\n", nheader); 
}

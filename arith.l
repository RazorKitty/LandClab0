delim   [\t\r]
ws      {delim}+
digit   [0-9]
number  {digit}+

%%

{ws}    ; /* Do Nothing */
\n      return(NEWLINE);
"+"     return(PLUS);
"*"     return(TIMES);
"-"     return(MINUS);
"/"     return(DIVIDE);
"("     return(BRA);
")"     return(KET);
"^"     return(POWER);
{number}    {
    /* call the libraty function to convert ascii to int */
    /* asign the integer value of the text in yytext to
        the iVal part of the yylVal object */
        yylval.iVal = atoi(yytext);
        return(NUMBER);
}



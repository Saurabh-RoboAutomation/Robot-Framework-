*** Settings ***
library  BuiltIn
*** Variables ***
${var2}  1
${var1}  1
*** Test Cases ***
sub of two number
    sub of number
*** Keywords ***
sub of number
    ${var3} =  evaluate  ${var2} - ${var1}
    log  ${var3}
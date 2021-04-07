*** Settings ***
*** Variables ***
${var2}  6
${var1}  5
*** Test Cases ***
sum of two number
    sum of number
*** Keywords ***
sum of number
    ${var3} =  Evaluate  ${var2} + ${var1}
    log  ${var3}
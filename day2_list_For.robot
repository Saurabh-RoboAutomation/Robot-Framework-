*** Settings ***
library  BuiltIn

*** variables ***
@{list}  sagar  noida  delhi

*** Test Case ***
start a list
    start list
*** Keywords ***
start list
    FOR    ${i}  IN  @{list}
    log  ${I}
    END
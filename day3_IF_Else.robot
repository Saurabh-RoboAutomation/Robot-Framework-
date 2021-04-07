
*** Settings ***


*** Variables ***
${mode}  true
@{city}  Sagar Noida Bhopal bengaluru
@{var}

*** Test Cases ***
test of mode for city
    city mode



*** Keywords ***
city mode

    IF    '${mode}' == 'fail'
    Pass Execution    log  @{city}
    ELSE
    log  mode should be true
    END
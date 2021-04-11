*** setting ***
library  Dialogs
*** variables ***
${d1}  9
${d2}  10

@{list}  sagar  noida  delhi

*** test Cases ***

divide the number

    divide of number
    [Tags]  mytag1


start a list
    start list
    [Tags]  mytag1

gettin data
    get data
    [Tags]  mytag2



*** keywords ***

divide of number
    ${d3} =  Evaluate  ${d1} / ${d2}
    log  ${d3}

start list
    FOR    ${i}  IN  @{list}
    log  ${I}
    END

get data
    ${user} =  get value from user    input your name
    log  hello ${user}
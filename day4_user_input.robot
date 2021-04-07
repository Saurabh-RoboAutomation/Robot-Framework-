*** settings ***
library  collections

library  Dialogs
*** variables ***
${user}
*** Test Cases ***
gettin data
    get data
*** Keyword ***
get data
    ${user} =  get value from user    input your name
    log  hello ${user}
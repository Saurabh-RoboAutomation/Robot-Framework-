*** Settings ***

Library  test

*** Variables ***
${d}  ${2}

*** Test Case ***

calling python fucntion
    function of python

*** Keywords ***

function of python
    ${a} =  square_root  ${d}
    log  ${a}
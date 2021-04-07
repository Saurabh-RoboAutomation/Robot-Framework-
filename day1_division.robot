*** setting ***
*** variables ***
${d1}  9
${d2}  10
*** test Cases ***

divide the number
    divide of number
*** keywords ***
divide of number
    ${d3} =  Evaluate  ${d1} / ${d2}
    log  ${d3}
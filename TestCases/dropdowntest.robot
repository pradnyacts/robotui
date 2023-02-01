*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://the-internet.herokuapp.com/dropdown
${BROWSER}        Chrome

*** Test Cases ***
dropdown test
    Open Browser     ${LOGIN URL}    ${BROWSER}
    maximize browser window
    # set selenium speed    2seconds
    select from list by index    id:dropdown  1
    sleep       1
    List Selection Should Be  id:dropdown  Option 1
    sleep       1
    Select From List By Value  id:dropdown  2
    sleep       1
    List Selection Should Be  id:dropdown  Option 2
    sleep       1
    Close Browser



*** Keywords ***

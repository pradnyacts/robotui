*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://softwaretestingo.blogspot.com/2020/08/checkbox-radio-button.html
${BROWSER}        Chrome

*** Test Cases ***
Testing Radio button
    Open Browser     ${LOGIN URL}    ${BROWSER}
    maximize browser window
    set selenium speed    2seconds
    # select radi button
    select radio button    lang    PYTHON
    # select checkbox
    select checkbox        (//input[@id='code'])[1]
    select checkbox         //input[@id='sing']
    unselect checkbox       (//input[@id='code'])[1]



*** Keywords ***

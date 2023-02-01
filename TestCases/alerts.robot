*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://testautomationpractice.blogspot.com/
${BROWSER}        Chrome

*** Test Cases ***
alerttest
    Open Browser     ${LOGIN URL}    ${BROWSER}
    maximize browser window
    click element    xpath://button[@onclick='myFunction()']
    sleep   3
    #handle alert    accept
    #handle alert    dismiss
    #handle alert    LEAVE             # to leave the alert window open
    alert should be present     Press a button!
    #alert should not be present     Press a button!


*** Keywords ***

*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
#${LOGIN URL}      https://demowebshop.tricentis.com/register
${BROWSER}        Chrome

*** Test Cases ***
closeall test
    Open Browser     https://demowebshop.tricentis.com/register    ${BROWSER}
    maximize browser window
    open browser    https://www.google.com/     ${BROWSER}
    maximize browser window

    #close browser
    close all browsers



*** Keywords ***

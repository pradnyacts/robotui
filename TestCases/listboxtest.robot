*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${BROWSER}        Chrome

*** Test Cases ***
dropdown test
    Open Browser     ${LOGIN URL}    ${BROWSER}
    maximize browser window
    # set selenium speed    2seconds
    select from list by label    selenium_commands     Switch Commands
    sleep   1
    select from list by label    selenium_commands     WebElement Commands
    sleep    1
    unselect from list by label    selenium_commands     Switch Commands
    sleep    1
    Close Browser



*** Keywords ***

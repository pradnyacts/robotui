*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://testautomationpractice.blogspot.com/
${BROWSER}        Chrome

*** Test Cases ***
htmltable
    Open Browser     ${LOGIN URL}    ${BROWSER}
    maximize browser window
    ${rows}=    get element count    xpath://table[@name='BookTable']/tbody/tr
    ${col}=     get element count    xpath://table[@name='BookTable']/tbody/tr[1]/th
    log to console    ${rows}
    log to console    ${col}
    ${data}=     get text    xpath://table[@name='BookTable']/tbody/tr[5]/td[1]
    log to console    ${data}
    table column should contain    xpath://th[normalize-space()='Author']   2      Author
    table row should contain        xpath://td[normalize-space()='Learn JS']    4   Learn JS
    table cell should contain        xpath://table[@name='BookTable']     5       2       Mukesh
    table header should contain    xpath://table[@name='BookTable']      BookName

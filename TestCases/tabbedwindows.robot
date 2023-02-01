*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://demo.automationtesting.in/Windows.html
${BROWSER}        Chrome

*** Test Cases ***
Tabbedwindow
    Open Browser     ${LOGIN URL}    ${BROWSER}
    maximize browser window
    click element    xpath://a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']
    sleep       1
    switch window    title=Selenium
    click element    xpath://span[normalize-space()='Downloads']

    sleep       1
    close all browsers
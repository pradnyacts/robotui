*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://www.selenium.dev/selenium/docs/api/java/index.html?org/openqa/selenium/package-summary.html
${BROWSER}        Chrome

*** Test Cases ***
Framestest
    Open Browser     ${LOGIN URL}    ${BROWSER}
    maximize browser window
    select frame    packageListFrame
    click link      org.openqa.selenium
    unselect frame
    sleep     1
    select frame        packageFrame
    click link          WebDriver
    unselect frame

    sleep      1
    select frame        classFrame
    click link          Help
    unselect frame

    close browser



*** Keywords ***

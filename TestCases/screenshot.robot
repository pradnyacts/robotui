*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}       https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}        Chrome

*** Test Cases ***
screenshottest
    Open Browser     ${LOGIN URL}    ${BROWSER}
    maximize browser window
    sleep       2

#    capture element screenshot    xpath://img[@alt='company-branding']      C:/Users/pradn/PycharmProjects/robotui/Driversscreenshot/sc1.png
#    capture page screenshot         C:/Users/pradn/PycharmProjects/robotui/Driversscreenshot/sc2.png
    capture element screenshot    xpath://img[@alt='company-branding']      sc1.png
    capture page screenshot        sc2.png

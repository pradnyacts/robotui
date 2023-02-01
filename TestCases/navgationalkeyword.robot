*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
#${LOGIN URL}      https://testautomationpractice.blogspot.com/
${BROWSER}        Chrome

*** Test Cases ***
navigational keywords
    Open Browser     http://www.google.com    ${BROWSER}
    maximize browser window
    ${loc}=     get location
    log to console    ${loc}
    go to   https://www.bing.com
    ${loc}=     get location
    log to console    ${loc}
    go back
    ${loc}=     get location
    log to console    ${loc}


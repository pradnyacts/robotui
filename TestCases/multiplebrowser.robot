*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
#${LOGIN URL}      https://google.com
${BROWSER}        Chrome

*** Test Cases ***
Multiplebrowser
    Open Browser     https://www.google.com    ${BROWSER}
    maximize browser window

    sleep       1
    Open Browser     https://www.bing.com    ${BROWSER}
    maximize browser window

    switch browser    1
    ${title1}=     get title
    log to console      ${title1}
    switch browser    2
    ${title2}=     get title
    log to console      ${title2}

    sleep       1
    close all browsers
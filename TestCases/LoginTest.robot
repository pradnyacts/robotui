*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/LoginKeyword.robot

*** Variables ***
${Browser}          chrome
${SiteUrl}          https://demo.guru99.com/test/newtours/
${user}             tutorial
${pwd}              tutorial

*** Test Cases ***
Logintest
    open my browser    ${SiteUrl}   ${Browser}
    sleep    1
    delete all cookies
    Enter Username      ${user}
    Enter Password      ${pwd}
    Click Signin
    sleep     3
    Verify sucessful login
    close my browser

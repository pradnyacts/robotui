*** Settings ***
Library           SeleniumLibrary
Variables       ../PageObjects/locators.py

*** Keywords ***
open my browser
    [Arguments]    ${SiteUrl}    ${Browser}
    Open Browser     ${SiteUrl}    ${Browser}
    maximize browser window
Enter Username
    [Arguments]    ${username}
    input text      ${txt_loginusername}    ${username}
Enter Password
    [Arguments]     ${password}
    input text      ${txt_loginpassword}        ${password}
Click Signin
    click button    ${btn_sigin}

Verify sucessful login
    title should be    Login: Mercury Tours
close my browser
    close all browsers

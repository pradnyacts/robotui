*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${url}      https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F
${browser}        Chrome


*** Keywords ***
open my browser

    Open Browser     ${url}      ${browser}
    maximize browser window
Close browsers
    close all browsers
open login page
    go to    ${url}
Inputusername
    [Arguments]    ${username}
    input text    id:Email      ${username}
inputpassword
    [Arguments]    ${password}
    input text    id:Password      ${password}
clicklogin
    click element       xpath://button[@type='submit']
clicklogout
    click link    Logout
error message should be visible
    page should contain    Login was unsuccessful
dashboard page should be visible
    page should contain    Dashboard



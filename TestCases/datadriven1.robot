*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          ../Resources/login_resources.robot
Suite Setup    Open my browser
Suite Teardown    Close browsers
Test Template    Invalid Login
*** Test Cases ***              username            password
right user empty password   admin@yourstore.com     ${EMPTY}}

right user wrong password   admin@yourstore.com     xyx

wrong user and right password    adm@yourstore.com     admin

wrong user and empty password    admin@yourstore.com    ${EMPTY}

wrong user and wrong password     adm@yourstore.com     xyx
*** Keywords ***
Invalid Login
    [Arguments]    ${username}  ${password}
    Inputusername    ${username}
    inputpassword    ${password}
    clicklogin
    error message should be visible

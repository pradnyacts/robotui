*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource          ../Resources/login_resources.robot
Library     DataDriver      ../TestData/Data1.xlsx   sheet_name=Sheet1
Suite Setup    Open my browser
Suite Teardown    Close browsers
Test Template    Invalid Login

*** Test Cases ***
Logintestwithexcel   using   ${username}   and   ${password}




*** Keywords ***
Invalid Login
    [Arguments]    ${username}  ${password}
    Inputusername    ${username}
    inputpassword    ${password}
    clicklogin
    error message should be visible
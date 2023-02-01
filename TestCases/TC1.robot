*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://demo.nopcommerce.com/
${BROWSER}        Chrome

*** Test Cases ***
Valid Login
    Open Browser     ${LOGIN URL}    ${BROWSER}
    loginToApplication
    close browser

*** Keywords ***
loginToApplication
    Click Link       xpath://a[@class='ico-login']
    input text       id:Email                   pavanoltraining@gmail.com
    input text       id:Password                Test@123
    click element    xpath://a[@class='ico-login']
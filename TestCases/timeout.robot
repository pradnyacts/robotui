*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://demowebshop.tricentis.com/register
${BROWSER}        Chrome

*** Test Cases ***
timeout test

    Open Browser     ${LOGIN URL}    ${BROWSER}
    maximize browser window
    ${time}=        get selenium timeout
    log to console        ${time}
    set selenium timeout        10 seconds          # set the default timeout to 10 second
    wait until page contains        Rgister         # default time out is 5 seconds

    select radio button     Gender      M
    input text      name:FirstName          David
    input text      name:LastName           becker
    input text      name:Email              abc@gmail.com
    input text      name:Password           davidjohn
    input text      name:ConfirmPassword        davidjohn


*** Keywords ***

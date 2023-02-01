*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://demowebshop.tricentis.com/register
${BROWSER}        Chrome

*** Test Cases ***
speed test
    ${speed}=       get selenium speed
    log to console      ${speed}
    Open Browser     ${LOGIN URL}    ${BROWSER}
    maximize browser window
    set selenium speed    1 seconds                     #every statement will execute after 1 seconds
    # sleep    3        wait only once
    select radio button     Gender      M
    input text      name:FirstName          David
    input text      name:LastName           becker
    input text      name:Email              abc@gmail.com
    input text      name:Password           davidjohn
    input text      name:ConfirmPassword        davidjohn
    ${speed}=       get selenium speed
    log to console      ${speed}

*** Keywords ***

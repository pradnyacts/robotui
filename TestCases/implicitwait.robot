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
    ${impl_wait}=   get selenium implicit wait
    log to console       ${impl_wait}

    set selenium implicit wait    10 seconds

    ${impl_wait}=   get selenium implicit wait
    log to console       ${impl_wait}

    select radio button     Gender      M
    input text      name:FirstName          David
    input text      name:LastName           becker
    input text      name:Email              abc@gmail.com
    input text      name:Password           davidjohn
    input text      name:ConfirmPassword        davidjohn


*** Keywords ***

*** Settings ***
Library           SeleniumLibrary


*** Variables ***
${LOGIN URL}      https://demo.nopcommerce.com/
${BROWSER}        Chrome

*** Test Cases ***
Testinginputbox

    Open Browser     ${LOGIN URL}    ${BROWSER}
    maximize browser window
    title should be   nopCommerce demo store
    Click Link       xpath://a[@class='ico-login']
    ${"email_txt}   set variable        id:Email
    element should be visible   ${"email_txt}
    element should be enabled   ${"email_txt}
    input text      ${"email_txt}        pavanoltraining@gmail.com
    sleep  5
    clear element text      ${"email_txt}
    sleep   3
    close browser



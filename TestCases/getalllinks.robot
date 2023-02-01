*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://demo.guru99.com/test/newtours/
${BROWSER}        Chrome

*** Test Cases ***
getalllinks
    Open Browser     ${LOGIN URL}    ${BROWSER}
    maximize browser window
    ${alllinkscount}=     get element count    xpath://a
    log to console    ${alllinkscount}
    @{LinkItems}   create list
    FOR    ${i}    IN RANGE    1    ${alllinkscount}
    ${LinkItems}=       get text    xpath:(//a)[${i}]
    log to console      ${LinkItems}

    END
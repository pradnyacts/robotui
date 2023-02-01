*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Resource        ../Resources/resources.robot

*** Variables ***
${url}      https://demo.guru99.com/test/newtours/
${browser}        Chrome

*** Test Cases ***
argumenttest
    ${Pagetitle}=    launchbrowser   ${url}   ${browser}
    log to console    ${Pagetitle}
    log     ${Pagetitle}
    input text    name:userName     mercury
    input text    name:password     mercury

#*** Keywords ***
#launchbrowser
#    [Arguments]         ${appurl}       ${appbrowser}
#    Open Browser     ${appurl}      ${appbrowser}           #pass the arguments
#    maximize browser window
#    ${title}=       get title
#    [Return]        ${title}                    #return the argumen






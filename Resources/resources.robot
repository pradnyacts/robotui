*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${url}      https://demo.guru99.com/test/newtours/
${browser}        Chrome


*** Keywords ***
launchbrowser
    [Arguments]         ${appurl}       ${appbrowser}
    Open Browser     ${appurl}      ${appbrowser}           #pass the arguments
    maximize browser window
    ${title}=       get title
    [Return]        ${title}                    #return the argumen






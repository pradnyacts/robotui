*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/RegistrationKeywords.robot

*** Variables ***
${Browser}          chrome
${SiteUrl}          https://demo.guru99.com/test/newtours/
${user}             tutorial
${pwd}              tutorial

*** Test Cases ***
Registrationtest

    open my browser    ${SiteUrl}   ${Browser}
    sleep    3
    Click Register Link
    sleep   3
    Enter Firstname     David
    Enter Lastname      John
    Enter Phone         458555666
    Enter Email         a@abc.com
    Enter Address1      12 main
#    Enter Address2      123
    Enter City          sunnyvale
    Enter State         CA
    Enter postal code   94089
    Select Country      UNITED STATES
    Enter Username      abc@ghm.com
    sleep    2
    Enter password      Test@123
    sleep    3
    Enter Confirm password      Test@123
    Click Submit
    verify successful registration
    close my browser

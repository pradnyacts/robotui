*** Settings ***
Library           SeleniumLibrary
Variables       ../PageObjects/locators.py

*** Keywords ***
open my browser
    [Arguments]    ${SiteUrl}    ${Browser}
    Open Browser     ${SiteUrl}    ${Browser}
    maximize browser window
Click Register Link
    click link    ${link_Reg}
Enter Firstname
    [Arguments]    ${firstname}
    input text      ${txt_firstName}    ${firstname}
Enter Lastname
    [Arguments]    ${lastname}
    input text      ${txt_lastName}     ${lastname}
Enter Phone
    [Arguments]    ${phone}
    input text    ${txt_phone}      ${phone}
Enter Email
    [Arguments]    ${email}
    input text    ${txt_email}      ${email}
Enter Address1
    [Arguments]    ${add1}
    input text    ${txt_add1}       ${add1}
#Enter Address2
#    [Arguments]    ${add2}
#    input text    ${txt_add2}       ${add2}
Enter City
    [Arguments]    ${city}
    input text    ${txt_city}   ${city}
Enter State
    [Arguments]     ${state}
    input text    ${txt_state}       ${state}
Enter postal code
    [Arguments]     ${postalcode}
    input text    ${txt_postCode}   ${postalcode}
Select Country
    [Arguments]     ${country}
    select from list by label    ${drp_country}     ${country}
Enter Username
    [Arguments]         ${username}
    input text      ${txt_username}     ${username}
Enter password
     [Arguments]         ${password}
    input text      ${txt_password}}     ${password}
Enter Confirm password
    [Arguments]         ${confp}
    input text    ${txt_confirmpwd}     ${confp}
Click Submit
    click button    ${btn_submit}
verify successful registration
    page should contain     Thank you for registering
close my browser
    close all browsers


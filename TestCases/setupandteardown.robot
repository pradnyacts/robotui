*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary
Suite Setup    log to console   Opening browser
Suite Teardown    log to console    Closing browser
Test Setup    log to console    Login to application
Test Teardown       log to console      Logout from app


*** Variables ***


*** Test Cases ***
TC1 prepaid recharge
    log to console    TC1
TC2 prepaid recharge
    log to console    TC2
TC3 prepaid recharge
    log to console    TC3
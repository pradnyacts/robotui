*** Settings ***


*** Test Cases ***
TC1 User Registration
    [Tags]    sanity
    log to console    TC1 started
    log to console    TC1 over

TC2 Login
    [Tags]    regression
    log to console    TC2 started
    log to console    TC2 over

TC3 change user
    [Tags]    regression
    log to console    TC3 started
    log to console    TC3 over
TC4 logout
    [Tags]    sanity
    log to console    TC4 started
    log to console    TC4 over


#execute with tags
# robot --include=sanity .\TestCases\tagging.robot	: run specific tag
#robot -i sanity -i regression .\TestCases\tagging.robot    :run multiple tags
#robot -e regression .\TestCases\tagging.robot		:exclude tags

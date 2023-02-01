*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://www.worldatlas.com/countries
${BROWSER}        Chrome

*** Test Cases ***
scrolling
    Open Browser     ${LOGIN URL}    ${BROWSER}
    maximize browser window
    #execute javascript    window.scrollTo(0,4500)                      #scroll to certain position
    #sleep    3
#    scroll element into view    xpath://img[@alt='Flag of Qatar']        #scroll to certain element
#    sleep    3
    execute javascript    window.scrollTo(0,document.body.scrollHeight)        #scroll to end
    sleep      1
    execute javascript    window.scrollTo(0,-document.body.scrollHeight)        #scroll to top again
    sleep      3
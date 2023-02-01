*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
#${LOGIN URL}      https://swisnl.github.io/jQuery-contextMenu/demo.html
${BROWSER}        Chrome

*** Test Cases ***
mouseaction
    #right click action
    Open Browser     https://swisnl.github.io/jQuery-contextMenu/demo.html    ${BROWSER}
    maximize browser window

    open context menu    xpath://span[@class='context-menu-one btn btn-neutral']
    sleep     1

    #double click

    go to     https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element    xpath://button[normalize-space()='Copy Text']

    sleep      1

    #drag and drop
    go to       http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html
    maximize browser window
    drag and drop    xpath://div[@id='box6']    xpath://div[@id='box106']
    sleep    2


*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary



*** Test Cases ***
#forloop1
#    FOR    ${i}    IN RANGE    1   10
#    LOG TO CONSOLE    ${i}
#    END

#forloop2
#    FOR    ${i}    IN     1    2    3    4    5         #single space printed in same line but double space will printed in next line
#    LOG TO CONSOLE    ${i}
#    END

#forloop3list
#    @{items}=   create list    1    2    3    4    5            #create list
#    FOR    ${i}    IN     @{items}
#    LOG TO CONSOLE    ${i}
#    END

#forloop4string
#
#    FOR    ${i}    IN     john  david   smith   scott
#    LOG TO CONSOLE    ${i}
#    END

#forloop5
#    @{namelist}    create list    john  david   smith   scott
#    FOR    ${i}    IN     @{namelist}
#    LOG TO CONSOLE    ${i}
#    END

forloop6withExit
    @{items}    create list    1    2    3    4    5
    FOR    ${i}    IN     @{items}
    LOG TO CONSOLE    ${i}
    exit for loop if        ${i}==3             #exit for loop on condition
    END



*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

#will work on orange hrm
*** Test Cases ***
TC1 Valid Login
    Open Browser   url=https://opensource-demo.orangehrmlive.com/       browser=chrome      executable_path=${EXECDIR}/drivers/chromedriver
    Input Text    id=txtUsername    Admin
    Input Password  id=txtPassword      admin123
    Click Element  name=Submit
    ${url}  Get Location
    Log To Console  ${url}
    Click Element  id=welcome
    Sleep   5s
    Click Element  link=Logout
    Close Browser
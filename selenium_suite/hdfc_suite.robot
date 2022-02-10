*** Settings ***
Library     SeliniumLibrary


*** Test Cases ***
TC1
    Open Browser   url=https://netbanking.hdfcbank.com/netbanking/       browser=chrome      executable_path=${EXECDIR}/Driver/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait      30s
    Select Frame    xpath=//frame[@name='login_page']
    Input Text      name=fldLoginUserId     test123
    Comment     Click On Continue
    Click Element   link=CONTINUE

    Comment     switch to main html
    Unselect Frame

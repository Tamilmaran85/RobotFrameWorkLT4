*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
TC1 Valid Login
    Open Browser     url=https://www.medibuddy.in/      browser=chrome      executable_path=${EXECDIR}/Driver/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait      30s
    Click Element    link=For Employer
    Switch Window    MediBuddy LaunchPad
    Click Element    link=Sign up
    Input Text    id=name    tamil
    Input Text    name=email    tamil@gmail.com
    Input Text    id=companyName    L&T
    Input Text    id=mobileNumber    1234567890
    Click Element    xpath=//input[@value='Next']
    Close Browser
*** Settings ***
Library   SeleniumLibrary
Library   OperatingSystem

*** Test Cases ***
TC1 Valid Login
    Append To Environment variable      path    ${EXECDIR}\\Driver
    Open Browser  url=https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html    browser=chrome

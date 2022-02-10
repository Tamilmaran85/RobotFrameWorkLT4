*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Register From
    OPen Browser     url=https://nasscom.in/about-us/career      browser=chrome      executable_path=${EXECDIR}/Driver/chromedriver
    Maximum Browser Window
    Set Selenium Implicit wait      30s
    Click Element    xpath=//[contains(text(),'New User')]
    Input Text      id=edit-field-fname-reg     Tamil
    Input Text      id=edit-field-lname     Maran
    Input Text      id=edit-mail        tamil@gmail.com
    Input Text      id=edit-field-company-name-registration     L&T
    Select From List By Lable       id=edit-field-business-focus-reg        IT Consulting
    Click Element       name=op
    Close Browser
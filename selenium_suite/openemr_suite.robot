*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1 Valid Login
    Open Browser    url=https://demo.openemr.io/b/openemr/index.php     browser=chrome      executable_path=${EXECDIR}/Driver/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait      30s
    Input Text      id=authUser     admin
    Input Password      id=clearPass    pass
    select From List By Lable   name=languageChoice     English (Indian)
    Click Element    xpath=//button[@type='submit']
    ${title}       Get Title
    Log To Console    ${title}
    Title Should Be    OpenEMR
    Close Browser
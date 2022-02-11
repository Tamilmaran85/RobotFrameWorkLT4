*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser   url=https://demo.openemr.io/b/openemr/index.php       browser=chrome      executable_path=${EXECDIR}/Driver/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait      3s

    Input Text    id=authUser    admin

    Reload Page

    Input Password    id=clearPass    pass
    Select From List By Label     name=languageChoice    English (Indian)

    ${appdesc}      Get Text    xpath=//p[contains(text(),'most')]
    Log To Console    ${appdesc}


    ${selecteddropdownlabel}     Get Selected List Label    name=languageChoice
    Log To Console    ${selecteddropdownlabel}
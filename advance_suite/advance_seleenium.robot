*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Tc1
    Open Browser   url=https://www.google.com/       browser=chrome      executable_path=${EXECDIR}/Driver/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait      30s
    ${linkcount}    Get Element Count       tag=a
    Log To Console      ${linkcount}

    @{elements}     Get WebElements     tag=a
    FOR     ${i}    IN RANGE    0   ${linkcount}    1
        ${text}     Get Text    ${elements}[${i}]
        Log To Console      ${text}
    END
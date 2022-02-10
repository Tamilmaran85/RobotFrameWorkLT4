*** Settings ***
Library     SeleniumLibrary

*** Comments ***
1. navigate to the url https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
2. click on go
3. get the from alert box
4. click on ok in the alert box
5. close the browser

*** Test Cases ***
TC1
    Open Browser   url=https://opensource-demo.orangehrmlive.com/       browser=chrome      executable_path=${EXECDIR}/Driver/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait      30s
    Go To   url=https://opensource-demo.orangehrmlive.com/
    Click Button    xpath=//img[@alt='Go']
    ${alert_text}       Handle Alert    action=ACCEPT
    Log To Console      ${alert_text}
    Close Browser
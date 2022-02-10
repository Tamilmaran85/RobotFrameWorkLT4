*** Comments ***
1. Navigate https://nasscom.in/nasscom-membership
2. Click radio button Institutional Members
3. Check Education and Training
4. Check Telecom Services
5. click Calculate Membership Fee
6. get the alert text and print in the console
7. handle the alert box

*** Test Cases ***
TC1
    Open Browser   url=https://nasscom.in/nasscom-membership       browser=chrome      executable_path=${EXECDIR}/Driver/chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait      30s
    Click Element    id=edit-field-membership-type-und-1203
    Select Checkbox    id=edit-field-business-focus-inst-und-966
    Select Checkbox    id=edit-field-business-focus-inst-und-970
    Click Element    id=edit-submitted-contact-person-for-nasscom-email-id-cp
    ${alert_text}       Handle Alert    action=ACCEPT
    Log To Console      ${alert_text}
    Close Browser

*** Settings ***
Library  DateTime

*** Test cases ***
Tc1 print Name
    Log To Console  Hello

TC2 print Date
    ${date}     Get Current Date
    Log To Console  ${date}

TC3 Store Data
    Set Local Variable      ${name}     tamil
    Log To Console  ${name}
    Log  hello, ${name}
    ${title}    Set Variable    robotframeworksession
    Log To Console   ${title}

TC4 Add Numbers
    Set Local Variable      ${num1}     45
    set Local Variable      ${num2}     55
    Set Local Variable      ${sum}     ${${num1}+${num2}}
    Log To Console   ${sum}

TC5 Area Of Circle
    Set Local Variable     ${radius}   8
    Set Local Variable     ${pie}       3.14
    ${res}      Evaluate    ${radius}*${radius}*${pie}
    Log To Console      ${res}cm2

TC6
    Set Local variable      ${browser}  chrome

    IF      '${browser}'=='chrome'
            Log To Console  Yes! it's chrome

    ELSE
            Log To Console  No! it's not chrome
    END

TC7 For Loop
    FOR     ${1}    IN RANGE    1   11  1
        Log To Console  ${1}

    END

TC8
    Log To Console  ${EXECDIR}
    Log To Console  ${CURDIR}
    Log To Console  ${EXECDIR}/Driver/chromedriver
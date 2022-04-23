***Settings***

Library      SeleniumLibrary
Variables    GlobalVariables.py


***Keywords***

Wait For Element To Load On Page
    [Arguments]                         ${locator}
    Wait Until page Contains Element    ${locator}    timeout=${GLOBAL_TIMEOUT}

Click On Element
    [Arguments]      ${locator}
    Click Element    ${locator}

Click On Button
    [Arguments]     ${locator}
    Click Button    ${locator}

Insert Text
    [Arguments]                         ${locator}    ${text}
    Wait For Element To Load On Page    ${locator}    
    Input Text                          ${locator}    ${text}

Compare Title
    [Arguments]                   ${title}
    ${actual_title}               Get Title
    Should Be Equal As Strings    ${actual_title}                                               ${title}
    ...                           msg= Title Expected: (${title}) but was: (${actual_title})
    ...                           values=${False}

Scroll Page
    Execute Javascript    window.scrollTo(0, 150)
    
Wait
    [Arguments]    ${time}
    Sleep          ${time}

Refresh Page
    Reload Page
***Settings***

Variables    ${EXECDIR}/PageObject/Home.py
Resource     ${EXECDIR}/Utils/SeleniumWrapper.robot


***Keywords***

Input Text To Search Box
    [Arguments]                         ${text}
    Insert Text                         ${XPATH_SEARCH_BOX}    ${text}
    Wait For Element To Load On Page    ${XPATH_SUBMIT}
    Click On Button                     ${XPATH_SUBMIT}
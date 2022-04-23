***Settings***

Variables    ${EXECDIR}/PageObject/CartPage.py
Resource     ${EXECDIR}/Utils/SeleniumWrapper.robot

***Keywords***

Increment Item Count
    [Arguments]                         ${count}
    Wait                                time=3
    FOR                                 ${item}             IN    ${Count}
    Wait For Element To Load On Page    ${XPATH_BTN_ADD}
    Click On Button                     ${XPATH_BTN_ADD}
    END
    Wait                                time=3
    Verify Item Count
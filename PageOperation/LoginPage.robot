***Settings***

Variables    ${EXECDIR}/PageObject/Login.py
Resource     ${EXECDIR}/Utils/SeleniumWrapper.robot

***Keywords***

Close Login Popup
    Wait For Element To Load On Page    ${XPATH_CLOSE_LOGIN_BTN}
    Click On Button                     ${XPATH_CLOSE_LOGIN_BTN}
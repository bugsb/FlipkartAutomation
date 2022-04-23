***Settings***

Variables    ${EXECDIR}/PageObject/ItemPage.py
Resource     ${EXECDIR}/Utils/SeleniumWrapper.robot

***Keywords***

Add To Cart
    Scroll Page
    wait                                time=3
    Wait For Element To Load On Page    ${XPATH_SIZE_SELECTOR}
    Click On Element                    ${XPATH_SIZE_SELECTOR}
    Scroll Page
    Wait For Element To Load On Page    ${XPATH_BTN_ADD_TO_CART}
    Click On Button                     ${XPATH_BTN_ADD_TO_CART}
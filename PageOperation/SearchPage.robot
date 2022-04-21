***Settings***

Variables    ${EXECDIR}/PageObject/SearchPage.py
Resource     ${EXECDIR}/Utils/SeleniumWrapper.robot

***Keywords***

Sort Price High To Low
    Wait For Element To Load On Page    ${XPATH_PRICE_LTH}
    Click On Element                    ${XPATH_PRICE_LTH}
    Wait                                time=5

Select Item
    [Arguments]                         ${item_number}
    Wait For Element To Load On Page    ${XPATH_ITEMS_CARD}
    Click On Element                    ${XPATH_ITEMS_CARD}
    Wait  time=5
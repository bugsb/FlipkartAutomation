***Settings***

Variables    ${EXECDIR}/PageObject/SearchPage.py
Resource     ${EXECDIR}/Utils/SeleniumWrapper.robot

***Keywords***

Sort Price High To Low
    Wait For Element To Load On Page    ${XPATH_PRICE_LTH}
    Click On Element                    ${XPATH_PRICE_LTH}
    Wait                                time=3

Select Min And Max Filter
    [Arguments]                         ${min_value}          ${max_value}
    Wait For Element To Load On Page    ${XPATH_LABEL}
    Select From List By Label           ${XPATH_LABEL_MIN}    ${min_value}
    wait                                3
    Wait For Element To Load On Page    ${XPATH_LABEL}
    Select From List By Label           ${XPATH_LABEL_MAX}    ${max_value}
    wait                                3

Select Item
    [Arguments]                         
    Wait For Element To Load On Page    ${XPATH_ITEMS_CARD}
    ${url}                              Get Element Attribute    ${XPATH_ITEMS_CARD}    href
    Go To                               ${url}

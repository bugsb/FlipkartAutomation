***Settings***
Library      SeleniumLibrary
Library      OperatingSystem
Resource     ${EXECDIR}/PageOperation/LoginPage.robot
Resource     ${EXECDIR}/PageOperation/Home.robot
Resource     ${EXECDIR}/PageOperation/ItemPage.robot
Resource     ${EXECDIR}/PageOperation/CartPage.robot
Resource     ${EXECDIR}/PageOperation/SearchPage.robot
Variables    ${EXECDIR}/TestData/TestData.py

***Keywords***

# test setup
Goto Flipkart Login Page
    Set Environment Variable    ${WEBDRIVER}    ${EXECDIR}

    Open Browser               url=${URL}
    ...                        browser=${BROWSER}
    Maximize Browser Window

A User At Home Page
    Close Login Popup

User Search For Item
    [Arguments]                 ${Item_To_Search}
    Input Text To Search Box    ${Item_To_Search}

Title Should Be Same As Expected
    [Arguments]                   ${Expected_Title}
    Wait Until Location Is Not    ${Url}
    Wait                          time=3
    Compare Title                 ${Expected_Title}

Page Is Refreshed
    Refresh Page

Items Are Sorted
    Sort Price High To Low

Required Filters Are Selected
    [Arguments]                  ${min_value}    ${max_value}
    Select Min And Max Filter    ${min_value}    ${max_value}

Add Third Item To Cart
    Select Item
    Switch Window    CURRENT
    Add To Cart

Increment Item Count By One
    Increment Item Count    Count=1

Verify Item Count
    Wait For Element To Load On Page    ${XPATH_ITEM_COUNT}      
    ${item_count}                       Get Element Attribute    ${XPATH_ITEM_COUNT}       value
    Should Be Equal As Strings          ${item_count}            ${Expected_Item_Count}
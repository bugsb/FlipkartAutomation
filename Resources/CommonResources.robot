***Settings***
Library      SeleniumLibrary
Library      OperatingSystem
Resource     ${EXECDIR}/PageOperation/LoginPage.robot
Resource     ${EXECDIR}/PageOperation/Home.robot
Resource     ${EXECDIR}/PageOperation/SearchPage.robot
Variables    ${EXECDIR}/TestData/TestData.py

***Keywords***

# test setup
Goto Flipkart Login Page
    Set Environment Variable    webdriver.gecko.driver    ${EXECDIR}

    Open Browser               url=${Url}
    ...                        browser= firefox
    Maximize Browser Window

A User At Home Page
    Close Login Popup

User Search For Item
    [Arguments]                 ${Item_To_Search}
    Input Text To Search Box    ${Item_To_Search}

Title Should Be Same As Expected
    [Arguments]                   ${Expected_Title}
    Wait Until Location Is Not    ${Url}
    Wait                          time=5
    Compare Title                 ${Expected_Title}

Page Is Refreshed
    Refresh Page

Items Are Sorted
    Sort Price High To Low

Add Third Item To Card
    Select Item    item_number=3
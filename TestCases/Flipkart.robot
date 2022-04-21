***Settings***

Library     SeleniumLibrary
Resource    ${EXECDIR}/Resources/CommonResources.robot

***Test Cases***

Validate Search Item And Price Filter
    [Setup]    Goto Flipkart Login Page

    GIVEN A User At Home Page
    WHEN User Search For Item                ${Item_To_Search}
    THEN Title Should Be Same As Expected    ${Expected_Title}
    WHEN Page Is Refreshed
    AND Items Are Sorted
    THEN Add Third Item To Card         

    [Teardown]    Close Browser
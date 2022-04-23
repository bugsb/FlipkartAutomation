***Settings***

Library     SeleniumLibrary
Resource    ${EXECDIR}/Resources/CommonResources.robot
Variables    ${EXECDIR}/TestData/TestData.py


***Test Cases***

Validate Search Item And Price Filter
    [Setup]    Goto Flipkart Login Page

    GIVEN A User At Home Page
    WHEN User Search For Item                ${Item_To_Search}
    THEN Title Should Be Same As Expected    ${Expected_Title}
    WHEN Page Is Refreshed
    AND Items Are Sorted
    AND Required Filters Are Selected        ${Min_Value}          ${Max_Value}
    THEN Add Third Item To Cart
    AND Increment Item Count By One          

    [Teardown]    Close Browser
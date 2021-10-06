*** Settings ***
Resource        ../../TestConfig/TestConfig.robot

*** Keywords ***
Given I am on the webpage
    Go to               ${URL}
    Title Should Be     My Store
    Capture Page Screenshot

When I search for product "${Product}"
    Input Text         ${InputSearch}         ${Product}
    Capture Page Screenshot
    Click Element      ${BtnSearch} 
        
Then the product "${Product}" should be listed on the search results page
    Wait Until Element Is Visible       css=#center_column > h1
    Title Should Be                     Search - My Store
    Mouse Down                          xpath=//*[@id="center_column"]//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
    Page Should Contain Image           xpath=//*[@id="center_column"]//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
    Page Should Contain Element         ${BtnAddToCart}
    Page Should Contain Element         ${BtnMore}
    Capture Page Screenshot

Then the page should display the message "${AlertMessage}"
    Wait Until Element Is Visible       ${MsgAlert}
    Element Text Should Be              ${MsgAlert}        ${AlertMessage}
    Capture Page Screenshot

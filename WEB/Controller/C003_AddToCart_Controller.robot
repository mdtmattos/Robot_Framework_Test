*** Settings ***
Resource        ../../TestConfig/TestConfig.robot

*** Keywords ***
Given I access the webpage
    Go to               ${URL}
    Title Should Be     My Store
    Capture Page Screenshot

When I choice a category
    Click Element   ${WomenMenu} 

When I search the product "${Product}"
    Input Text         ${InputSearch}         ${Product}
    Capture Page Screenshot
    Click Element      ${BtnSearch} 

Then I add a product to the cart
    Click Element               ${FadedShort}
    Click Element               ${BtnAddToCart} 
    Click Element               ${BtnCloseWindow} 
    Capture Page Screenshot

Then I add the blouse on the Cart
    Click Element   ${BtnAddToCart} 
    Click Element   ${BtnCloseWindow} 
    Capture Page Screenshot

Then I proceed to checkout page
    Execute JavaScript              window.scrollTo(0, document.body.scrollHeight)
    Click Element                   ${BtnProceedToCheckout}
    Page Should Contain Element     ${FormCreateAccount}
    Page Should Contain Element     ${LoginForm}

And I add the blouse on the Cart
    Click Element   ${BtnAddToCart} 
    Click Element   ${BtnCloseWindow} 
    Capture Page Screenshot

And I assert the product on the Cart
    Click Element                   ${CartDropDown}
    Page Should Contain Element     ${ProductCart1}

And I assert the blouse on the Cart
    Click Element                   ${CartDropDown}
    Page Should Contain Element     ${ProductCart2}

And I remove the product from the Cart
    Mouse over                      ${CartDropDown}
    Page Should Contain Element     ${ProductCart2}
    Click Element                   ${BtnRemoveProduct}

And I checkout the product on the Cart on header
    Mouse over      ${CartDropDown}
    Click Element   ${BtnCheckOutCart}

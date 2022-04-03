*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${InputSearch}          id=search_query_top
${BtnSearch}            name=submit_search
${BtnAddToCart}         xpath=//span[contains(text(),'Add to cart')]
${BtnMore}              xpath=//span[contains(text(),'More')]
${BtnCloseWindow}       class=cross
${MsgAlert}             css=#center_column > p
${WomenMenu}            class=sf-with-ul
${CartDropDown}         xpath=//b[contains(text(),'Cart')]

# Contact Us Page
${BtnContactUs}         id=contact-link
${contactPageText}      xpath=//h1[contains(text(),'Customer service - Contact us')]
${contactFormTitle}     class=page-subheading
${subjectHeading}       id=id_contact
${emailAdress}          id=email
${orderReference}       id=id_order
${attachFile}           class=filename
${BtnChooseFile}        xpath=//span[contains(text(),'Choose File')]
${messageTextArea}      id=message
${BtnSend}              id=submitMessage
${contactMsgAlert}      xpath=//p[contains(text(),'Your message has been successfully sent to our tea')]     

# Product
${FadedShort}           xpath=//a[contains(text(),'Faded Short Sleeve T-shirts')]
${ProductCart1}         xpath=//a[contains(text(),'Faded Short Sleeve T-shirts')]
${ProductCart2}         xpath=//a[contains(text(),'Blouse')]
${BtnRemoveProduct}     class=ajax_cart_block_remove_link

# Check Out Page
${BtnCheckOutCart}          xpath=//span[contains(text(),'Check out')]
${BtnProceedToCheckout}     xpath=//body[1]/div[1]/div[2]/div[1]/div[3]/div[1]/p[2]/a[1]/span[1]
${FormCreateAccount}        id=create-account_form
${LoginForm}                id=login_form




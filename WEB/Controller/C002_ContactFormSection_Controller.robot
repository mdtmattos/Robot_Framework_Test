*** Settings ***
Resource        ../../TestConfig/TestConfig.robot

*** Keywords ***
Given I navigate to Contact us page
    Go to               ${URL}
    Title Should Be     My Store
    Capture Page Screenshot
    Click Element       ${BtnContactUs}

When I access the page
    Page Should Contain Element   ${contactPageText}    

When I fill the contact fields
    Click Element                   ${subjectHeading}
    Select From List By Label       ${subjectHeading}       Customer service
    Input Text                      ${emailAdress}          test@test.com
    Input Text                      ${orderReference}       Test
    Input Text                      ${messageTextArea}      Robot Framework automation test
    Click Element                   ${BtnSend}

        
Then I assert all fields on the contact form
    Element Text Should Be              ${contactFormTitle}         SEND A MESSAGE
    Page Should Contain Element         ${subjectHeading}
    Page Should Contain Element         ${emailAdress}
    Page Should Contain Element         ${orderReference}
    Page Should Contain Element         ${attachFile}
    Page Should Contain Element         ${BtnChooseFile}
    Page Should Contain Element         ${messageTextArea}
    Capture Page Screenshot

Then the page display the message "${ContactAlertMessage}"
    Wait Until Element Is Visible       ${contactMsgAlert}
    Element Text Should Be              ${contactMsgAlert}        ${ContactAlertMessage}

*** Settings ***
Library          SeleniumLibrary

# Controllers
Resource         ../WEB/Controller/C001_ProductSearch_Controller.robot
Resource         ../WEB/Controller/C002_ContactFormSection_Controller.robot   
Resource         ../WEB/Controller/C003_AddToCart_Controller.robot

# PageObjects
Resource         ../PageObjects/ProductSearch_Page.robot

*** Variables ***
${URL}        http://automationpractice.com/
${Browser}    chrome  
${Options}    add_argument("--no-sandbox");add_argument("--disable-dev-shm-usage");add_argument("--headless")  

*** Keywords ***
Open
    Open Browser        ${URL}      ${Browser}
    Set Window Size     ${1200}     ${1200}
    Set Selenium Speed              1 seconds
    Set Selenium Implicit Wait      15s

Close
    Close Browser
*** Settings ***
Library          SeleniumLibrary
Library          DatabaseLibrary

# Controllers
Resource         ../WEB/Controller/C001_ProductSearch_Controller.robot

# PageObjects
Resource         ../PageObjects/ProductSearch_Page.robot

*** Variables ***
${URL}        http://automationpractice.com/
${Browser}    chrome  
${Options}    add_argument("--no-sandbox");add_argument("--disable-dev-shm-usage");add_argument("--headless")  

*** Keywords ***
Open
    Open Browser        ${URL}      ${Browser}
    Maximize Browser Window
    Set Selenium Speed              1 seconds
    Set Selenium Implicit Wait      15s

Close
    Close Browser
*** Settings ***
Library             SeleniumLibrary

*** Variables ***
${InputSearch}          id=search_query_top
${BtnSearch}            name=submit_search
${BtnAddToCart}         xpath=//span[contains(text(),'Add to cart')]
${BtnMore}              xpath=//span[contains(text(),'More')]
${MsgAlert}             css=#center_column > p
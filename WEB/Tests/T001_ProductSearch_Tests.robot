*** Settings ***
Resource        ../../TestConfig/TestConfig.robot
Test Setup       Open
Test Teardown    Close

*** Test Cases ***
Scenario: Search for an existing product
    Given I am on the webpage
    When I search for product "Blouse"
    Then the product "Blouse" should be listed on the search results page

Scenario: Search for a non-existent product
    Given I am on the webpage
    When I search for product "camiseta"
    Then the page should display the message "No results were found for your search "camiseta""
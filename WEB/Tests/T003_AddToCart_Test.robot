*** Settings ***
Resource        ../../TestConfig/TestConfig.robot
Test Setup       Open
Test Teardown    Close

*** Test Cases ***
Scenario: Add product from category
    Given I access the webpage
    When I choice a category
    Then I add a product to the cart
    And I assert the product on the Cart

Scenario: Search a product and add to the cart
    Given I access the webpage
    When I search the product "Blouse"
    Then I add the blouse on the Cart
    And I assert the blouse on the Cart

Scenario: Remove product to the cart
    Given I access the webpage
    When I search the product "Blouse"
    Then I add the blouse on the Cart
    And I remove the product from the Cart

Scenario: Proceed to checkout link on the header cart
    Given I access the webpage
    When I search the product "Blouse"
    And I add the blouse on the Cart
    And I checkout the product on the Cart on header
    Then I proceed to checkout page

*** Settings ***
Resource        ../../TestConfig/TestConfig.robot
Test Setup       Open
Test Teardown    Close

*** Test Cases ***
Scenario: Validate Field
    Given I navigate to Contact us page
    When I access the page
    Then I assert all fields on the contact form

Scenario: Sending a message
    Given I navigate to Contact us page
    When I fill the contact fields
    Then the page display the message "Your message has been successfully sent to our team."
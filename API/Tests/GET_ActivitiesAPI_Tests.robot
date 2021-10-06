*** Settings ***
Resource        ../../TestConfig/ResourceAPI.robot

Suite Setup     Given I connect my API

*** Test Cases ***
Scenary: Make a GET request on the Activities endpoint
    Given I connect my API
    When I make a GET request on the Activities endpoint
    Then I check if it returned with the status code     200


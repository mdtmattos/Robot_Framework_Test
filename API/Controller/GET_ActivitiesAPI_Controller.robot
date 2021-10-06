*** Settings ***
Resource        ../../TestConfig/ResourceAPI.robot

*** Variables ***
${endpoint_books}       /v1/activities           

*** Keywords ***
When I make a GET request on the Activities endpoint
    ${Resposta}     GET On Session        ActivitiesAPI     ${endpoint_books}
    Log             ${Resposta.text}
    Set Test Variable       ${Resposta}

Then I check if it returned with the status code    [Arguments]         ${StatusCode}
    Should Be equal As Strings      ${Resposta.status_code}     ${StatusCode}
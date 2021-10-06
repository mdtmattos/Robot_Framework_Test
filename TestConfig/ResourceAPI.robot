*** Settings ***
Library         RequestsLibrary
Library         OperatingSystem
Library         Collections
Library         String

# Controllers
Resource        ../API/Controller/GET_ActivitiesAPI_Controller.robot

*** Variables ***
${URL_API}           https://fakerestapi.azurewebsites.net/api

*** Keywords ***
Given I connect my API
    Create Session          ActivitiesAPI           ${URL_API}
@smoke
Feature: Feature file for chemical fate resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for chemical fate by dtxsid
    Given path '/chemical/fate/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the POST method for chemical fate by batch dtxsid
    Given path '/chemical/fate/search/by-dtxsid/'
    And request example='["DTXSID7020182","DTXSID9020112"]'
    When method POST
    Then status 201

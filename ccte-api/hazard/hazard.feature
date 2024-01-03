@smoke
Feature: Feature file for hazard resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for hazard data by dtxsid
    Given path '/hazard/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200

  Scenario: Testing the GET method for human data by dtxsid
    Given path '/hazard/human/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200

  Scenario: Testing the GET method for eco data by dtxsid
    Given path 'hazard/eco/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200

  Scenario: Testing the POST method for hazard data by batch dtxsid
    Given path '/hazard/search/by-dtxsid/'
    And request example='["DTXSID7020182","DTXSID9020112"]'
    When method POST
    Then status 201

  Scenario: Testing the POST method for human data by batch dtxsid
    Given path '/hazard/human/search/by-dtxsid/'
    And request example='["DTXSID7020182","DTXSID9020112"]'
    When method POST
    Then status 201

  Scenario: Testing the POST method for eco data by batch dtxsid
    Given path '/hazard/eco/search/by-dtxsid/'
    And request example='["DTXSID7020182","DTXSID9020112"]'
    When method POST
    Then status 201

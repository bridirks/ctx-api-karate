@smoke
Feature: Feature file for genetox resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for genetox summary data by dtxsid
    Given path '/hazard/genetox/summary/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200

  Scenario: Testing the GET method for genetox detail data by dtxsid
    Given path '/hazard/genetox/details/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200

  Scenario: Testing the POST method for genetox summary data by batch dtxsid
    Given path '/hazard/genetox/summary/search/by-dtxsid/'
    And request example='["DTXSID7020182","DTXSID9020112"]'
    When method POST
    Then status 201

  Scenario: Testing the POST method for genetox detail data by batch dtxsid
    Given path '/hazard/genetox/details/search/by-dtxsid/'
    And request example='["DTXSID7020182","DTXSID9020112"]'
    When method POST
    Then status 201

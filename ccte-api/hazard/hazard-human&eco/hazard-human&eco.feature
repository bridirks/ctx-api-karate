@smoke
Feature: Feature file for hazard human&eco resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for hazard human&eco data by dtxsid
    Given path '/hazard/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200

  Scenario: Testing the POST method for hazard human&eco data by batch dtxsid
    Given url "https://api-ccte-stg.epa.gov/hazard/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200

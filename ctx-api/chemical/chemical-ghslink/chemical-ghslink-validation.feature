@regression
@chemical
@all
Feature: Feature file for validating the response of the chemical ghslink resource. Finding chemical safety data by dtxsid

  Background:
    * url ctx
    * header Origin = origin
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for ghslink chemical safety data
    Given path '/chemical/ghslink/to-dtxsid/DTXSID001000314'
    When method GET
    Then status 200
    And match response == {dtxsid: '#present', isSafetyData: '#present', safetyUrl: '#present'}
    
  Scenario: Validating the response of the POST method for ghslink chemical safety data
    Given url ctx + "/chemical/ghslink/to-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response == {dtxsid: '#present', isSafetyData: '#present', safetyUrl: '#present'}

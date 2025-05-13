@smoke
@hazard
@all
Feature: Feature file for hazard toxvaldb endpoints
  Background:
    * url ctx
    * header Origin = origin
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for toxval data by dtxsid
    Given path '/hazard/toxval/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200

  Scenario: Testing the POST method for toxval by batch dtxsids
    Given url ctx + "/hazard/toxval/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200

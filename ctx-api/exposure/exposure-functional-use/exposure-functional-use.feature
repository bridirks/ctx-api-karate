@smoke
@exposure
@all
Feature: Feature file for exposure functional use resource

  Background:
    * url ctx
    * header Origin = origin
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for functional use resource exposure data by dtxsid
    Given path '/exposure/functional-use/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the POST method for functional use resource exposure data by dtxsid
    Given url ctx + "/exposure/functional-use/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    
  Scenario: Testing the GET method for functional use resource probability by dtxsid
    Given path '/exposure/functional-use/probability/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for functional use resource category
    Given path '/exposure/functional-use/category'
    When method GET
    Then status 200

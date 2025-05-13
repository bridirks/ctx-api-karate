@smoke
@hazard
@all
Feature: Feature file for the HAWC resource
  Background:
    * url ctx
    * header Origin = origin
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for HAWC data by dtxsid
    Given path '/hazard/hawc/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

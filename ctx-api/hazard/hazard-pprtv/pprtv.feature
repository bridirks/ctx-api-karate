@smoke
@hazard
@all
Feature: Feature file for the PPRTV chemical resource
  Background:
    * url ctx
    * header Origin = origin
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for PPRTV chemical data by dtxsid
    Given path '/hazard/pprtv/search/by-dtxsid/DTXSID0023872'
    When method GET
    Then status 200

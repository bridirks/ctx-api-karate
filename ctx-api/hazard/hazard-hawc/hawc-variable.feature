@regression
@hazard
@all
Feature: Feature file for validating the response of the HAWC resource
  Background:
    * url ctx
    * header Origin = origin
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for HAWC data by dtxsid
    Given path '/hazard/hawc/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match response[0] == {assessmentId: '#present', dtxsid: '#present', ccdUrl: '#present', hawcLink: '#present'}

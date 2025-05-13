@smoke
@html
Feature: Feature file to access hazard api

  Background:
    * url ctx
    * header Origin = origin
    
  Scenario: Testing the GET method for exposure api html page
    Given url ctx + '/docs/exposure.html'
    When method GET
    Then status 200

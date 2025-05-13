@smoke
@html
Feature: Feature file to access hazard api

  Background:
    * header Origin = origin
    
  Scenario: Testing the GET method for exposure api html page
    Given url ctx + '/docs/hexposure.html'
    When method GET
    Then status 200

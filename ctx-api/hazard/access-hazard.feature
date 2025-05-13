@smoke
@html
Feature: Feature file to access hazard api

  Background:
    * url ctx
    * header Origin = origin
    
  Scenario: Testing the GET method for hazard api html page
    Given url ctx + '/docs/hazard.html'
    When method GET
    Then status 200

@smoke
@html
Feature: Feature file to access bioactivity api

  Background:
    * url ctx
    * header Origin = origin
    
  Scenario: Testing the GET method for bioactivity api html page
    Given url ctx + '/docs/bioactivity.html'
    When method GET
    Then status 200

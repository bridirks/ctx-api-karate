@smoke
Feature: Feature file to access bioactivity api


  Scenario: Testing the GET method for bioactivity api html page (only passes in dev/prod)
    Given url ccte + '/docs/bioactivity.html'
    When method GET
    Then status 200

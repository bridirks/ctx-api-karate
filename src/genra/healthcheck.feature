Feature: Feature file for healthcheck


  Scenario: Testing the GET method for healthcheck
    Given url genra + '/api/genra/v3/healthCheck/'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200


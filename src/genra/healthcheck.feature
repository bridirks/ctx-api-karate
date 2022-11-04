Feature: GenRA healthcheck test

  Scenario: Testing the GET method for healthcheck
    Given url genra + '/genra-api/api/genra/v3/healthCheck/'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.status == 'HEALTHY'

Feature: Feature file for repositories


  Scenario: Testing the GET method for repositories
    Given url impact + '/api/repositories'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

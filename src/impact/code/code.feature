Feature: Feature file for stats controller


  Scenario: Testing the GET method for fetching repository interactions data
    Given url impact + '/api/code/comparisons/repos/interactions'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200


  Scenario: Testing the GET method for fetching repository utilizations data
    Given url impact + '/api/code/comparisons/repos/utilizations'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for fetching user interacitons data
    Given url impact + '/api/code/comparisons/users/interactions'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200


  Scenario: Testing the GET method for fetching user utilizations
    Given url impact + '/api/code/comparisons/users/utilizations'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for comparing repository interactions
    Given url impact + '/api/code/comparisons/repos/interactions'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200


  Scenario: Testing the GET method for fetching an analysis of language usage for a set of repositories
    Given url impact + '/api/code/comparisons/repos/usage/22,33,44'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for stats controller
    Given url impact + '/api/code/repositories/utilizations'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for user utilizations
    Given url impact + '/api/code/users/utilizations'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for utilizations by user
    Given url impact + '/api/code/utilizations/user/22'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for utilizations by repository
    Given url impact + '/api/code/utilizations/22'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for interactions by user
    Given url impact + '/api/code/interactions/user/22'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for utilizations by repository
    Given url impact + '/api/code/interactions/22'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

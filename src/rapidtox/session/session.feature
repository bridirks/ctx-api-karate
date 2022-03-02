Feature: Feature file session recall

  Scenario: Testing the GET method for session-recall
    Given url baseUrl + '/rapidtox/session-recall'
    When method GET
    Then status 200

  Scenario: Testing the GET method for session-recall by id
    Given url baseUrl + '/rapidtox/session-recall/06c358f67f1dbc35017f1dc254850000'
    When method GET
    Then status 200

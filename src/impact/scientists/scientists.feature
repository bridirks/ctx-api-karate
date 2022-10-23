Feature: Feature file for stats controller


  Scenario: Testing the GET method for fetching the profile for a scientist by scientistId
    Given url impact + '/api/scientists'
    And header Content-Type = 'application/json; charset=utf-8'
    And param scientistid = 33
    When method GET
    Then status 200
  Scenario: Testing the GET method for fetching a scientist profile photo
    Given url impact + '/api/scientists/get/refreshphoto'
    And header Content-Type = 'application/json; charset=utf-8'
    And param scientistid = 33
    And param refreshtoken = 99
    When method GET
    Then status 200

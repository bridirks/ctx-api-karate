Feature: Feature file for feedback


  Scenario: Testing the GET method for feedback
    Given url ccd + 'ccdapp1/feedback'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



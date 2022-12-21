Feature: Feature file for helptext


  Scenario: Testing the GET method for helptext
    Given url ccd + 'ccdapp1/helptext'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



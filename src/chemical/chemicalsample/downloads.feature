Feature: Feature file for downloads


  Scenario: Testing the GET method for downloads
    Given url ccd + '/ccdapp1/downloads'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



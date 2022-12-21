Feature: Feature file for tabs


  Scenario: Testing the GET method for tabs
    Given url ccd + 'ccdapp1/tabs'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200




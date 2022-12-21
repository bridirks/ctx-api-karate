Feature: Feature file for links


  Scenario: Testing the GET method for links
    Given url ccd + 'ccdapp1/links-ids'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200




Feature: Feature file for qmrf


  Scenario: Testing the GET method for qmrf
    Given url ccd + '/ccdapp1/qmrfdata/file/by-modelid/18'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200




Feature: Feature file for msReady


  Scenario: Testing the GET method for msReady  details by dtxsid
    Given url ccd + 'ccdapp2/ms-ready/search/by-dtxcid?id=DTXCID90488191'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



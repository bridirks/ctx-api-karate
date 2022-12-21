Feature: Feature file for httr


  Scenario: Testing the GET method for httr  details by dtxsid
    Given url ccd + 'ccdapp2/httr/search/by-dtxsid?id=DTXSID9021976'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



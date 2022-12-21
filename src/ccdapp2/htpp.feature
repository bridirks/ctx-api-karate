Feature: Feature file for htpp


  Scenario: Testing the GET method for htpp  details by dtxsid
    Given url ccd + 'ccdapp2/htpp/search/by-dtxsid?id=DTXSID9021976'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



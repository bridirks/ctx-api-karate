Feature: Feature file for opera


  Scenario: Testing the GET method for opera  details by dtxsid
    Given url ccd + '/ccdapp2/opera-model/search/by-dtxsid?id=DTXSID50954246'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200





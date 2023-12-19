Feature: Feature file for chemical-synonym


  Scenario: Testing the GET method for chemical-synonym  details by dtxsid
    Given url ccd + '/ccdapp2/chemical-synonym/search/by-dtxcid?id=DTXCID30182'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



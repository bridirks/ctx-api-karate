Feature: Feature file for chemical property


  Scenario: Testing the GET method for chemical property  details by dtxsid
    Given url ccd + 'ccdapp2/chemical-property/search/by-dtxsid?id=DTXSID7020182'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



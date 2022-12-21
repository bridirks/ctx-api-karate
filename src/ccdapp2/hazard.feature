Feature: Feature file for hazard


  Scenario: Testing the GET method for hazard  details by dtxsid
    Given url ccd + 'ccdapp2/hazard/search/by-dtxsid?id=DTXSID7020182'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



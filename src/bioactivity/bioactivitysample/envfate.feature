Feature: Feature file for envfate


  Scenario: Testing the GET method for envfate  details by dtxsid
    Given url ccd + '/ccdapp2/envfate/search/by-dtxsid?id=DTXSID7020182'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



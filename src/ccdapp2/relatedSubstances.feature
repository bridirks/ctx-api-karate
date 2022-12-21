Feature: Feature file for relatedSubstances


  Scenario: Testing the GET method for relatedSubstances  details by dtxsid
    Given url ccd + 'ccdapp2/related-substances/search/by-dtxsid?id=DTXSID7020182'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



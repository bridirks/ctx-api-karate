Feature: Feature file for adme


  Scenario: Testing the GET method for adme  details by dtxsid
    Given url ccd + 'ccdapp2/adme/search/by-dtxsid?id=DTXSID8033649'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



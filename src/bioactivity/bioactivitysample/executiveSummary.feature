Feature: Feature file for executive-summary


  Scenario: Testing the GET method for executive-summary-links by dtxsid
    Given url ccd + '/ccdapp2/executive-summary-links/search/by-dtxsid?id=DTXSID7020182'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for executive-summary-pod by dtxsid
    Given url ccd + '/ccdapp2/executive-summary-pod/search/by-dtxsid?id=DTXSID7020182'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for physchem by dtxsid
    Given url ccd + '/ccdapp2/physchem/search/by-dtxsid?id=DTXSID7020182'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for executive-summary-deeplink by dtxsid
    Given url ccd + '/ccdapp2/executive-summary-deeplink/search/by-deeplinkId?id=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



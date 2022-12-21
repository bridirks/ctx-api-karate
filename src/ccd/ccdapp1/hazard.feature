Feature: Feature file for hazard


  Scenario: Testing the GET method for hazard  details by dtxsid
    Given url ccd + '/ccdapp1/hazard/search/by-dtxsid?id=DTXSID001004823'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for skin-eye  details by dtxsid
    Given url ccd + '/ccdapp1/skin-eye/search/by-dtxsid?id=DTXSID3042005'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for cancer-summary  details by dtxsid
    Given url ccd + '/ccdapp1/cancer-summary/search/by-dtxsid?id=DTXSID00108999'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for genetoxicity-details  details by dtxsid
    Given url ccd + '/ccdapp1/genetoxicity-details/search/by-dtxsid?id=DTXSID3042005'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for genetoxicity-summary  details by dtxsid
    Given url ccd + '/ccdapp1/genetoxicity-summary/search/by-dtxsid?id=DTXSID3042005'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



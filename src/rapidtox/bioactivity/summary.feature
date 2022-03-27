Feature: Feature file for bioactivity


  Scenario: Testing the GET method for bioactivity-summary by dtxsid
    Given url baseUrl + '/rapidtox/bioactivity-summary/search/by-dtxsid/DTXSID9045479'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for bioactivity-ber-summary by dtxsid
    Given url baseUrl + '/rapidtox/bioactivity-summary/ber/search/by-dtxsid/DTXSID9045479'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for bioactivity-plot-summary by dtxsid
    Given url baseUrl + '/rapidtox/bioactivity-summary/plot/search/by-dtxsid/DTXSID0020022'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
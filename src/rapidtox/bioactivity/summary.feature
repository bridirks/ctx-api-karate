Feature: Feature file for bioactivity


  Scenario: Testing the GET method for bioactivity-plot-summary by dtxsid
    Given url baseUrl + '/rapidtox/bioactivity-summary/plot/search/by-dtxsid/DTXSID0020022'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

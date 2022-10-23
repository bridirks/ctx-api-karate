Feature: Feature file for stats controller


  Scenario: Testing the GET method for fetching chemical data
    Given url impact + '/api/stats/chems'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



  Scenario: Testing the GET method for fetching httk data
    Given url impact + '/api/stats/httk'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



  Scenario: Testing the GET method for fetching cpdat data
    Given url impact + '/api/stats/cpdat'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



  Scenario: Testing the GET method for fetching cran data
    Given url impact + '/api/stats/cran'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for fetching tcplfit data
    Given url impact + '/api/stats/tcplfit'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for fetching ssdtoolbox data
    Given url impact + '/api/stats/ssdtoolbox'
    And header Content-Type = 'application/json; charset=utf-8'
    And param articleId = 2
    When method GET
    Then status 200



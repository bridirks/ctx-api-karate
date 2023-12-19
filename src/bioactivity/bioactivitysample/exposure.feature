Feature: Feature file for exposure


  Scenario: Testing the GET method for exposure  product-cat-keyword by dtxsid
    Given url ccd + '/ccdapp2/product-cat-keyword/search/by-dtxsid?id=DTXSID7020182'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for exposure  exposure-toxic-inventory by dtxsid
    Given url ccd + '/ccdapp2/product-cat-puc/search/by-dtxsid?id=DTXSID70201822'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 202

  Scenario: Testing the GET method for exposure  xposure-toxic-inventory by dtxsid
    Given url ccd + '/ccdapp2/exposure-toxic-inventory/search/by-dtxsid?id=DTXSID7020182'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for exposure  chemical-func-use by dtxsid
    Given url ccd + '/ccdapp2/exposure-chemical-func-use/search/by-dtxsid?id=DTXSID7020182'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for exposure  monitoring by dtxsid
    Given url ccd + '/ccdapp2/exposure-monitoring/search/by-dtxsid?id=DTXSID7020182'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for exposure  prediction by dtxsid
    Given url ccd + '/ccdapp2/exposure-prediction/search/by-dtxsid?id=DTXSID7020182'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for exposure  production-volume by dtxsid
    Given url ccd + '/ccdapp2/production-volume/search/by-dtxsid?id=DTXSID7020182'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for exposure  chemical-weight-fraction by dtxsid
    Given url ccd + '/ccdapp2/exposure-chemical-weight-fraction/search/by-dtxsid?id=DTXSID7020182'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for exposure  prediction by dtxsid
    Given url ccd + '/ccdapp2/exposure-prediction/search/by-dtxsid?id=DTXSID7020182'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for exposure  prediction by dtxsid
    Given url ccd + '/ccdapp2/generic-exposure-prediction/search/by-dtxsid?id=DTXSID40346656'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200




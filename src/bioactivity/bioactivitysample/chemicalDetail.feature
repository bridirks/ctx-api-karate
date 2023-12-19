Feature: Feature file for chemical details


  Scenario: Testing the GET method for chemical  details by dtxsid
    Given url ccd + '/ccdapp2/chemical-detail/search/by-dsstoxsid?id=DTXSID7020182'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical  details by dtxsid
    Given url ccd + '/ccdapp2/chemical-detail/search//by-dsstoxcid?id=DTXCID10931573'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



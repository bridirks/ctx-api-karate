Feature: Feature file for assay list


  Scenario: Testing the GET method for assay list details by endpoint name
    Given url ccd + '/ccdapp2/assay-list-details/search/by-endpointname?name=ACEA_ER_80hr'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay endpoint detail by endpoint name
    Given url ccd + '/ccdapp2/assay-endpoint-detail/search/by-endpointname?name=ACEA_AR_agonist_80hr'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method  assay list single conc by endpoint name
    Given url ccd + '/ccdapp2/assay-list-single-conc/search/by-endpointname?name=ACEA_ER_80hr'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



Feature: Feature file for chemical lists


  Scenario: Testing the GET method for chemical list details by listname
    Given url ccd + '/ccdapp2/assay-list-details/search/by-endpointname?name=ACEA_ER_80hr'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



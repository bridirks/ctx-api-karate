Feature: Feature file for assay search


  Scenario: Testing the GET method for assay search
    Given url ccd + 'ccdapp1/search/assay/start-with/ESR'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay search
    Given url ccd + 'ccdapp1/search/assay/contain/GLUCO'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



Feature: Feature file for chemical-lists


  Scenario: Testing the GET method for chemical search
    Given url ccd + 'ccdapp1/search/chemical/start-with/ACE'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by dtxcid
    Given url ccd + 'ccdapp1/search/chemical/start-with/DTXCID10931573'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by dtxcid
    Given url ccd + 'ccdapp1/search/chemical/contain/citrate'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



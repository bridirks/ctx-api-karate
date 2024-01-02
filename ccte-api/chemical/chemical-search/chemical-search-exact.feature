Feature: Feature file for chemical search resource (exact value)

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for chemical search by exact match of chemical name
    Given path '/chemical/search/equal/atrazine'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by exact match of dtxsid
    Given path '/chemical/search/equal/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by exact match of dtxcid
    Given path '/chemical/search/equal/DTXCID505'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by exact match of InChIKey
    Given path '/chemical/search/equal/MXWJVTOOROXGIU-UHFFFAOYSA-N'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemical search by exact match of CASRN
    Given path '/chemical/search/equal/1912-24-9'
    When method GET
    Then status 200

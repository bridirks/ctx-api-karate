@smoke
Feature: Feature file for chemical list resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for all list types
    Given path '/chemical/list/type'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public lists by type (projection = chemicallistall)
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public lists by type (projection = chemicallistname)
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public lists by type (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public lists by name (projection = chemicallistall)
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public lists by name (projection = chemicallistname)
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200
    And match response == {listName: '#present'}

  Scenario: Testing the GET method for public lists by name (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public lists by dtsxid (projection = chemicallistall)
    Given path '/chemical/list/search/by-dtxsid/DTXSID7020182'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public lists by dtxsid (projection = chemicallistname)
    Given path '/chemical/list/search/by-dtxsid/DTXSID7020182'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200

  Scenario: Testing the GET method for attributes of public lists by dtxsid (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-dtxsid/DTXSID7020182'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200

  Scenario: Testing the GET method for all public lists (projection = chemicallistall)
    Given url "https://api-ccte-stg.epa.gov/chemical/list/"
    And param projection = 'chemicallistall'
    When method GET
    Then status 200

  Scenario: Testing the GET method for all public lists (projection = chemicallistname)
    Given url "https://api-ccte-stg.epa.gov/chemical/list/"
    And param projection = 'chemicallistname'
    When method GET
    Then status 200

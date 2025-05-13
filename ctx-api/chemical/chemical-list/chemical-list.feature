@smoke
@chemical
@all
Feature: Feature file for chemical list resource

  Background:
    * url ctx
    * header Origin = origin
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for public list information by type (projection = chemicallistall)
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public list information by name (projection = chemicallistall)
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public list information by dtxsid (projection = chemicallistall)
    Given path '/chemical/list/search/by-dtxsid/DTXSID7020182'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200

  Scenario: Testing the GET method for information of all public lists (projection = chemicallistall)
    Given url ctx + "/chemical/list/"
    And param projection = 'chemicallistall'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public list names by type (projection = chemicallistname)
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public list names by name (projection = chemicallistname)
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public list names by dtxsid (projection = chemicallistname)
    Given path '/chemical/list/search/by-dtxsid/DTXSID7020182'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200

  Scenario: Testing the GET method for all public list names (projection = chemicallistname)
    Given url ctx + "/chemical/list/"
    And param projection = 'chemicallistname'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public list information by type if it contains dtxsids (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public list information by name if it contains dtxsids (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-name/FCCmigex'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public list information by dtxsid if it contains dtxsids (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-dtxsid/DTXSID7020182'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200

  Scenario: Testing the GET method for all public lists that contain dtxsids (projection = chemicallistwithdtxsids)
    Given url ctx + "/chemical/list/"
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200

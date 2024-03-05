@regression
@variables
Feature: Feature file for chemical list resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating response of the GET method for all list types
    Given path '/chemical/list/type'
    When method GET
    Then status 200
    And match response == ["federal","international","other","state"]

  Scenario: Validating the response of the GET method for attributes of public lists by type (projection = chemicallistall)
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', type: '#present', label: '#present', visibility: '#present', longDescription: '#present', chemicalCount: '#present', createdAt: '#present', updatedAt: '#present', listName: '#present', shortDescription: '#present'}

  Scenario: Validating the response of the GET method for the list name attribute of public lists by type (projection = chemicallistname)
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200
    And match response[0] == {listName: '#present'}

  Scenario: Validating the response of the GET method for attributes of public lists by type (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', type: '#present', label: '#present', visibility: '#present', longDescription: '#present', dtxsids: '#present', chemicalCount: '#present', createdAt: '#present', updatedAt: '#present', listName: '#present', shortDescription: '#present'}

  Scenario: Validating the response of the GET method for attributes of public lists by name (projection = chemicallistall)
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200
    And match response == {id: '#present', type: '#present', label: '#present', visibility: '#present', longDescription: '#present', chemicalCount: '#present', createdAt: '#present', updatedAt: '#present', listName: '#present', shortDescription: '#present'}

  Scenario: Validating the response of the GET method for the list name attribute in public lists by name (projection = chemicallistname)
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200
    And match response == {listName: '#present'}

  Scenario: Validating the response of the GET method for attributes of public lists by name (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200
    And match response == {id: '#present', type: '#present', label: '#present', visibility: '#present', longDescription: '#present', dtxsids: '#present', chemicalCount: '#present', createdAt: '#present', updatedAt: '#present', listName: '#present', shortDescription: '#present'}

  Scenario: Validating the response of the GET method for public lists by dtsxid (projection = chemicallistall)
    Given path '/chemical/list/search/by-dtxsid/DTXSID7020182'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', type: '#present', label: '#present', visibility: '#present', longDescription: '#present', dtxsids: '#present', chemicalCount: '#present', createdAt: '#present', updatedAt: '#present', listName: '#present', shortDescription: '#present'}

  Scenario: Validating the response of the GET method for the list name attribute in public lists by dtxsid (projection = chemicallistname)
    Given path '/chemical/list/search/by-dtxsid/DTXSID7020182'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200
    And match response[0] == {listName: '#present'}

  Scenario: Validating the response of the GET method for attributes of public lists by dtxsid (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-dtxsid/DTXSID7020182'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', type: '#present', label: '#present', visibility: '#present', longDescription: '#present', dtxsids: '#present', chemicalCount: '#present', createdAt: '#present', updatedAt: '#present', listName: '#present', shortDescription: '#present'}

  Scenario: Validating the response of the GET method for all public lists (projection = chemicallistall)
    Given url "https://api-ccte-stg.epa.gov/chemical/list/"
    And param projection = 'chemicallistall'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', type: '#present', label: '#present', visibility: '#present', longDescription: '#present', updatedAt: '#present', listName: '#present', chemicalCount: '#present', createdAt: '#present', shortDescription: '#present'}

  Scenario: Validating the response of the GET method for all public lists (projection = chemicallistname)
    Given url "https://api-ccte-stg.epa.gov/chemical/list/"
    And param projection = 'chemicallistname'
    When method GET
    Then status 200
    And match response[0] == {listName: '#present'}

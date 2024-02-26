@regression
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
    And match $ == ["federal","international","other","state"]

  Scenario: Validating the response of the GET method for attributes of public lists of type "other"
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200
    And match $ contains {id: #ignore, type: #ignore, label: #ignore, visibility: #ignore, longDescription: #ignore, chemicalCount: #ignore, createdAt: #ignore, updatedAt: #ignore, listName: #ignore, shortDescription: #ignore}

  Scenario: Validating the response of the GET method for the list name attribute of public lists of type "other"
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200
    And match $ contains {listName: #ignore}

  Scenario: Validating the response of the GET method for attributes of public lists of type "other"
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200
    And match $ contains {id: #ignore, type: #ignore, label: #ignore, visibility: #ignore, longDescription: #ignore, dtxsids: #ignore, chemicalCount: #ignore, createdAt: #ignore, updatedAt: #ignore, listName: #ignore, shortDescription: #ignore}

  Scenario: Validating the response of the GET method for attributes of public lists by name "ACSREAG"
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200
    And match $ contains {id: #ignore, type: #ignore, label: #ignore, visibility: #ignore, longDescription: #ignore, chemicalCount: #ignore, createdAt: #ignore, updatedAt: #ignore, listName: #ignore, shortDescription: #ignore}

  Scenario: Validating the response of the GET method for the list name attribute in public lists by name "ACSREAG"
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200
    And match $ == {listName: #ignore}

  Scenario: validating the response of the GET method for attributes of public lists by name "ACSREAG"
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200
    And match $ == {id: #ignore, type: #ignore, label: #ignore, visibility: #ignore, longDescription: #ignore, dtxsids: #ignore, chemicalCount: #ignore, createdAt: #ignore, updatedAt: #ignore, listName: #ignore, shortDescription: #ignore}

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
    And match $ contains {id: "#notnull", type: "other", label: "#notnull", longDescription: "#notnull", chemicalCount: "#notnull", createdDate: "#notnull", lastModifiedDate: "#notnull", name: "#notnull", shortDescription: "#notnull"}

  Scenario: Validating the response of the GET method for the list name attribute of public lists of type "other"
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200
    And match $ contains {name: "#notnull"}
    
#Need to Fix
  Scenario: validating the response of the GET method for attributes of public lists of type "other"
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200
    And match $ contains {id: "#notnull", type: "other", label: "#notnull", longDescription: "#notnull", dtxsids: "#notnull", chemicalCount: "#notnull", createdAt: "#notnull", updatedAt: "#notnull", name: "#notnull", shortDescription: "#notnull"}

  Scenario: Validating the response of the GET method for attributes of public lists by name "ACSREAG"
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200
    And match $ contains {id: "#notnull", type: "#notnull", label: "#notnull", "longDescription": "#notnull", chemicalCount: "#notnull", createdDate: "#notnull", lastModifiedDate: "#notnull", name: "ACSREAG", shortDescription: "#notnull"}

  Scenario: Validating the response of the GET method for the list name attribute in public lists by name "ACSREAG"
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistname'
    When method GET
    Then status 200
    And match $ == {"name": "ACSREAG"}

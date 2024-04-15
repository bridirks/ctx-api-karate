@ignore
@smoke
Feature: Feature file for chemical list resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for public lists by type (projection = chemicallistall)
    Given path '/chemical/list/search/by-type/other'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public lists by name (projection = chemicallistall)
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistall'
    When method GET
    Then status 200

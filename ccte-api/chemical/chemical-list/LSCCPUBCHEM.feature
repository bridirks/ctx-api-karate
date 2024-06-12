@smoke
@list
Feature: Feature file for chemical list resource with list name LCSSPUBCHEM

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for a specific public list by name
    Given path '/chemical/list/search/by-name/LCSSPUBCHEM'
    When method GET
    Then status 200

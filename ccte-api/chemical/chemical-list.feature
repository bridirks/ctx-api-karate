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

  Scenario: Testing the GET method for public lists by type
    Given path '/chemical/list/search/by-type/other'
    When method GET
    Then status 200

  Scenario: Testing the GET method for public lists by name
    Given path '/chemical/list/search/by-name/40CFR1164'
    When method GET
    Then status 200

  Scenario: Testing the GET method for list names by dtxsid
    Given path '/chemical/list/search/by-dtxsid/DTXSID1020560'
    When method GET
    Then status 200

  Scenario: Testing the GET method for chemicals in a specific list
    Given path '/chemical/list/chemicals/search/by-listname/40CFR1164'
    When method GET
    Then status 200

  Scenario: Testing the GET method for all public lists
    Given path '/chemical/list/'
    When method GET
    Then status 200

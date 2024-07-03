@ignore
@regression
@variables
Feature: Feature file for chemical list resource. Finding chemicals by listname

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for chemicals by listname
    Given path '/chemical/list/chemicals/search/by-listname/40CFR1164'
    When method GET
    Then status 200
    And match response == { }

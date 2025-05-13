@regression
@chemical
@all
Feature: Feature file for validating the response of the chemical list resource

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

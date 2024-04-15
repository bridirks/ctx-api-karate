@smoke
Feature: Feature file for chemical details resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for chemical details by dtxsid
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    When method GET
    Then status 200

  Scenario: Testing the POST method for chemical details by batch dtxsid
    Given url "https://api-ccte.epa.gov/chemical/detail/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200

  Scenario: Testing the GET method for chemical details by dtxcid
    Given path '/chemical/detail/search/by-dtxcid/DTXCID40210'
    When method GET
    Then status 200

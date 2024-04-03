@smoke
Feature: Feature file for bioactivity resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for assay annotation by aeid
    Given path '/bioactivity/assay/search/by-aeid/3032'
    When method GET
    Then status 200

  Scenario: Testing the POST method to get ALL assay annotation by aeid
    Given url "https://api-ccte.epa.gov/bioactivity/assay/"
    And request batchdtxsid
    When method POST

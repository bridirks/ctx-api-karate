@smoke
Feature: Feature file for exposure product data resource

  Background:
    * url 'https://api-ccte-stg.epa.gov'
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for product data resource by dtxsid
    Given path '/exposure/product-data/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the GET method for product data resource puc
    Given path '/exposure/product-data/puc'
    When method GET
    Then status 200

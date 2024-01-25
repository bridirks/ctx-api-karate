@smoke
Feature: Feature file for exposure resource

  Background:
    * url 'https://api-ccte-stg.epa.gov/'
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for functional use resource exposure data by dtxsid
    Given path 'exposure/functional-use/search/by-dtxsid/DTXSID0020232'
    When method GET
    Then status 200

  Scenario: Testing the GET method for functional use resource probability by dtxsid
    Given path 'exposure/functional-use/probability/search/by-dtxsid/DTXSID0020232'
    When method GET
    Then status 200

  Scenario: Testing the GET method for functional use resource category
    Given path 'exposure/functional-use/category'
    When method GET
    Then status 200

  Scenario: Testing the GET method for product data resource by dtxsid
    Given path 'exposure/product-data/search/by-dtxsid/DTXSID0020232'
    When method GET
    Then status 200

  Scenario: Testing the GET method for product data resource puc
    Given path 'exposure/product-data/puc'
    When method GET
    Then status 200

  Scenario: Testing the GET method for list prescence tags
    Given path 'exposure/list-prescence/tags'
    When method GET
    Then status 200

  Scenario: Testing the GET method for list prescence by dtxsid
    Given path 'exposure/list-prescence/search/by-dtxsid/DTXSID0020232'
    When method GET
    Then status 200

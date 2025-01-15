@smoke
Feature: Feature file for chemical GHS Link resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for chemical GHS Link by dtxsid
    Given path 'chemical/ghslink/to-dtxsid/DTXSID7020182'
    When method GET
    Then status 200

  Scenario: Testing the POST method for chemical GHS Link by batch dtxsid
    Given url "https://api-ccte.epa.gov/chemical/ghslink/to-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200


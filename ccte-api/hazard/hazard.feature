Feature: Feature file for hazard resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for hazard data by dtxsid
    Given path '/hazard/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200

  Scenario: Testing the GET method for human data by dtxsid
    Given path '/hazard/human/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200

  Scenario: Testing the GET method for eco data by dtxsid
    Given path 'hazard/eco/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200

  Scenario: Testing the POST method for hazard data by batch dtxsid
    Given url "https://api-ccte.epa.gov/hazard/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200

  Scenario: Testing the POST method for human data by batch dtxsid
    Given url "https://api-ccte.epa.gov/hazard/human/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200

  Scenario: Testing the POST method for eco data by batch dtxsid
    Given url "https://api-ccte.epa.gov/hazard/eco/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200

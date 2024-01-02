Feature: Feature file for cancer summary resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for cancer summary data by dtxsid
    Given path '/hazard/cancer-summary/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200

  Scenario: Testing the POST method for cancer summary data by batch dtxsid
    Given path '/hazard/cancer-summary/search/by-dtxsid/'
    And request example='["DTXSID7020182","DTXSID9020112"]'
    When method POST
    Then status 201

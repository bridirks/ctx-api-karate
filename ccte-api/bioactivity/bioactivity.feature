Feature: Feature file for bioactivity resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for bioactivity data by dtxsid
    Given path '/bioactivity/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200

  Scenario: Testing the GET method for bioactivity data by aeid
    Given path '/bioactivity/search/by-aeid/1386'
    When method GET
    Then status 200

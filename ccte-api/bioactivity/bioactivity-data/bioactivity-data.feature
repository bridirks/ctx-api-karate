@smoke
@bioactivity
Feature: Feature file for bioactivity resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for bioactivity data by dtxsid
    Given path '/bioactivity/data/search/by-dtxsid/DTXSID9026974'
    When method GET
    Then status 200

  Scenario: Testing the GET method for bioactivity data by m4id
    Given path '/bioactivity/data/search/by-m4id/1135145'
    When method GET
    Then status 200

  Scenario: Testing the GET method for bioactivity data by aeid
    Given path '/bioactivity/data/search/by-aeid/3032'
    When method GET
    Then status 200

  Scenario: Testing the GET method for bioactivity data by spid
    Given path '/bioactivity/data/search/by-spid/EPAPLT0232A03'
    When method GET
    Then status 200

  Scenario: Testing the GET method for bioactivity data summary by aeid
    Given path '/bioactivity/data/summary/search/by-aeid/3032'
    When method GET
    Then status 200

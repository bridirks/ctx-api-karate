@smoke
@all
@bioactivity
Feature: Feature file for bioactivity resource

  Background:
    * url ctx
    * header Origin = origin
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for bioactivity data by dtxsid
    Given path '/bioactivity/data/search/by-dtxsid/DTXSID9026974'
    When method GET
    Then status 200

  Scenario: Testing the POST method for bioactivity data by batch dtxsid
    Given url ctx + "/bioactivity/data/search/by-dtxsid/"
    And request ["DTXSID9026974","DTXSID9020112"]
    When method POST
    Then status 200

  Scenario: Testing the GET method for bioactivity data by m4id
    Given path '/bioactivity/data/search/by-m4id/1135145'
    When method GET
    Then status 200

  Scenario: Testing the POST method for bioactivity data by batch m4id
    Given url ctx + "/bioactivity/data/search/by-m4id/"
    And request ["1135145","394876"]
    When method POST
    Then status 200

  Scenario: Testing the GET method for bioactivity data by aeid
    Given path '/bioactivity/data/search/by-aeid/3032'
    When method GET
    Then status 200

  Scenario: Testing the POST method for bioactivity data by batch aeid
    Given url ctx + "/bioactivity/data/search/by-aeid/"
    And request ["3032","755"]
    When method POST
    Then status 200

  Scenario: Testing the GET method for bioactivity data by spid
    Given path '/bioactivity/data/search/by-spid/EPAPLT0232A03'
    When method GET
    Then status 200

  Scenario: Testing the POST method for bioactivity data by batch spid
    Given url ctx + "/bioactivity/data/search/by-spid/"
    And request ["EPAPLT0232A03","TP0000311A04"]
    When method POST
    Then status 200

  Scenario: Testing the GET method for bioactivity data by dtxsid AND tissue
    Given url ctx + "/bioactivity/data/summary/search/by-tissue/"
    And param dtxsid = 'DTXSID7024241'
    And param tissue = 'liver'
    When method GET
    Then status 200

  Scenario: Testing the GET method for bioactivity data summary by aeid
    Given path '/bioactivity/data/summary/search/by-aeid/3032'
    When method GET
    Then status 200

  Scenario: Testing the GET method for bioactivity data summary by dtxsid
    Given path '/bioactivity/data/summary/search/by-dtxsid/DTXSID9026974'
    When method GET
    Then status 200

  @ignore
  Scenario: Testing the POST method for bioactivity data summary by batch
    Given url ctx + "/bioactivity/data/summary/batchsearch/"
    And request '1210314470\nEPAPLT0232A03\nTP0000075F10\nPhenobarbital\nEPAPLT0237A04'
    When method POST
    Then status 200

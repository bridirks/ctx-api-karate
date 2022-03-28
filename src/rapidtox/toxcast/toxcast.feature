Feature: Feature file for toxcast

Background:
  * def dtxsids = ["DTXSID9021390", "DTXSID0020523"]

Scenario: Testing the GET method for session-recall
  Given url baseUrl + '/rapidtox/bioactivity/toxcast/by-dtxsids'
  And request ["DTXSID9021390", "DTXSID0020523"]
  And header Content-Type = 'application/json; charset=utf-8'
  When method post
  Then status 200
  And match response[*].dtxsid contains 'DTXSID0020523'


Scenario: Testing a GET endpoint with DTXSID as a search parameter
  Given url baseUrl + '/rapidtox/toxcast-model/search/by-dtxsid?dtxsid=DTXSID001001267'
  When method GET
  Then status 200
  And response.dtxsid == 'DTXSID001001267'

Scenario: Testing a GET endpoint with an invalid DTXSID
  Given url baseUrl + '/rapidtox/toxcast-model/search/by-dtxsid?dtxsid='
  When method GET
  Then status 200
  And assert response.content.length === 1




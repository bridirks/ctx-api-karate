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

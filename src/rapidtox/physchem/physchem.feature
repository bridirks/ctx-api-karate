
Feature: Feature file for physchem

  Scenario: Testing the GET method for retrieving physchem data by DTXSID
    Given url rapidtox + '/physchem/summary/DTXSID0020022'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    Then assert response.length > 0


  Scenario: Testing the GET method for retrieving physchem data by an invalid DTXSID
    Given url rapidtox + '/physchem/summary/invalid'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    Then match response == []

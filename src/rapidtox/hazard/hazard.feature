
Feature: Feature file for hazard

  Scenario: Testing the GET method for retrieving pod data by DTXSID
    Given url rapidtox + '/hazard/pod/DTXSID0020022'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for retrieving pod data by DTXSID using an invalid search
    Given url rapidtox + '/hazard/pod/invalid'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    Then match response == []

  Scenario: Testing the GET method for retrieving tox data by DTXSID
    Given url rapidtox + '/hazard/tox/DTXSID0020022'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for retrieving pod data by DTXSID using an invalid search
    Given url rapidtox + '/hazard/tox/invalid'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    Then match response == []


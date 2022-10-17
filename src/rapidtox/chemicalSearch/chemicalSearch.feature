
Feature: Feature file for chemical search

  Scenario: Testing the get method for a chemical search with a valid chemical name
    Given url rapidtox + '/chemical/search/start-with/atraz'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the get method for a chemical search for an invalid search
    Given url rapidtox + '/chemical/search/start-with/'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 404

  Scenario: Testing the GET method for retrieving recent search results
    Given url rapidtox + '/chemical/search/recent-search'
    And header Content-Type = 'application/json; charset=utf-8'
    And header x-user = 'username'
    When method GET
    Then status 200



@regression
@business
Feature: Feature file for data validation of chemical search resource (substring)

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Ensure that 'contain' endpoint does not include results based on inchikey when search term has less than 13 characters
    Given path '/chemical/search/contain/nafion'
    When method GET
    Then status 200
    And match response.dtxsid !contains ['DTXSID10785417']

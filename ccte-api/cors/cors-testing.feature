Feature: CORS Requests

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey
    
  Scenario: Allowed Website1
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And header Origin = 'http://localhost:3003'
    When method GET
    Then status 200
    And match header Access-Control-Allow-Origin == 'http://localhost:3003'
    And match header Vary contains 'Origin'

  Scenario: Allowed Website2
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And header Origin = 'http://localhost:8888'
    When method GET
    Then status 200
    And match header Access-Control-Allow-Origin == 'http://localhost:3003'
    And match header Vary contains 'Origin'

  Scenario: Allowed Website3
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And header Origin = 'https://ccte-ccd-dev.epa.gov'
    When method GET
    Then status 200
    And match header Access-Control-Allow-Origin == 'http://localhost:3003'
    And match header Vary contains 'Origin'

  Scenario: Allowed Website4
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And header Origin = 'https://ccte-ccd-stg.epa.gov'
    When method GET
    Then status 200
    And match header Access-Control-Allow-Origin == 'http://localhost:3003'
    And match header Vary contains 'Origin'

  Scenario: Allowed Website5
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And header Origin = 'https://ccte-ccd-prod.epa.gov'
    When method GET
    Then status 200
    And match header Access-Control-Allow-Origin == 'http://localhost:3003'
    And match header Vary contains 'Origin'

  Scenario: Allowed Website6
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And header Origin = 'https://comptox.epa.gov'
    When method GET
    Then status 200
    And match header Access-Control-Allow-Origin == 'http://localhost:3003'
    And match header Vary contains 'Origin'

  Scenario: Allowed Website7
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And header Origin = 'https://ccte-api-s.app.cloud.gov'
    When method GET
    Then status 200
    And match header Access-Control-Allow-Origin == 'http://localhost:3003'
    And match header Vary contains 'Origin'

  Scenario: Unknown Website Not Allowed
    Given path '/chemical/detail/search/by-dtxsid/DTXSID20144773'
    And header Origin = 'https://example.com'
    When method GET
    Then status 200
    And match header Access-Control-Allow-Origin == 'http://localhost:3003'
    And match header Vary contains 'Origin'

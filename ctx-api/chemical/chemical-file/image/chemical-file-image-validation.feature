@regression
@all
@chemical
Feature: Feature file validating responses for chemical file resource

  Background:
    * url ctx
    * header Origin = origin
    * header Accept = '*/*'

  Scenario: Validating the format response of the GET method for structure image by dtxsid
    Given path '/chemical/file/image/search/by-dtxsid/DTXSID7020182'
    And param format = 'SVG'
    When method GET
    Then status 200
    And match header Content-Type == 'image/svg+xml'

  Scenario: Validating the format response of the GET method for structure image by dtxsid
    Given path '/chemical/file/image/search/by-dtxsid/DTXSID7020182'
    And param format = 'PNG'
    When method GET
    Then status 200
    And match header Content-Type == 'image/png'

  Scenario: Validating the format response of the GET method for structure image by dtxsid (no specified format == PNG)
    Given path '/chemical/file/image/search/by-dtxsid/DTXSID7020182'
    When method GET
    Then status 200
    And match header Content-Type == 'image/png'

  Scenario: Validating the format response of the GET method for structure image by dtxcid
    Given path '/chemical/file/image/search/by-dtxcid/DTXCID505'
    And param format = 'SVG'
    When method GET
    Then status 200
    And match header Content-Type == 'image/svg+xml'

  Scenario: Validating the format response of the GET method for structure image by dtxcid
    Given path '/chemical/file/image/search/by-dtxcid/DTXCID505'
    And param format = 'PNG'
    When method GET
    Then status 200
    And match header Content-Type == 'image/png'

  Scenario: Validating the format response of the GET method for structure image by dtxcid (no specified format == PNG)
    Given path '/chemical/file/image/search/by-dtxcid/DTXCID505'
    When method GET
    Then status 200
    And match header Content-Type == 'image/png'

  Scenario: Validating the format response of the GET method for structure image by gsid
    Given path 'chemical/file/image/search/by-gsid/20182'
    And param format = 'SVG'
    When method GET
    Then status 200
    And match header Content-Type == 'image/svg+xml'

  Scenario: Validating the format response of the GET method for structure image by gsid
    Given path 'chemical/file/image/search/by-gsid/20182'
    And param format = 'PNG'
    When method GET
    Then status 200
    And match header Content-Type == 'image/png'

  Scenario: Validating the format response of the GET method for structure image by gsid (no specified format == PNG)
    Given path 'chemical/file/image/search/by-gsid/20182'
    When method GET
    Then status 200
    And match header Content-Type == 'image/png'

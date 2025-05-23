@regression
@bioactivity
@all
Feature: Feature file for validating responses of bioactivity Toxcast AOP resources

  Background:
    * url ctx
    * header Origin = origin
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the GET method for AOP search using toxcast aeid
    Given path '/bioactivity/aop/search/by-toxcast-aeid/63'
    When method GET
    Then status 200
    And match response == {toxcastAeid: '#present', entrezGeneId: '#present', eventNumber: '#present', eventLink: '#present', aopNumber: '#present', aopLink: '#present'}

  Scenario: Validating the response of the GET method for AOP search using entrez gene id
    Given path '/bioactivity/aop/search/by-entrez-gene-id/196'
    When method GET
    Then status 200
    And match response == {toxcastAeid: '#present', entrezGeneId: '#present', eventNumber: '#present', eventLink: '#present', aopNumber: '#present', aopLink: '#present'}

  Scenario: Validating the response of the GET method for AOP search using event number
    Given path '/bioactivity/aop/search/by-event-number/18'
    When method GET
    Then status 200
    And match response == {toxcastAeid: '#present', entrezGeneId: '#present', eventNumber: '#present', eventLink: '#present', aopNumber: '#present', aopLink: '#present'}

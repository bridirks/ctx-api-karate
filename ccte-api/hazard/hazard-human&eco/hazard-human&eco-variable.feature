@regression
@variables
Feature: Feature file for validating the response of the hazard human&eco resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for hazard human&eco data by dtxsid
    Given path '/hazard/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', year: '#present', source: '#present', dtxsid: '#present', exposureRoute: '#present', priorityId: '#present', subsource: '#present', sourceUrl: '#present', subsourceUrl: '#present', riskAssessmentClass: '#present', toxvalType: '#present', toxvalSubtype: '#present', toxvalNumeric: '#present', toxvalNumericQualifier: '#present', toxvalUnits: '#present', studyType: '#present', studyDurationClass: '#present', studyDurationValue: '#present', studyDurationUnits: '#present', strain: '#present', sex: '#present', population: '#present', exposureMethod: '#present', exposureForm: '#present', media: '#present', lifestage: '#present', generation: '#present', criticalEffect: '#present', detailText: '#present', supercategory: '#present', speciesCommon: '#present', humanEcoNt: '#present'}

  Scenario: Testing the POST method for hazard human&eco data by batch dtxsid
    Given url "https://api-ccte.epa.gov/hazard/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200    
    And match response[0] == {id: '#present', year: '#present', source: '#present', dtxsid: '#present', exposureRoute: '#present', priorityId: '#present', subsource: '#present', sourceUrl: '#present', subsourceUrl: '#present', riskAssessmentClass: '#present', toxvalType: '#present', toxvalSubtype: '#present', toxvalNumeric: '#present', toxvalNumericQualifier: '#present', toxvalUnits: '#present', studyType: '#present', studyDurationClass: '#present', studyDurationValue: '#present', studyDurationUnits: '#present', strain: '#present', sex: '#present', population: '#present', exposureMethod: '#present', exposureForm: '#present', media: '#present', lifestage: '#present', generation: '#present', criticalEffect: '#present', detailText: '#present', supercategory: '#present', speciesCommon: '#present', humanEcoNt: '#present'}

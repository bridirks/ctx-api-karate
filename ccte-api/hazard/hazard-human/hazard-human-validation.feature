@regression
@variables
Feature: Feature file for validating the responses of the hazard human resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for human data by dtxsid
    Given path '/hazard/human/search/by-dtxsid/DTXSID0021125'
    When method GET
    Then status 200
    And match response[0] == {id: '#present', year: '#present', source: '#present', dtxsid: '#present', exposureRoute: '#present', priorityId: '#present', subsource: '#present', sourceUrl: '#present', subsourceUrl: '#present', riskAssessmentClass: '#present', toxvalType: '#present', toxvalSubtype: '#present', toxvalNumeric: '#present', toxvalNumericQualifier: '#present', toxvalUnits: '#present', studyType: '#present', studyDurationClass: '#present', studyDurationValue: '#present', studyDurationUnits: '#present', strain: '#present', sex: '#present', population: '#present', exposureMethod: '#present', exposureForm: '#present', media: '#present', lifestage: '#present', generation: '#present', criticalEffect: '#present', detailText: '#present', supercategory: '#present', speciesCommon: '#present', humanEcoNt: '#present'}


  Scenario: Testing the POST method for human data by batch dtxsid
    Given url "https://api-ccte-stg.epa.gov/hazard/human/search/by-dtxsid/"
    And request batchdtxsid
    When method POST
    Then status 200
    And match response[0] == {id: '#present', year: '#present', source: '#present', dtxsid: '#present', exposureRoute: '#present', priorityId: '#present', subsource: '#present', sourceUrl: '#present', subsourceUrl: '#present', riskAssessmentClass: '#present', toxvalType: '#present', toxvalSubtype: '#present', toxvalNumeric: '#present', toxvalNumericQualifier: '#present', toxvalUnits: '#present', studyType: '#present', studyDurationClass: '#present', studyDurationValue: '#present', studyDurationUnits: '#present', strain: '#present', sex: '#present', population: '#present', exposureMethod: '#present', exposureForm: '#present', media: '#present', lifestage: '#present', generation: '#present', criticalEffect: '#present', detailText: '#present', supercategory: '#present', speciesCommon: '#present', humanEcoNt: '#present'}

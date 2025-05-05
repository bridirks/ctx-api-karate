@regression
@all
@bioactivity
Feature: Feature file to validate responses of bioactivity assay annotation resource

  Background:
    * url ctx
    * header Origin = origin
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for assay annotation by aeid
    Given path '/bioactivity/assay/search/by-aeid/3032'
    When method GET
    Then status 200
    And match response == {aeid: '#present', assayComponentEndpointName: '#present', assayComponentEndpointDesc: '#present', assayFunctionType: '#present', normalizedDataType: '#present', burstAssay: '#present', keyPositiveControl: '#present', signalDirection: '#present', intendedTargetType: '#present', intendedTargetTypeSub: '#present', intendedTargetFamily: '#present', intendedTargetFamilySub: '#present', cellViabilityAssay: '#present',  acid: '#present', assayComponentName: '#present', assayComponentDesc: '#present', assayComponentTargetDesc: '#present', parameterReadoutType: '#present', assayDesignType: '#present', assayDesignTypeSub: '#present', biologicalProcessTarget: '#present', detectionTechnologyType: '#present', detectionTechnologyTypeSub: '#present', detectionTechnology: '#present', keyAssayReagentType: '#present', keyAssayReagent: '#present', technologicalTargetType: '#present', technologicalTargetTypeSub: '#present', aid: '#present', assayName: '#present', assayDesc: '#present', timepointHr: '#present', organismId: '#present', organism: '#present', tissue: '#present', cellFormat: '#present', cellFreeComponentSource: '#present', cellShortName: '#present', cellGrowthMode: '#present', assayFootprint: '#present', assayFormatType: '#present', assayFormatTypeSub: '#present', contentReadoutType: '#present', dilutionSolvent: '#present', dilutionSolventPercentMax: '#present', asid: '#present', assaySourceName: '#present', assaySourceLongName: '#present', assaySourceDesc: '#present', clowderUid: '#present', gene: '#present', assayList: '#present', citations: '#present', assay_reagent: '#present', mc2_methods: '#present', mc3_methods: '#present', mc4_methods: '#present', mc5_methods: '#present', mc6_methods: '#present', sc1_methods: '#present', sc2_methods: '#present'}

  Scenario: Testing the POST method to get ALL assay annotation by aeid
    Given url ctx + "/bioactivity/assay/"
    When method GET
    And match response[0] == {aeid: '#present', assayComponentEndpointName: '#present', assayComponentEndpointDesc: '#present', assayFunctionType: '#present', normalizedDataType: '#present', burstAssay: '#present', keyPositiveControl: '#present', signalDirection: '#present', intendedTargetType: '#present', intendedTargetTypeSub: '#present', intendedTargetFamily: '#present', intendedTargetFamilySub: '#present', cellViabilityAssay: '#present', acid: '#present', assayComponentName: '#present', assayComponentDesc: '#present', assayComponentTargetDesc: '#present', parameterReadoutType: '#present', assayDesignType: '#present', assayDesignTypeSub: '#present', biologicalProcessTarget: '#present', detectionTechnologyType: '#present', detectionTechnologyTypeSub: '#present', detectionTechnology: '#present', keyAssayReagentType: '#present', keyAssayReagent: '#present', technologicalTargetType: '#present', technologicalTargetTypeSub: '#present', aid: '#present', assayName: '#present', assayDesc: '#present', timepointHr: '#present', organismId: '#present', organism: '#present', tissue: '#present', cellFormat: '#present', cellFreeComponentSource: '#present', cellShortName: '#present', cellGrowthMode: '#present', assayFootprint: '#present', assayFormatType: '#present', assayFormatTypeSub: '#present', contentReadoutType: '#present', dilutionSolvent: '#present', dilutionSolventPercentMax: '#present', asid: '#present', assaySourceName: '#present', assaySourceLongName: '#present', assaySourceDesc: '#present', clowderUid: '#present', gene: '#present', assayList: '#present', citations: '#present', assay_reagent: '#present', mc2_methods: '#present', mc3_methods: '#present', mc4_methods: '#present', mc5_methods: '#present', mc6_methods: '#present', sc1_methods: '#present', sc2_methods: '#present'}

      Scenario: Testing the GET method for assay data by aeid (projection = ccd-assay-annotation)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-assay-annotation'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-assay-gene)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-assay-gene'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay data by aeid (projection ccd-assay-citations)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-assay-citations'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-assay-tcpl)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-assay-tcpl'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-assay-reagents)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-assay-reagents'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay data by aeid (projection = assay-all)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'assay-all'
    When method GET
    Then status 200

  Scenario: Testing the GET method for assay data by aeid (projection = ccd-single-conc)
    Given path '/bioactivity/assay/search/by-aeid/3032'
    And param projection = 'ccd-single-conc'
    When method GET
    Then status 200

  Scenario: Testing the GET method for array of dtxsids by aeid
    Given path '/bioactivity/assay/chemicals/search/by-aeid/3032'
    When method GET
    Then status 200

Feature: Test GenRA slow_tests functions.
# Generated Fri Nov  4 22:00:36 2022

  Scenario: Testing the GET method uiRadialView with bio_txct:DTXCID40662:9:0.1:no_filter:tox_txrf:tox_fp:1:1
    * configure readTimeout = 180000
    Given url genra + '/genra-api/api/genra/v4/uiRadialView/?chem_id=DTXCID40662&k0=9&s0=0.1&fp=bio_txct&sel_by=no_filter&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.report_db.length == 3
    And assert response.result.length == 10
    And match response.sel_by == 'no_filter'

  Scenario: Testing the GET method uiFingerPrintHeatChart with bio_txct:DTXCID40662:9:0.1:no_filter:tox_txrf:tox_fp:1:1
    * configure readTimeout = 180000
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID40662&k0=9&s0=0.1&fp=bio_txct&sel_by=no_filter&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 10

  Scenario: Testing the GET method uiAssayList with chm_mrgn:DTXCID501455110:10:0.1:no_filter:tox_txrf:tox_fp:1:1
    * configure readTimeout = 180000
    Given url genra + '/genra-api/api/genra/v4/uiAssayList/?chem_id=DTXCID501455110&k0=10&s0=0.1&fp=chm_mrgn&sel_by=no_filter&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 12
    And assert response.data.length == 1

  Scenario: Testing the GET method uiSetup with chm_mrgn:DTXCID501455110:10:0.1:no_filter:tox_txrf:tox_fp:1:1
    * configure readTimeout = 180000
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXCID501455110&k0=10&s0=0.1&fp=chm_mrgn&sel_by=no_filter&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.chem_id == 'DTXCID501455110'
    And assert response.download.length == 5
    And match response.dsstox_cid == 'DTXCID501455110'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And assert response.neighbor_by.length == 11
    And match response.smiles == 'CCCCCCCCC=CCCCCCCCCCCCC(=O)OCCCCCCCCC=CCC(O)CCCCCC'

  Scenario: Testing the GET method uiFingerPrintHeatChart with chm_mrgn:DTXCID501455110:10:0.1:no_filter:tox_txrf:tox_fp:1:1
    * configure readTimeout = 180000
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID501455110&k0=10&s0=0.1&fp=chm_mrgn&sel_by=no_filter&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 11

  Scenario: Testing the GET method uiRadialView with chm_mrgn:DTXCID501455110:10:0.1:no_filter:tox_txrf:tox_fp:1:1
    * configure readTimeout = 180000
    Given url genra + '/genra-api/api/genra/v4/uiRadialView/?chem_id=DTXCID501455110&k0=10&s0=0.1&fp=chm_mrgn&sel_by=no_filter&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.report_db.length == 3
    And assert response.result.length == 11
    And match response.sel_by == 'no_filter'

  Scenario: Testing the GET method uiGenerateReadAcross with chm_mrgn:DTXCID501455110:10:0.1:no_filter:tox_txrf:tox_fp:1:1
    * configure readTimeout = 180000
    Given url genra + '/genra-api/api/genra/v4/uiGenerateReadAcross/?chem_id=DTXCID501455110&k0=10&s0=0.1&fp=chm_mrgn&sel_by=no_filter&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 13
    And assert response.data.length == 8
    And assert response.predEngines.length == 2

  Scenario: Testing the POST method uiRunReadAcross with chm_mrgn:DTXCID501455110:10:0.1:no_filter:tox_txrf:tox_fp:1:1
    * configure readTimeout = 180000
    * text body =
"""
{"fp": "chm_mrgn", "k0": 10, "s0": 0.1, "chem_id": "DTXCID501455110", "sel_by": "no_filter", "neg0": 1, "pos0": 1, "engine": "genrapred", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID501455110"}, {"isChecked": true, "chem_id": "DTXCID301629959"}, {"isChecked": true, "chem_id": "DTXCID901385923"}, {"isChecked": true, "chem_id": "DTXCID201595864"}, {"isChecked": true, "chem_id": "DTXCID001651547"}, {"isChecked": true, "chem_id": "DTXCID201506520"}, {"isChecked": true, "chem_id": "DTXCID501703335"}, {"isChecked": true, "chem_id": "DTXCID001691541"}, {"isChecked": true, "chem_id": "DTXCID301692112"}, {"isChecked": true, "chem_id": "DTXCID701685305"}, {"isChecked": true, "chem_id": "DTXCID301703177"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID501455110&k0=10&s0=0.1&fp=chm_mrgn&sel_by=no_filter&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 13
    And assert response.data.length == 8

  Scenario: Testing the GET method uiGenerateReadAcross with chm_mrgn:DTXCID30182:10:0.1:no_filter:tox_txrf:tox_fp:1:1
    * configure readTimeout = 180000
    Given url genra + '/genra-api/api/genra/v4/uiGenerateReadAcross/?chem_id=DTXCID30182&k0=10&s0=0.1&fp=chm_mrgn&sel_by=no_filter&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 13
    And assert response.data.length == 104
    And assert response.predEngines.length == 2

  Scenario: Testing the POST method uiRunReadAcross with chm_mrgn:DTXCID30182:10:0.1:no_filter:tox_txrf:tox_fp:1:1
    * configure readTimeout = 180000
    * text body =
"""
{"fp": "chm_mrgn", "k0": 10, "s0": 0.1, "chem_id": "DTXCID30182", "sel_by": "no_filter", "neg0": 1, "pos0": 1, "engine": "genrapred", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID30182"}, {"isChecked": true, "chem_id": "DTXCID10626452"}, {"isChecked": true, "chem_id": "DTXCID80697917"}, {"isChecked": true, "chem_id": "DTXCID3032381"}, {"isChecked": true, "chem_id": "DTXCID90692635"}, {"isChecked": true, "chem_id": "DTXCID7029586"}, {"isChecked": true, "chem_id": "DTXCID20806142"}, {"isChecked": true, "chem_id": "DTXCID90727613"}, {"isChecked": true, "chem_id": "DTXCID401344576"}, {"isChecked": true, "chem_id": "DTXCID50718562"}, {"isChecked": true, "chem_id": "DTXCID30590626"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID30182&k0=10&s0=0.1&fp=chm_mrgn&sel_by=no_filter&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 13
    And assert response.data.length == 104

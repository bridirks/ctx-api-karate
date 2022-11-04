Feature: Test GenRA uiFastNN functions.
# Generated Fri Nov  4 22:00:31 2022

  Scenario: Testing the GET method uiFastNN with bio_txct:DTXCID50485:5:0.2:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFastNN/?chem_id=DTXCID50485&k0=5&s0=0.2&fp=bio_txct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.edges.length == 36
    And assert Object.keys(response.nodes).length == 36

  Scenario: Testing the GET method uiFastNN with bio_htpp_U2OS:DTXCID9031147:5:0.001:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFastNN/?chem_id=DTXCID9031147&k0=5&s0=0.001&fp=bio_htpp_U2OS&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.edges.length == 56
    And assert Object.keys(response.nodes).length == 57

  Scenario: Testing the GET method uiFastNN with tox_txrf:DTXCID606:5:0.1:tox_txrf:tox_txrf:tox_fp_dosage:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFastNN/?chem_id=DTXCID606&k0=5&s0=0.1&fp=tox_txrf&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp_dosage&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.edges.length == 65
    And assert Object.keys(response.nodes).length == 66

  Scenario: Testing the GET method uiFastNN with chm_mrgn:DTXCID90150942:15:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFastNN/?chem_id=DTXCID90150942&k0=15&s0=0.1&fp=chm_mrgn&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.edges.length == 217
    And assert Object.keys(response.nodes).length == 218

  Scenario: Testing the GET method uiFastNN with bio_txct:DTXCID30182:5:0.1:tox_txrf:tox_txrf:tox_fp_dosage:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFastNN/?chem_id=DTXCID30182&k0=5&s0=0.1&fp=bio_txct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp_dosage&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.edges.length == 58
    And assert Object.keys(response.nodes).length == 59

  Scenario: Testing the GET method uiFastNN with chm_httr:DTXCID606:10:0.1:bio_txct:bio_txct:bio_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFastNN/?chem_id=DTXCID606&k0=10&s0=0.1&fp=chm_httr&sel_by=bio_txct&summarise=bio_txct&sumrs_by=bio_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.edges.length == 151
    And assert Object.keys(response.nodes).length == 151

  Scenario: Testing the GET method uiFastNN with chm_ct:DTXCID8047:5:0.2:tox_txrf:tox_txrf:tox_fp:3:3
    Given url genra + '/genra-api/api/genra/v4/uiFastNN/?chem_id=DTXCID8047&k0=5&s0=0.2&fp=chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=3&neg0=3'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.edges.length == 75
    And assert Object.keys(response.nodes).length == 76

  Scenario: Testing the GET method uiFastNN with bio_txct:DTXSID0034695:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFastNN/?chem_id=DTXSID0034695&k0=10&s0=0.1&fp=bio_txct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.edges.length == 93
    And assert Object.keys(response.nodes).length == 94

  Scenario: Testing the GET method uiFastNN with chm_ct:DTXCID00408880:8:0.1:bio_txct:bio_txct:bio_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFastNN/?chem_id=DTXCID00408880&k0=8&s0=0.1&fp=chm_ct&sel_by=bio_txct&summarise=bio_txct&sumrs_by=bio_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.edges.length == 220
    And assert Object.keys(response.nodes).length == 221

  Scenario: Testing the GET method uiFastNN with chm_mrgn,chm_httr:DTXCID30182:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFastNN/?chem_id=DTXCID30182&k0=10&s0=0.1&fp=chm_mrgn,chm_httr&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&fp_weight=1,1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.edges.length == 317
    And assert Object.keys(response.nodes).length == 245

  Scenario: Testing the GET method uiFastNN with chm_mrgn,bio_txct:DTXCID30182:15:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFastNN/?chem_id=DTXCID30182&k0=15&s0=0.1&fp=chm_mrgn,bio_txct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&fp_weight=4,10'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.edges.length == 450
    And assert Object.keys(response.nodes).length == 407

  Scenario: Testing the GET method uiFastNN with chm_ct:DTXCID401478006:12:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFastNN/?chem_id=DTXCID401478006&k0=12&s0=0.1&fp=chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.edges.length == 410
    And assert Object.keys(response.nodes).length == 411

  Scenario: Testing the GET method uiFastNN with chm_mrgn:DTXCID30182:15:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFastNN/?chem_id=DTXCID30182&k0=15&s0=0.1&fp=chm_mrgn&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.edges.length == 297
    And assert Object.keys(response.nodes).length == 297

  Scenario: Testing the GET method uiFastNN with chm_ct:DTXCID50273:5:0.2:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFastNN/?chem_id=DTXCID50273&k0=5&s0=0.2&fp=chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.edges.length == 32
    And assert Object.keys(response.nodes).length == 32

  Scenario: Testing the GET method uiFastNN with tox_txrf:DTXCID704235:5:0.2:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFastNN/?chem_id=DTXCID704235&k0=5&s0=0.2&fp=tox_txrf&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.edges.length == 81
    And assert Object.keys(response.nodes).length == 82

  Scenario: Testing the GET method uiFastNN with bio_txct,tox_txrf,chm_ct:DTXCID30182:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFastNN/?chem_id=DTXCID30182&k0=10&s0=0.1&fp=bio_txct,tox_txrf,chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&fp_weight=3,2,5'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.edges.length == 445
    And assert Object.keys(response.nodes).length == 392

  Scenario: Testing the GET method uiFastNN with chm_httr:DTXCID30182:5:0.2:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFastNN/?chem_id=DTXCID30182&k0=5&s0=0.2&fp=chm_httr&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.edges.length == 60
    And assert Object.keys(response.nodes).length == 60

Feature: Test GenRA uiFingerPrintHeatChart functions.
# Generated Fri Nov  4 22:00:33 2022

  Scenario: Testing the GET method uiFingerPrintHeatChart with chm_httr:DTXCID30182:5:0.2:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID30182&k0=5&s0=0.2&fp=chm_httr&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 6

  Scenario: Testing the GET method uiFingerPrintHeatChart with chm_ct:DTXCID8047:5:0.2:tox_txrf:tox_txrf:tox_fp:3:3
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID8047&k0=5&s0=0.2&fp=chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=3&neg0=3'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 6

  Scenario: Testing the GET method uiFingerPrintHeatChart with chm_ct:DTXCID50273:5:0.2:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID50273&k0=5&s0=0.2&fp=chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 6

  Scenario: Testing the GET method uiFingerPrintHeatChart with chm_mrgn:DTXCID90150942:15:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID90150942&k0=15&s0=0.1&fp=chm_mrgn&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 3

  Scenario: Testing the GET method uiFingerPrintHeatChart with tox_txrf:DTXCID704235:5:0.2:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID704235&k0=5&s0=0.2&fp=tox_txrf&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 6

  Scenario: Testing the GET method uiFingerPrintHeatChart with bio_txct:DTXCID50485:5:0.2:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID50485&k0=5&s0=0.2&fp=bio_txct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 6

  Scenario: Testing the GET method uiFingerPrintHeatChart with chm_mrgn:DTXCID30182:2:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID30182&k0=2&s0=0.1&fp=chm_mrgn&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 3

  Scenario: Testing the GET method uiFingerPrintHeatChart with chm_mrgn,chm_httr:DTXCID30182:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID30182&k0=10&s0=0.1&fp=chm_mrgn,chm_httr&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&fp_weight=1,1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 11

  Scenario: Testing the GET method uiFingerPrintHeatChart with bio_htpp_U2OS:DTXCID9031147:5:0.001:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID9031147&k0=5&s0=0.001&fp=bio_htpp_U2OS&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 6

  Scenario: Testing the GET method uiFingerPrintHeatChart with chm_mrgn:DTXCID30182:10:0.3:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID30182&k0=10&s0=0.3&fp=chm_mrgn&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 4

  Scenario: Testing the GET method uiFingerPrintHeatChart with bio_txct,tox_txrf,chm_ct:DTXCID30182:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID30182&k0=10&s0=0.1&fp=bio_txct,tox_txrf,chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&fp_weight=3,2,5'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 11

  Scenario: Testing the GET method uiFingerPrintHeatChart with chm_mrgn:DTXCID30182:1:0.3:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID30182&k0=1&s0=0.3&fp=chm_mrgn&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 2

  Scenario: Testing the GET method uiFingerPrintHeatChart with bio_txct:DTXSID0034695:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXSID0034695&k0=10&s0=0.1&fp=bio_txct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 11

  Scenario: Testing the GET method uiFingerPrintHeatChart with chm_ct:DTXCID00408880:8:0.1:bio_txct:bio_txct:bio_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID00408880&k0=8&s0=0.1&fp=chm_ct&sel_by=bio_txct&summarise=bio_txct&sumrs_by=bio_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 9

  Scenario: Testing the GET method uiFingerPrintHeatChart with chm_httr:OC(C)COC(CO)CO:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=OC%28C%29COC%28CO%29CO&k0=10&s0=0.1&fp=chm_httr&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 7

  Scenario: Testing the GET method uiFingerPrintHeatChart with chm_mrgn:DTXCID30182:15:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID30182&k0=15&s0=0.1&fp=chm_mrgn&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 16

  Scenario: Testing the GET method uiFingerPrintHeatChart with chm_httr:DTXCID606:10:0.1:bio_txct:bio_txct:bio_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID606&k0=10&s0=0.1&fp=chm_httr&sel_by=bio_txct&summarise=bio_txct&sumrs_by=bio_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 11

  Scenario: Testing the GET method uiFingerPrintHeatChart with chm_mrgn,bio_txct:DTXCID30182:15:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID30182&k0=15&s0=0.1&fp=chm_mrgn,bio_txct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&fp_weight=4,10'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 16

  Scenario: Testing the GET method uiFingerPrintHeatChart with bio_txct:DTXCID30182:5:0.1:tox_txrf:tox_txrf:tox_fp_dosage:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID30182&k0=5&s0=0.1&fp=bio_txct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp_dosage&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 6

  Scenario: Testing the GET method uiFingerPrintHeatChart with chm_ct:C(C(C(=CC(F)(F)C(F)(F)C(F)(F)F)[N+]([O-])=O)O)O:10:0.1:tox_txrf:tox_txrf:tox_fp_dosage:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=C%28C%28C%28%3DCC%28F%29%28F%29C%28F%29%28F%29C%28F%29%28F%29F%29%5BN%2B%5D%28%5BO-%5D%29%3DO%29O%29O&k0=10&s0=0.1&fp=chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp_dosage&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 11

  Scenario: Testing the GET method uiFingerPrintHeatChart with chm_mrgn,chm_ct:OC(C)COC(CO)CO:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=OC%28C%29COC%28CO%29CO&k0=10&s0=0.1&fp=chm_mrgn,chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&fp_weight=1,1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 11

  Scenario: Testing the GET method uiFingerPrintHeatChart with tox_txrf:DTXCID606:5:0.1:tox_txrf:tox_txrf:tox_fp_dosage:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID606&k0=5&s0=0.1&fp=tox_txrf&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp_dosage&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 6

  Scenario: Testing the GET method uiFingerPrintHeatChart with chm_ct:DTXCID401478006:12:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiFingerPrintHeatChart/?chem_id=DTXCID401478006&k0=12&s0=0.1&fp=chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 13

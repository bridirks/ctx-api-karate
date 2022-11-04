Feature: Test GenRA uiSetup functions.
# Generated Fri Nov  4 22:01:34 2022

  Scenario: Testing the GET method uiSetup with chm_ct:DTXCID50273:5:0.2:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXCID50273&k0=5&s0=0.2&fp=chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.casrn == '7782-50-5'
    And match response.chem_id == 'DTXCID50273'
    And assert response.download.length == 5
    And match response.dsstox_cid == 'DTXCID50273'
    And match response.dsstox_sid == 'DTXSID1020273'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And match response.name == 'Chlorine'
    And assert response.neighbor_by.length == 11
    And match response.smiles == 'ClCl'

  Scenario: Testing the GET method uiSetup with bio_txct:DTXCID50485:5:0.2:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXCID50485&k0=5&s0=0.2&fp=bio_txct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.casrn == '20325-40-0'
    And match response.chem_id == 'DTXCID50485'
    And assert response.download.length == 5
    And match response.dsstox_cid == 'DTXCID50485'
    And match response.dsstox_sid == 'DTXSID1020485'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And match response.name == 'C.I. Disperse Black 6 dihydrochloride'
    And assert response.neighbor_by.length == 11
    And match response.smiles == 'Cl.Cl.COC1=CC(=CC=C1N)C1=CC=C(N)C(OC)=C1'

  Scenario: Testing the GET method uiSetup with tox_txrf:DTXCID704235:5:0.2:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXCID704235&k0=5&s0=0.2&fp=tox_txrf&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.casrn == '85509-19-9'
    And match response.chem_id == 'DTXCID704235'
    And assert response.download.length == 5
    And match response.dsstox_cid == 'DTXCID704235'
    And match response.dsstox_sid == 'DTXSID3024235'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And match response.name == 'Flusilazole'
    And assert response.neighbor_by.length == 11
    And match response.smiles == 'C[Si](CN1C=NC=N1)(C1=CC=C(F)C=C1)C1=CC=C(F)C=C1'

  Scenario: Testing the GET method uiSetup with bio_htpp_U2OS:DTXCID9031147:5:0.001:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXCID9031147&k0=5&s0=0.001&fp=bio_htpp_U2OS&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.casrn == '83-56-7'
    And match response.chem_id == 'DTXCID9031147'
    And assert response.download.length == 5
    And match response.dsstox_cid == 'DTXCID9031147'
    And match response.dsstox_sid == 'DTXSID2052574'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And match response.name == '1,5-Dihydroxynaphthalene'
    And assert response.neighbor_by.length == 11
    And match response.smiles == 'OC1=CC=CC2=C(O)C=CC=C12'

  Scenario: Testing the GET method uiSetup with chm_mrgn,chm_httr:DTXCID30182:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXCID30182&k0=10&s0=0.1&fp=chm_mrgn,chm_httr&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&fp_weight=1,1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.casrn == '80-05-7'
    And match response.chem_id == 'DTXCID30182'
    And assert response.download.length == 5
    And match response.dsstox_cid == 'DTXCID30182'
    And match response.dsstox_sid == 'DTXSID7020182'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And match response.name == 'Bisphenol A'
    And assert response.neighbor_by.length == 11
    And match response.smiles == 'CC(C)(C1=CC=C(O)C=C1)C1=CC=C(O)C=C1'

  Scenario: Testing the GET method uiSetup with chm_mrgn:DTXCID90150942:15:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXCID90150942&k0=15&s0=0.1&fp=chm_mrgn&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.casrn == '7783-44-0'
    And match response.chem_id == 'DTXCID90150942'
    And assert response.download.length == 5
    And match response.dsstox_cid == 'DTXCID90150942'
    And match response.dsstox_sid == 'DTXSID70228451'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And match response.name == 'Fluorine dioxide'
    And assert response.neighbor_by.length == 11
    And match response.smiles == 'FOOF'

  Scenario: Testing the GET method uiSetup with chm_mrgn,bio_txct:DTXCID30182:15:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXCID30182&k0=15&s0=0.1&fp=chm_mrgn,bio_txct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&fp_weight=4,10'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.casrn == '80-05-7'
    And match response.chem_id == 'DTXCID30182'
    And assert response.download.length == 5
    And match response.dsstox_cid == 'DTXCID30182'
    And match response.dsstox_sid == 'DTXSID7020182'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And match response.name == 'Bisphenol A'
    And assert response.neighbor_by.length == 11
    And match response.smiles == 'CC(C)(C1=CC=C(O)C=C1)C1=CC=C(O)C=C1'

  Scenario: Testing the GET method uiSetup with bio_txct,tox_txrf,chm_ct:DTXCID30182:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXCID30182&k0=10&s0=0.1&fp=bio_txct,tox_txrf,chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&fp_weight=3,2,5'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.casrn == '80-05-7'
    And match response.chem_id == 'DTXCID30182'
    And assert response.download.length == 5
    And match response.dsstox_cid == 'DTXCID30182'
    And match response.dsstox_sid == 'DTXSID7020182'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And match response.name == 'Bisphenol A'
    And assert response.neighbor_by.length == 11
    And match response.smiles == 'CC(C)(C1=CC=C(O)C=C1)C1=CC=C(O)C=C1'

  Scenario: Testing the GET method uiSetup with chm_httr:DTXCID30182:5:0.2:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXCID30182&k0=5&s0=0.2&fp=chm_httr&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.casrn == '80-05-7'
    And match response.chem_id == 'DTXCID30182'
    And assert response.download.length == 5
    And match response.dsstox_cid == 'DTXCID30182'
    And match response.dsstox_sid == 'DTXSID7020182'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And match response.name == 'Bisphenol A'
    And assert response.neighbor_by.length == 11
    And match response.smiles == 'CC(C)(C1=CC=C(O)C=C1)C1=CC=C(O)C=C1'

  Scenario: Testing the GET method uiSetup with chm_mrgn,chm_ct:OC(C)COC(CO)CO:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=OC%28C%29COC%28CO%29CO&k0=10&s0=0.1&fp=chm_mrgn,chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&fp_weight=1,1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.chem_id == 'OC(C)COC(CO)CO'
    And assert response.download.length == 5
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 3
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And assert response.neighbor_by.length == 11

  Scenario: Testing the GET method uiSetup with chm_ct:DTXCID401478006:12:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXCID401478006&k0=12&s0=0.1&fp=chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.casrn == '6029-84-1'
    And match response.chem_id == 'DTXCID401478006'
    And assert response.download.length == 5
    And match response.dsstox_cid == 'DTXCID401478006'
    And match response.dsstox_sid == 'DTXSID501020159'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And match response.name == 'Rinderine'
    And assert response.neighbor_by.length == 11
    And match response.smiles == '[H][C@@]12[C@@H](O)CCN1CC=C2COC(=O)[C@](O)(C(C)C)C(C)O'

  Scenario: Testing the GET method uiSetup with tox_txrf:DTXCID606:5:0.1:tox_txrf:tox_txrf:tox_fp_dosage:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXCID606&k0=5&s0=0.1&fp=tox_txrf&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp_dosage&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.casrn == '103-90-2'
    And match response.chem_id == 'DTXCID606'
    And assert response.download.length == 5
    And match response.dsstox_cid == 'DTXCID606'
    And match response.dsstox_sid == 'DTXSID2020006'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And match response.name == 'Acetaminophen'
    And assert response.neighbor_by.length == 11
    And match response.smiles == 'CC(=O)NC1=CC=C(O)C=C1'

  Scenario: Testing the GET method uiSetup with bio_txct:DTXSID0034695:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXSID0034695&k0=10&s0=0.1&fp=bio_txct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.casrn == '8018-01-7'
    And match response.chem_id == 'DTXSID0034695'
    And assert response.download.length == 5
    And match response.dsstox_sid == 'DTXSID0034695'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And match response.name == 'Mancozeb'
    And assert response.neighbor_by.length == 11

  Scenario: Testing the GET method uiSetup with chm_ct:C(C(C(=CC(F)(F)C(F)(F)C(F)(F)F)[N+]([O-])=O)O)O:10:0.1:tox_txrf:tox_txrf:tox_fp_dosage:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=C%28C%28C%28%3DCC%28F%29%28F%29C%28F%29%28F%29C%28F%29%28F%29F%29%5BN%2B%5D%28%5BO-%5D%29%3DO%29O%29O&k0=10&s0=0.1&fp=chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp_dosage&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.chem_id == 'C(C(C(=CC(F)(F)C(F)(F)C(F)(F)F)[N+]([O-])=O)O)O'
    And assert response.download.length == 5
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 3
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And assert response.neighbor_by.length == 11

  Scenario: Testing the GET method uiSetup with bio_txct:DTXCID30182:5:0.1:tox_txrf:tox_txrf:tox_fp_dosage:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXCID30182&k0=5&s0=0.1&fp=bio_txct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp_dosage&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.casrn == '80-05-7'
    And match response.chem_id == 'DTXCID30182'
    And assert response.download.length == 5
    And match response.dsstox_cid == 'DTXCID30182'
    And match response.dsstox_sid == 'DTXSID7020182'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And match response.name == 'Bisphenol A'
    And assert response.neighbor_by.length == 11
    And match response.smiles == 'CC(C)(C1=CC=C(O)C=C1)C1=CC=C(O)C=C1'

  Scenario: Testing the GET method uiSetup with chm_httr:DTXCID606:10:0.1:bio_txct:bio_txct:bio_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXCID606&k0=10&s0=0.1&fp=chm_httr&sel_by=bio_txct&summarise=bio_txct&sumrs_by=bio_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.casrn == '103-90-2'
    And match response.chem_id == 'DTXCID606'
    And assert response.download.length == 5
    And match response.dsstox_cid == 'DTXCID606'
    And match response.dsstox_sid == 'DTXSID2020006'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And match response.name == 'Acetaminophen'
    And assert response.neighbor_by.length == 11
    And match response.smiles == 'CC(=O)NC1=CC=C(O)C=C1'

  Scenario: Testing the GET method uiSetup with chm_httr:OC(C)COC(CO)CO:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=OC%28C%29COC%28CO%29CO&k0=10&s0=0.1&fp=chm_httr&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.chem_id == 'OC(C)COC(CO)CO'
    And assert response.download.length == 5
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 3
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And assert response.neighbor_by.length == 11

  Scenario: Testing the GET method uiSetup with chm_ct:DTXCID00408880:8:0.1:bio_txct:bio_txct:bio_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXCID00408880&k0=8&s0=0.1&fp=chm_ct&sel_by=bio_txct&summarise=bio_txct&sumrs_by=bio_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.casrn == '820963-05-1'
    And match response.chem_id == 'DTXCID00408880'
    And assert response.download.length == 5
    And match response.dsstox_cid == 'DTXCID00408880'
    And match response.dsstox_sid == 'DTXSID40458061'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And match response.name == 'Ethanone, 1-[2-(methylseleno)-3-phenyl-2-cyclobuten-1-yl]-'
    And assert response.neighbor_by.length == 11
    And match response.smiles == 'C[Se]C1=C(CC1C(C)=O)C1=CC=CC=C1'

  Scenario: Testing the GET method uiSetup with chm_ct:DTXCID8047:5:0.2:tox_txrf:tox_txrf:tox_fp:3:3
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXCID8047&k0=5&s0=0.2&fp=chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=3&neg0=3'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.casrn == '57-06-7'
    And match response.chem_id == 'DTXCID8047'
    And assert response.download.length == 5
    And match response.dsstox_cid == 'DTXCID8047'
    And match response.dsstox_sid == 'DTXSID3020047'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And match response.name == 'Allyl isothiocyanate'
    And assert response.neighbor_by.length == 11
    And match response.smiles == 'C=CCN=C=S'

  Scenario: Testing the GET method uiSetup with chm_mrgn:DTXCID30182:15:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    Given url genra + '/genra-api/api/genra/v4/uiSetup/?chem_id=DTXCID30182&k0=15&s0=0.1&fp=chm_mrgn&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And match response.casrn == '80-05-7'
    And match response.chem_id == 'DTXCID30182'
    And assert response.download.length == 5
    And match response.dsstox_cid == 'DTXCID30182'
    And match response.dsstox_sid == 'DTXSID7020182'
    And assert response.filter_by.length == 3
    And assert Object.keys(response.fpColor).length == 11
    And assert response.fp_needs_gen.length == 0
    And assert response.graph_type.length == 1
    And assert response.help_text.length == 5
    And assert response.initGraphFPs.length == 2
    And match response.name == 'Bisphenol A'
    And assert response.neighbor_by.length == 11
    And match response.smiles == 'CC(C)(C1=CC=C(O)C=C1)C1=CC=C(O)C=C1'

Feature: Test GenRA uiRunReadAcross functions.
# Generated Fri Nov  4 22:00:45 2022

  Scenario: Testing the POST method uiRunReadAcross with chm_mrgn:DTXCID90150942:15:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    * text body =
"""
{"fp": "chm_mrgn", "k0": 15, "s0": 0.1, "chem_id": "DTXCID90150942", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapred", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID90150942"}, {"isChecked": true, "chem_id": "DTXCID106937"}, {"isChecked": true, "chem_id": "DTXCID7014945"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID90150942&k0=15&s0=0.1&fp=chm_mrgn&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 5
    And assert response.data.length == 189

  Scenario: Testing the POST method uiRunReadAcross with chm_ct:DTXCID50273:5:0.2:tox_txrf:tox_txrf:tox_fp:1:1
    * text body =
"""
{"fp": "chm_ct", "k0": 5, "s0": 0.2, "chem_id": "DTXCID50273", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapred", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID50273"}, {"isChecked": true, "chem_id": "DTXCID5014672"}, {"isChecked": true, "chem_id": "DTXCID00832"}, {"isChecked": true, "chem_id": "DTXCID804187"}, {"isChecked": true, "chem_id": "DTXCID9014688"}, {"isChecked": true, "chem_id": "DTXCID30431"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID50273&k0=5&s0=0.2&fp=chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 8
    And assert response.data.length == 235

  Scenario: Testing the POST method uiRunReadAcross with chm_mrgn:DTXCID402524:5:0.2:tox_txrf:tox_txrf:tox_fp:1:1
    * text body =
"""
{"fp": "chm_mrgn", "k0": 5, "s0": 0.2, "chem_id": "DTXCID402524", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapred", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID402524"}, {"isChecked": true, "chem_id": "DTXCID101385"}, {"isChecked": true, "chem_id": "DTXCID004261"}, {"isChecked": true, "chem_id": "DTXCID401159"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID402524&k0=5&s0=0.2&fp=chm_mrgn&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 6
    And assert response.data.length == 152

  Scenario: Testing the POST method uiRunReadAcross with chm_httr:DTXCID30182:5:0.2:tox_txrf:tox_txrf:tox_fp:1:1
    * text body =
"""
{"fp": "chm_httr", "k0": 5, "s0": 0.2, "chem_id": "DTXCID30182", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapred", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID30182"}, {"isChecked": true, "chem_id": "DTXCID001771"}, {"isChecked": true, "chem_id": "DTXCID602360"}, {"isChecked": true, "chem_id": "DTXCID70716"}, {"isChecked": true, "chem_id": "DTXCID40450"}, {"isChecked": true, "chem_id": "DTXCID901125"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID30182&k0=5&s0=0.2&fp=chm_httr&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 8
    And assert response.data.length == 294

  Scenario: Testing the POST method uiRunReadAcross with chm_ct:DTXCID401478006:12:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    * text body =
"""
{"fp": "chm_ct", "k0": 12, "s0": 0.1, "chem_id": "DTXCID401478006", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapred", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID401478006"}, {"isChecked": false, "chem_id": "DTXCID2022333"}, {"isChecked": true, "chem_id": "DTXCID50784"}, {"isChecked": false, "chem_id": "DTXCID90106"}, {"isChecked": true, "chem_id": "DTXCID90570"}, {"isChecked": false, "chem_id": "DTXCID4020375"}, {"isChecked": true, "chem_id": "DTXCID5027358"}, {"isChecked": false, "chem_id": "DTXCID3014721"}, {"isChecked": true, "chem_id": "DTXCID901206"}, {"isChecked": false, "chem_id": "DTXCID807635"}, {"isChecked": true, "chem_id": "DTXCID4012562"}, {"isChecked": false, "chem_id": "DTXCID101305276"}, {"isChecked": true, "chem_id": "DTXCID40662"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID401478006&k0=12&s0=0.1&fp=chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 15
    And assert response.data.length == 343

  Scenario: Testing the POST method uiRunReadAcross with chm_httr:OC(C)COC(CO)CO:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    * text body =
"""
{"fp": "chm_httr", "k0": 10, "s0": 0.1, "chem_id": "OC(C)COC(CO)CO", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapy", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "chem_inc": [{"isChecked": true, "chem_id": "OC(C)COC(CO)CO"}, {"isChecked": true, "chem_id": "DTXCID60666"}, {"isChecked": true, "chem_id": "DTXCID301207"}, {"isChecked": true, "chem_id": "DTXCID40662"}, {"isChecked": true, "chem_id": "DTXCID4031275"}, {"isChecked": true, "chem_id": "DTXCID10605"}, {"isChecked": true, "chem_id": "DTXCID701842"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=OC%28C%29COC%28CO%29CO&k0=10&s0=0.1&fp=chm_httr&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 9
    And assert response.data.length == 212

  Scenario: Testing the POST method uiRunReadAcross with tox_txrf:DTXCID704235:5:0.2:tox_txrf:tox_txrf:tox_fp:1:1
    * text body =
"""
{"fp": "tox_txrf", "k0": 5, "s0": 0.2, "chem_id": "DTXCID704235", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapred", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID704235"}, {"isChecked": true, "chem_id": "DTXCID204280"}, {"isChecked": true, "chem_id": "DTXCID8012655"}, {"isChecked": true, "chem_id": "DTXCID6014956"}, {"isChecked": true, "chem_id": "DTXCID104338"}, {"isChecked": true, "chem_id": "DTXCID00620"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID704235&k0=5&s0=0.2&fp=tox_txrf&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 8
    And assert response.data.length == 256

  Scenario: Testing the POST method uiRunReadAcross with bio_txct,tox_txrf,chm_ct:DTXCID30182:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    * text body =
"""
{"fp": "bio_txct,tox_txrf,chm_ct", "k0": 10, "s0": 0.1, "chem_id": "DTXCID30182", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapred", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "fp_weight": "3,2,5", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID30182"}, {"isChecked": true, "chem_id": "DTXCID602360"}, {"isChecked": true, "chem_id": "DTXCID60220"}, {"isChecked": true, "chem_id": "DTXCID406081"}, {"isChecked": true, "chem_id": "DTXCID001771"}, {"isChecked": true, "chem_id": "DTXCID30154"}, {"isChecked": true, "chem_id": "DTXCID20216"}, {"isChecked": true, "chem_id": "DTXCID10465"}, {"isChecked": true, "chem_id": "DTXCID0028161"}, {"isChecked": true, "chem_id": "DTXCID30207"}, {"isChecked": true, "chem_id": "DTXCID902053"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID30182&k0=10&s0=0.1&fp=bio_txct,tox_txrf,chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&fp_weight=3,2,5&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 13
    And assert response.data.length == 314

  Scenario: Testing the POST method uiRunReadAcross with chm_mrgn,chm_ct:OC(C)COC(CO)CO:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    * text body =
"""
{"fp": "chm_mrgn,chm_ct", "k0": 10, "s0": 0.1, "chem_id": "OC(C)COC(CO)CO", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapred", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "fp_weight": "1,1", "chem_inc": [{"isChecked": true, "chem_id": "OC(C)COC(CO)CO"}, {"isChecked": true, "chem_id": "DTXCID901206"}, {"isChecked": true, "chem_id": "DTXCID40662"}, {"isChecked": true, "chem_id": "DTXCID4031275"}, {"isChecked": true, "chem_id": "DTXCID50762"}, {"isChecked": true, "chem_id": "DTXCID4020375"}, {"isChecked": true, "chem_id": "DTXCID8014720"}, {"isChecked": true, "chem_id": "DTXCID603235"}, {"isChecked": true, "chem_id": "DTXCID804182"}, {"isChecked": true, "chem_id": "DTXCID705469"}, {"isChecked": true, "chem_id": "DTXCID604087"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=OC%28C%29COC%28CO%29CO&k0=10&s0=0.1&fp=chm_mrgn,chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&fp_weight=1,1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 13
    And assert response.data.length == 288

  Scenario: Testing the POST method uiRunReadAcross with chm_ct:C(C(C(=CC(F)(F)C(F)(F)C(F)(F)F)[N+]([O-])=O)O)O:10:0.1:tox_txrf:tox_txrf:tox_fp_dosage:1:1
    * text body =
"""
{"fp": "chm_ct", "k0": 10, "s0": 0.1, "chem_id": "C(C(C(=CC(F)(F)C(F)(F)C(F)(F)F)[N+]([O-])=O)O)O", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapy", "summarise": "tox_txrf", "sumrs_by": "tox_fp_dosage", "chem_inc": [{"isChecked": true, "chem_id": "C(C(C(=CC(F)(F)C(F)(F)C(F)(F)F)[N+]([O-])=O)O)O"}, {"isChecked": true, "chem_id": "DTXCID1011862"}, {"isChecked": true, "chem_id": "DTXCID0031267"}, {"isChecked": true, "chem_id": "DTXCID1017707"}, {"isChecked": true, "chem_id": "DTXCID6017708"}, {"isChecked": true, "chem_id": "DTXCID9012646"}, {"isChecked": true, "chem_id": "DTXCID6017706"}, {"isChecked": true, "chem_id": "DTXCID1011864"}, {"isChecked": true, "chem_id": "DTXCID3027328"}, {"isChecked": true, "chem_id": "DTXCID201318"}, {"isChecked": true, "chem_id": "DTXCID904652"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=C%28C%28C%28%3DCC%28F%29%28F%29C%28F%29%28F%29C%28F%29%28F%29F%29%5BN%2B%5D%28%5BO-%5D%29%3DO%29O%29O&k0=10&s0=0.1&fp=chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp_dosage&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 13
    And assert response.data.length == 323

  Scenario: Testing the POST method uiRunReadAcross with tox_txrf:DTXCID606:5:0.1:tox_txrf:tox_txrf:tox_fp_dosage:1:1
    * text body =
"""
{"fp": "tox_txrf", "k0": 5, "s0": 0.1, "chem_id": "DTXCID606", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapy", "summarise": "tox_txrf", "sumrs_by": "tox_fp_dosage", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID606"}, {"isChecked": true, "chem_id": "DTXCID601136"}, {"isChecked": true, "chem_id": "DTXCID90863"}, {"isChecked": true, "chem_id": "DTXCID40494"}, {"isChecked": true, "chem_id": "DTXCID90972"}, {"isChecked": true, "chem_id": "DTXCID9052"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID606&k0=5&s0=0.1&fp=tox_txrf&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp_dosage&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 8
    And assert response.data.length == 205

  Scenario: Testing the POST method uiRunReadAcross with chm_ct:DTXCID8047:5:0.2:tox_txrf:tox_txrf:tox_fp:3:3
    * text body =
"""
{"fp": "chm_ct", "k0": 5, "s0": 0.2, "chem_id": "DTXCID8047", "sel_by": "tox_txrf", "neg0": 3, "pos0": 3, "engine": "genrapred", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID8047"}, {"isChecked": true, "chem_id": "DTXCID707204"}, {"isChecked": true, "chem_id": "DTXCID0029"}, {"isChecked": true, "chem_id": "DTXCID70392"}, {"isChecked": true, "chem_id": "DTXCID6027"}, {"isChecked": true, "chem_id": "DTXCID00583"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID8047&k0=5&s0=0.2&fp=chm_ct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=3&neg0=3&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 8
    And assert response.data.length == 251

  Scenario: Testing the POST method uiRunReadAcross with chm_mrgn:DTXCID30182:15:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    * text body =
"""
{"fp": "chm_mrgn", "k0": 15, "s0": 0.1, "chem_id": "DTXCID30182", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapred", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID30182"}, {"isChecked": true, "chem_id": "DTXCID001771"}, {"isChecked": true, "chem_id": "DTXCID602360"}, {"isChecked": true, "chem_id": "DTXCID70716"}, {"isChecked": true, "chem_id": "DTXCID10465"}, {"isChecked": true, "chem_id": "DTXCID406081"}, {"isChecked": true, "chem_id": "DTXCID606"}, {"isChecked": true, "chem_id": "DTXCID60220"}, {"isChecked": true, "chem_id": "DTXCID402529"}, {"isChecked": true, "chem_id": "DTXCID501124"}, {"isChecked": true, "chem_id": "DTXCID3024495"}, {"isChecked": true, "chem_id": "DTXCID0031269"}, {"isChecked": true, "chem_id": "DTXCID002528"}, {"isChecked": true, "chem_id": "DTXCID2014576"}, {"isChecked": true, "chem_id": "DTXCID902312"}, {"isChecked": true, "chem_id": "DTXCID602527"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID30182&k0=15&s0=0.1&fp=chm_mrgn&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 18
    And assert response.data.length == 345

  Scenario: Testing the POST method uiRunReadAcross with bio_txct:DTXCID50485:5:0.2:tox_txrf:tox_txrf:tox_fp:1:1
    * text body =
"""
{"fp": "bio_txct", "k0": 5, "s0": 0.2, "chem_id": "DTXCID50485", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapred", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID50485"}, {"isChecked": true, "chem_id": "DTXCID3027374"}, {"isChecked": true, "chem_id": "DTXCID901125"}, {"isChecked": true, "chem_id": "DTXCID301437106"}, {"isChecked": true, "chem_id": "DTXCID9027366"}, {"isChecked": true, "chem_id": "DTXCID701106"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID50485&k0=5&s0=0.2&fp=bio_txct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 8
    And assert response.data.length == 370

  Scenario: Testing the POST method uiRunReadAcross with chm_ct:DTXCID00408880:8:0.1:bio_txct:bio_txct:bio_fp:1:1
    * text body =
"""
{"fp": "chm_ct", "k0": 8, "s0": 0.1, "chem_id": "DTXCID00408880", "sel_by": "bio_txct", "neg0": 1, "pos0": 1, "engine": "genrapred", "summarise": "bio_txct", "sumrs_by": "bio_fp", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID00408880"}, {"isChecked": true, "chem_id": "DTXCID0026545"}, {"isChecked": true, "chem_id": "DTXCID701460"}, {"isChecked": true, "chem_id": "DTXCID901803"}, {"isChecked": true, "chem_id": "DTXCID504397"}, {"isChecked": true, "chem_id": "DTXCID3022324"}, {"isChecked": true, "chem_id": "DTXCID5015010"}, {"isChecked": true, "chem_id": "DTXCID101482"}, {"isChecked": true, "chem_id": "DTXCID7029324"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID00408880&k0=8&s0=0.1&fp=chm_ct&sel_by=bio_txct&summarise=bio_txct&sumrs_by=bio_fp&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 11
    And assert response.data.length == 167

  Scenario: Testing the POST method uiRunReadAcross with bio_htpp_U2OS:DTXCID9031147:5:0.001:tox_txrf:tox_txrf:tox_fp:1:1
    * text body =
"""
{"fp": "bio_htpp_U2OS", "k0": 5, "s0": 0.001, "chem_id": "DTXCID9031147", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapred", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID9031147"}, {"isChecked": true, "chem_id": "DTXCID70582"}, {"isChecked": true, "chem_id": "DTXCID9013664"}, {"isChecked": true, "chem_id": "DTXCID8012605"}, {"isChecked": true, "chem_id": "DTXCID104338"}, {"isChecked": true, "chem_id": "DTXCID101864"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID9031147&k0=5&s0=0.001&fp=bio_htpp_U2OS&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 8
    And assert response.data.length == 300

  Scenario: Testing the POST method uiRunReadAcross with bio_txct:DTXCID30182:5:0.1:tox_txrf:tox_txrf:tox_fp_dosage:1:1
    * text body =
"""
{"fp": "bio_txct", "k0": 5, "s0": 0.1, "chem_id": "DTXCID30182", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapy", "summarise": "tox_txrf", "sumrs_by": "tox_fp_dosage", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID30182"}, {"isChecked": true, "chem_id": "DTXCID70576"}, {"isChecked": true, "chem_id": "DTXCID10465"}, {"isChecked": true, "chem_id": "DTXCID30154"}, {"isChecked": true, "chem_id": "DTXSID5029055"}, {"isChecked": true, "chem_id": "DTXCID30827"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID30182&k0=5&s0=0.1&fp=bio_txct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp_dosage&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 8
    And assert response.data.length == 334
    And match response.error_msg == "One or more chemicals in neighborhood don't have molecular weight associated, so has been removed from calculating predictions. (DTXSID5029055)"

  Scenario: Testing the POST method uiRunReadAcross with bio_txct:DTXSID0034695:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    * text body =
"""
{"fp": "bio_txct", "k0": 10, "s0": 0.1, "chem_id": "DTXSID0034695", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapred", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "chem_inc": [{"isChecked": true, "chem_id": "DTXSID0034695"}, {"isChecked": true, "chem_id": "DTXCID70794"}, {"isChecked": true, "chem_id": "DTXCID1011864"}, {"isChecked": true, "chem_id": "DTXCID8012520"}, {"isChecked": true, "chem_id": "DTXCID9014181"}, {"isChecked": true, "chem_id": "DTXCID4027369"}, {"isChecked": true, "chem_id": "DTXCID0027357"}, {"isChecked": true, "chem_id": "DTXCID902370"}, {"isChecked": true, "chem_id": "DTXCID3012498"}, {"isChecked": true, "chem_id": "DTXCID50653"}, {"isChecked": true, "chem_id": "DTXCID904238"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXSID0034695&k0=10&s0=0.1&fp=bio_txct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 13
    And assert response.data.length == 376

  Scenario: Testing the POST method uiRunReadAcross with chm_httr:DTXCID606:10:0.1:bio_txct:bio_txct:bio_fp:1:1
    * text body =
"""
{"fp": "chm_httr", "k0": 10, "s0": 0.1, "chem_id": "DTXCID606", "sel_by": "bio_txct", "neg0": 1, "pos0": 1, "engine": "genrapy", "summarise": "bio_txct", "sumrs_by": "bio_fp", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID606"}, {"isChecked": true, "chem_id": "DTXCID5026419"}, {"isChecked": true, "chem_id": "DTXCID704455"}, {"isChecked": true, "chem_id": "DTXCID104414"}, {"isChecked": true, "chem_id": "DTXCID806325"}, {"isChecked": true, "chem_id": "DTXCID901366"}, {"isChecked": true, "chem_id": "DTXCID3021512"}, {"isChecked": true, "chem_id": "DTXCID001116"}, {"isChecked": true, "chem_id": "DTXCID3017739"}, {"isChecked": true, "chem_id": "DTXCID504392"}, {"isChecked": true, "chem_id": "DTXCID2020"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID606&k0=10&s0=0.1&fp=chm_httr&sel_by=bio_txct&summarise=bio_txct&sumrs_by=bio_fp&pos0=1&neg0=1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 13
    And assert response.data.length == 171

  Scenario: Testing the POST method uiRunReadAcross with chm_mrgn,chm_httr:DTXCID30182:10:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    * text body =
"""
{"fp": "chm_mrgn,chm_httr", "k0": 10, "s0": 0.1, "chem_id": "DTXCID30182", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapred", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "fp_weight": "1,1", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID30182"}, {"isChecked": true, "chem_id": "DTXCID001771"}, {"isChecked": true, "chem_id": "DTXCID602360"}, {"isChecked": true, "chem_id": "DTXCID70716"}, {"isChecked": true, "chem_id": "DTXCID10465"}, {"isChecked": true, "chem_id": "DTXCID40450"}, {"isChecked": true, "chem_id": "DTXCID606"}, {"isChecked": true, "chem_id": "DTXCID901125"}, {"isChecked": true, "chem_id": "DTXCID70299"}, {"isChecked": true, "chem_id": "DTXCID402529"}, {"isChecked": true, "chem_id": "DTXCID3024495"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID30182&k0=10&s0=0.1&fp=chm_mrgn,chm_httr&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&fp_weight=1,1&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 13
    And assert response.data.length == 336

  Scenario: Testing the POST method uiRunReadAcross with chm_mrgn,bio_txct:DTXCID30182:15:0.1:tox_txrf:tox_txrf:tox_fp:1:1
    * text body =
"""
{"fp": "chm_mrgn,bio_txct", "k0": 15, "s0": 0.1, "chem_id": "DTXCID30182", "sel_by": "tox_txrf", "neg0": 1, "pos0": 1, "engine": "genrapred", "summarise": "tox_txrf", "sumrs_by": "tox_fp", "fp_weight": "4,10", "chem_inc": [{"isChecked": true, "chem_id": "DTXCID30182"}, {"isChecked": true, "chem_id": "DTXCID10465"}, {"isChecked": true, "chem_id": "DTXCID602360"}, {"isChecked": true, "chem_id": "DTXCID70576"}, {"isChecked": true, "chem_id": "DTXCID901125"}, {"isChecked": true, "chem_id": "DTXCID30827"}, {"isChecked": true, "chem_id": "DTXCID0028161"}, {"isChecked": true, "chem_id": "DTXCID001771"}, {"isChecked": true, "chem_id": "DTXCID30154"}, {"isChecked": true, "chem_id": "DTXCID406081"}, {"isChecked": true, "chem_id": "DTXCID3012498"}, {"isChecked": true, "chem_id": "DTXCID90374"}, {"isChecked": true, "chem_id": "DTXCID60220"}, {"isChecked": true, "chem_id": "DTXSID5029055"}, {"isChecked": true, "chem_id": "DTXCID9014181"}, {"isChecked": true, "chem_id": "DTXCID002308"}], "tox_inc": []}
"""
    * request body
    Given url genra + '/genra-api/api/genra/v4/uiRunReadAcross/?chem_id=DTXCID30182&k0=15&s0=0.1&fp=chm_mrgn,bio_txct&sel_by=tox_txrf&summarise=tox_txrf&sumrs_by=tox_fp&pos0=1&neg0=1&fp_weight=4,10&pos0=1&neg0=1'
    And header Content-Type = 'application/json; charset=utf-8'
    When method POST
    Then status 200
    And assert response.columns.length == 18
    And assert response.data.length == 386

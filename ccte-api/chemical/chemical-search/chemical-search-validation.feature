@regression
Feature: Feature file for validating chemical search resource
  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Testing the GET method for chemical search by starting value of chemical name
    Given path '/chemical/search/start-with/atraz'
    When method GET
    Then status 200
    And match response[0] == {"hasStructureImage" : 1, "smiles" : "CCNC1=NC(NC(C)C)=NC(Cl)=N1", "isMarkush" : 0,        "searchName" : "Approved Name", "searchValue" : "Atrazine", "rank" : 9, "dtxsid" : "DTXSID9020112", "dtxcid" : "DTXCID90112", "casrn" : "1912-24-9", "preferredName" : "Atrazine"}

  Scenario: Testing the GET method for chemical search by exact match of chemical name
    Given path '/chemical/search/equal/atrazine'
    When method GET
    Then status 200
    And match response[0] == {"hasStructureImage" : 1, "smiles" : "CCNC1=NC(NC(C)C)=NC(Cl)=N1", "isMarkush" : 0,        "searchName" : "Approved Name", "searchValue" : "Atrazine", "rank" : 9, "dtxsid" : "DTXSID9020112", "dtxcid" : "DTXCID90112", "casrn" : "1912-24-9", "preferredName" : "Atrazine"}

  Scenario: Testing the GET method for chemical search by substring of chemical name
    Given path '/chemical/search/contain/razine'
    When method GET
    Then status 200
    And match response[0] == {"hasStructureImage": 1, "smiles": "Cl.OC(CN1CCN(CCCC(C2=CC=C(F)C=C2)C2=CC=C(F)C=C2)C(C1)C(O)=N)=NC1=C(Cl)C=CC=C1Cl", "isMarkush": 0, "searchName": "Approved Name", "searchValue": "1-[4,4-Bis(4-fluorophenyl)butyl]-4-{2-[(2,6-dichlorophenyl)imino]-2-hydroxyethyl}piperazine-2-carboximidic acid--hydrogen chloride (1/1)", "rank": 9, "dtxsid": "DTXSID001000495", "dtxcid": "DTXCID901427458", "casrn": "79467-24-6", "preferredName": "1-[4,4-Bis(4-fluorophenyl)butyl]-4-{2-[(2,6-dichlorophenyl)imino]-2-hydroxyethyl}piperazine-2-carboximidic acid--hydrogen chloride (1/1)"}

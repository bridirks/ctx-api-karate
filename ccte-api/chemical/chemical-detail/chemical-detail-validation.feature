@regression
Feature: Feature file for validating the response of chemical details resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  Scenario: Validating the response of the POST method for chemical details by batch dtxsid
    Given url "https://api-ccte-stg.epa.gov/chemical/detail/search/by-dtxsid/"
    And param projection = 'ntatoolkit'
    And request batchdtxsid
    When method POST
    Then status 200
    And match $ contains {"expocatMedianPrediction": "5.50E-05", "expocat": "Y", "nhanes": "Y", "inchikey": "IISBACLAFKSPIT-UHFFFAOYSA-N", "msReadySmiles": "CC(C)(C1=CC=C(O)C=C1)C1=CC=C(O)C=C1", "dtxsid": "DTXSID7020182", "dtxcid": "DTXCID30182", "casrn": "80-05-7", "preferredName": "Bisphenol A", "activeAssays": 221, "molFormula": "C15H16O2", "monoisotopicMass": 228.115029755, "percentAssays": 23.0, "sourcesCount": 113, "totalAssays": 951, "smiles": "CC(C)(C1=CC=C(O)C=C1)C1=CC=C(O)C=C1", "cpdataCount": 292}

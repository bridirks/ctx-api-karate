@regression
@list
Feature: Feature file for monitoring the chemical list batch search resource

  Background:
    * url ccte
    * header Accept = 'application/json' 
    * header Content-Type = 'application/json; charset=utf-8'
    * header x-api-key = apikey

  @dtxsids
  Scenario: Pulling data from the chemical list search resource (projection = chemicallistwithdtxsids)
    Given path '/chemical/list/search/by-name/ACSREAG'
    And param projection = 'chemicallistwithdtxsids'
    When method GET
    Then status 200

  Scenario: Inserting data from the chemical list search feature into the chemical detail batch resource (projection = chemicaldetailstandard)
    * def data = call read('chemical-list-batch.feature@dtxsids')
    Given url 'https://api-ccte.epa.gov/chemical/detail/search/by-dtxsid/'
    And param projection = 'ccdchemicaldetail'
    And request data
    When method POST
    Then status 200

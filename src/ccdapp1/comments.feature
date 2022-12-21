Feature: Feature file for comments


  Scenario: Testing the GET method for comments
    Given url ccd + 'ccdapp1/comments/search/all-comments'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200

  Scenario: Testing the GET method for comments
    Given url ccd + 'ccdapp1/comments/search/by-dtxsid?id=DTXSID8044830'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200



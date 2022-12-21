Feature: Feature file for news


  Scenario: Testing the GET method for news
    Given url ccd + 'ccdapp1/news/search/all-news'
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200




Feature: Feature file for session recall

  Background:
  * def sessionRequest = {'username':'testuser', 'sessionTitle': 'testSession'}
  * def sessionUpdate = {'activeTab': 'pod', 'tabName': 'pod', 'tabData': '{podData: data}', 'sessionKey': '06c358f67fcbbcdf017fcc8c2c830000'}
  Scenario: Testing the GET method for session-recall
    Given url rapidtox + '/rapidtox/session-recall'
    When method GET
    Then status 200

  Scenario: Testing the GET method for session-recall with an invalid session key
    Given url rapidtox + '/rapidtox/session-recall/badSessionKey'
    When method GET
    Then status 404

  Scenario: Testing the POST method for creating a new session
    Given url rapidtox + '/rapidtox/session-recall/'
    And request sessionRequest
    When method POST
    Then status 201
    And response.sessionKey != null


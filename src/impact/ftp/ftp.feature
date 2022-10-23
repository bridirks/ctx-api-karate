Feature: feature file for ftp data


Scenario: Testing the GET method for fetching site visits by applications
Given url impact + '/api/ftp/appvisitscount'
And header Content-Type = 'application/json; charset=utf-8'
And param app = 'comptoxdata'
When method GET
Then status 200

Scenario: Testing the GET method for fetching usage data by application
Given url impact + '/api/ftp/countapp'
And header Content-Type = 'application/json; charset=utf-8'
And param app = 'cooxdata'
When method GET
Then status 200

Scenario: Testing the GET method for fetching application usage by country and application
Given url impact + '/api/ftp/countappandcountry'
And param app = 'comptoxdata'
And param country = 'United States'
And header Content-Type = 'application/json; charset=utf-8'
When method GET
Then status 200

Scenario:
Given url impact + '/api/ftp/domainapp'
And param app = 'comptoxdata'
And header Content-Type = 'application/json; charset=utf-8'
And param app = 'comptoxdata'
When method GET
Then status 200

Scenario:
Given url impact + '/api/ftp/tree'
And param app = 'comptoxdata'
And header Content-Type = 'application/json; charset=utf-8'
When method GET
Then status 200

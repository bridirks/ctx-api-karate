Feature: Feature file for the api endpoint:

Background:
  
* def data = endpoints;

Scenario Outline: test that current.name gives a 200 response
  
* configure ssl = true
* def current = data[<name>]
    
Given url baseUrl+':'+current.port
Given path current.path
And params current.params
When method get
Then status 200

Examples:
      
| name |
| "helptext" |
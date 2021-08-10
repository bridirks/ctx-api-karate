Feature: Feature file for the api endpoint:

  Background:
  * def ep = read('endpoints.json');
  * def keys = []
    * def vals = []
    * def idxs = []
    * def fun = 
    """
    function(x, y, i) { 
      karate.appendTo(keys, x); 
      karate.appendTo(vals, y); 
      karate.appendTo(idxs, i); 
    }
    """
 * karate.forEach(ep, fun)

  Scenario Outline: test that <name> gives a 200 response
    	Given url baseUrl+':'+"<port>"
    	And path "<path>"
			And params <params>  
    	When method get
    	Then status <code>
  
	Examples:
      	| vals |
function() {
    var env = karate.env; // get java system property 'karate.env'

    karate.log('karate.env selected environment was:', env);
    karate.configure("ssl", true)

    if (!env) {
    env = 'dev'; //env can be anything: dev, qa, staging, etc.
    }

  // base config
  var config = {
	endpoints: read('endpoints.json'),
    env: env,
    baseUrl: 'http://ccte-api-ccd-stg.epa.gov',
    apiKey: ''
  }
  //switch environment
  if (env == 'dev') 
  {
    config.baseUrl = 'http://ccte-api-ccd-dev.epa.gov';
    config.apiKey  = 'fake-1ba403ca8938176f3a62de6d30cfb8e';
  } 
  else if (env == 'staging') { //Pre-production environment settings
    config.baseUrl = 'http://ccte-api-ccd-stg.epa.gov';
    config.apiKey  = 'fake-d5de2eb8c0920537f5488f6535c139f2';
  }
  else if (env == 'ip')
  {
  	config.baseUrl = 'https://ccte-api-ccd.epa.gov';
    config.apiKey  = 'fake-d5de2eb8c0920537f5488f6535c139f2';
  } 
  else if (env = 'edge')
  {
    config.baseUrl = 'ho.epa.gov'
  }
	karate.log('baseurl: ',config.baseUrl);
    
    karate.configure('connectTimeout', 60000);
    karate.configure('readTimeout', 60000);

    return config;
}
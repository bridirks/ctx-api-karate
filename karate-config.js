function() {
    var env = karate.env; // get java system property 'karate.env'
    var app = java.lang.System.getenv('TEST_APP');

    karate.log('karate.env selected environment was:', env);
    karate.configure("ssl", true)

    if (!env) {
    env = 'dev'; //env can be anything: dev, qa, staging, etc.
    }

  // base config
  var config = {
	env: env,
    baseUrl: `https://ccte-api-${app}-${env}.epa.gov`,
    apiKey: ''
  }
  //switch environment
  if (env == 'dev')
  {
    config.baseUrl = `https://ccte-api-${app}-${env}.epa.gov`;
    config.apiKey  = 'fake-1ba403ca8938176f3a62de6d30cfb8e';
  }
	karate.log('baseurl: ',config.baseUrl);

    karate.configure('connectTimeout', 60000);
    karate.configure('readTimeout', 60000);

    return config;
}

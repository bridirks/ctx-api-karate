function() {
    var env = karate.env; // get java system property 'karate.env'

    karate.log('karate.env selected environment was:', env);
    karate.configure("ssl", true)

    if (!env) {
    env = 'dev'; //env can be anything: dev, qa, staging, etc.
    }

  // base config
  var config = {
	env: env,
    rapidtox: `https://ccte-api-rapidtox-${env}.epa.gov`,
    impact: `https://ccte-api-impact-${env}.epa.gov`
  }
  //switch environment
  if (env == 'prod')
  {
    config.impact = `https://ccte-api-impact.epa.gov`
  }
	karate.log('baseurl: ',config.baseUrl);

    karate.configure('connectTimeout', 60000);
    karate.configure('readTimeout', 60000);

    return config;
}

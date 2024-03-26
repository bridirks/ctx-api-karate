function() {
    var env = karate.env; // get java system property 'karate.env'

    karate.log('karate.env selected environment was:', env);
    karate.configure("ssl", true)

    if (!env) {
    env = 'dev'; // env can be anything: dev, qa, staging, etc.
    }

  // base config
  var config = {
	env: env,
    ccte: `https://api-ccte.epa.gov`,
    apikey: `acbd706d-091d-4dc5-9230-0f4b07476bda`
    batchdtxsid: `["DTXSID7020182","DTXSID9020112"]`
  }
  // switch environment
  if (env == 'stg')
  {
    config.ccte = `https://api-ccte-stg.epa.gov`
  }
  else if (env == 'prod')
  {
    config.ccte = `https://api-ccte.epa.gov`
  }

    karate.configure('connectTimeout', 60000);
    karate.configure('readTimeout', 60000);

    return config;
}

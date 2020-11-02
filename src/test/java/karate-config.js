function fn() {    
  var env = karate.env; // get system property 'karate.env'
  karate.log('karate.env system property was:', env);

  if (!env) {
    env = 'dev';
  }
  var config = {
    env: env,
    urlBase: '#',
  }
  if (env == 'dev') {
    config.urlBase = 'http://fakerestapi.azurewebsites.net';
  } else if (env == 'prod') {
    config.urlBase = 'http://fakerestapi.azurewebsites.net';
  }
  return config;
}
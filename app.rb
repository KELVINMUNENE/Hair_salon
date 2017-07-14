require('sinatra')
  require('sinatra/reloader')
  require('./lib/client')
  require('./lib/stylist')
  also_reload('lib/**/*.rb')
  require("pg")

  

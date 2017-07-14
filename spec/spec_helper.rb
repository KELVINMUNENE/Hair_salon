require("rspec")
  require("pg")
  require("stylist")
  require('client')


  DB = PG.connect({:dbname => "hair_salon_test"})

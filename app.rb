require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/patient')
require('./lib/doctor')
require('pg')
require('pry')

DB = PG.connect({:dbname => "doctor_test"})

get('/') do
  erb(:index)
end

get('/doctor_form') do
  erb(:doctor_form)
end

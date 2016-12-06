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

post('/doctor_form') do
  name = params.fetch("name_input")
  specialty = params.fetch("specialty_input")
  Doctor.new({:id => nil, :name => name, :specialty => specialty}).save
  erb(:doctor_success)
end

get('/doctor_list') do
  @doctors = Doctor.all
  erb(:doctor_list)
end

post('') do

end

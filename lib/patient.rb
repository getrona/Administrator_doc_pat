class Patient
attr_reader(:name, :birthday, :doctor_id)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @birthday = attributes.fetch(:birthday)
    @doctor_id = attributes.fetch(:doctor_id)
  end

  define_singleton_method(:all) do
    returned_patients = DB.exec("SELECT FROM patients *;")
    patients = []

    returned_patients.each() do |patient|
      name = patient.fetch('name')
      birthday = patient.fetch('birthday')
      doctor_id = patient.fetch('doctor_id')
      patients.push(Patient.new(:name => name, :birthday => birthday, :doctor_id => doctor_id))
    end
    patients
  end
end

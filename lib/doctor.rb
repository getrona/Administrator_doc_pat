class Doctor
  attr_reader(:id, :name, :specialty)

  define_method(:initialize) do |attributes|
    @id = attributes.fetch(:id)
    @name = attributes.fetch(:name)
    @specialty = attributes.fetch(:specialty)
  end

  define_singleton_method(:all) do
    returned_doctor = DB.exec("SELECT * FROM doctors;")
    doctors = []
    returned_doctor.each do |doctor|
      id = doctor.fetch("id").to_i
      name = doctor.fetch("name")
      specialty = doctor.fetch("specialty")
      doctors.push(Doctor.new({:id => id, :name => name, :specialty => specialty}))
    end
    doctors
  end

  define_method(:==) do |other_doctor|
    self.name == (other_doctor.name) && self.specialty == (other_doctor.specialty) && self.id == (other_doctor.id)
  end

  define_method(:save) do
    result = DB.exec("INSERT INTO doctors (name, specialty) VALUES ('#{@name}', '#{@specialty}') RETURNING id;")
    @id = result.first().fetch("id").to_i
  end
end

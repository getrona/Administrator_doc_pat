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
end

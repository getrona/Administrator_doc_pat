require('spec_helper')

describe(Patient) do

  before() do
    @test_patient = Patient.new({:name => "Paul", :birthday => '1987-02-26 00:00:00', :doctor_id => 1})
  end

  describe('#name') do
    it('will return name of the patient') do
      expect(@test_patient.name).to(eq("Paul"))
    end
  end

  describe('#birthday') do
    it('will return birthday of the patient') do
      expect(@test_patient.birthday).to(eq('1987-02-26 00:00:00'))
    end
  end

  describe('#doctor_id') do
    it('will return the doctor id assigned to patient') do
      expect(@test_patient.doctor_id).to(eq(1))
    end
  end
end

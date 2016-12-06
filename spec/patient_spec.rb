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
end

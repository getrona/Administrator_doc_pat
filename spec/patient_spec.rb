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

  describe('.all') do
    it('return the elements from the table') do
      expect(Patient.all()).to(eq([]))
    end
  end

  describe('==') do
    it('tests for equivalence without instance id') do
      @test_patient2 = Patient.new({:name => "Paul", :birthday => '1987-02-26 00:00:00', :doctor_id => 1})
      expect(@test_patient).to(eq(@test_patient2))
    end
  end
end

require('spec_helper')

describe(Doctor) do
  before() do
    @test_doctor = Doctor.new({:id => nil, :name => "Hebert", :specialty => "orthopedic"})
  end

  describe('#name') do
    it('returns the name of the physician') do
      expect(@test_doctor.name).to(eq("Hebert"))
    end
  end
  describe('#specialty') do
    it('returns the specialty of the physician') do
      expect(@test_doctor.specialty).to(eq("orthopedic"))
    end
  end
  describe('#all') do
    it('tests for ability to save input to table') do
      expect(Doctor.all).to(eq([]))
    end
  end
end

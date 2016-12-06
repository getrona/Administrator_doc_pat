require('spec_helper')

describe(Doctor) do
  describe('#name') do
    it('returns the name of the physician') do
      test_doctor = Doctor.new({:name => "Hebert", :specialty => "orthopedic"})
      expect(test_doctor.name()).to(eq("Hebert"))
    end
  end
end

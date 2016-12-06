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
  describe('.all') do
    it('tests for ability to save input to table') do
      expect(Doctor.all).to(eq([]))
    end
  end

  describe('#==') do
    it('will assign equivalence to id, name, specialty') do
      @test_doctor2 = Doctor.new({:id => nil, :name => "Hebert", :specialty => "orthopedic"})
      expect(@test_doctor).to(eq(@test_doctor2))
    end
  end

  # describe('#save') do
  #   it('will save the doctor record in the table') do
  #     @test_doctor.save()
  #     expect(Doctor.all()).to(eq([@test_doctor]))
  #   end
  # end
end

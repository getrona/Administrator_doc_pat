require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('test navigation', {:type => :feature}) do
  it('navigates to doctor entry form') do
    visit('/')
    click_link('Create a new doctor profile')
    expect(page).to have_content("Create a new doctor profile")
  end


  it('inputs content to doctor form and navigates to success page') do
    visit('/')
    click_link('Create a new doctor profile')
    fill_in("name_input", :with => "Doctor Phil")
    fill_in("specialty_input", :with => "Orthopedic")
    click_button("Add Doctor")
    expect(page).to have_content("You successfully added a doctor to your list!")
  end

  it('displays all doctors') do
    doctor = Doctor.new({:id => nil, :name => "Dr Jet", :specialty => "orthopedic"})
    doctor.save()
    visit('/')
    click_link('View all doctors')
    expect(page).to have_content(doctor.name)
  end
end

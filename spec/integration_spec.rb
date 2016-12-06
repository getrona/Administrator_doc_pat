require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('adding a new doctor', {:type => :feature}) do
  it('allows user to create a new doctor') do
    visit('/')
    click_link('Create a new doctor profile')
    expect(page).to have_content("Create a new doctor profile")
  end
end

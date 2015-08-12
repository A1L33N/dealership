require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions,false)

describe 'the vehicle path', { type: :feature } do
  it 'allows user to input vehicles and see list of all vehicles' do
    visit('/')
    click_link('See Vehicles')
    expect(page).to have_content('Available Vehicles')
  end
end

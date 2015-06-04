require('capybara/rspec') #requiring capybara support for rspec
require('./app')
Capybara.app = Sinatra::Application  #telling Capybara that I'm testing the Sinatra app, because it does test other apps

describe("the index page path", {:type => :feature}) do #the type/feature hash is required for Capabara to work together with rspec
  it('says whether or not the shape is a square based on user input') do
    visit('/')
    fill_in('length', :with => 30)
    fill_in('width', :with => 30)
    click_button('Submit')
    expect(page).to have_content('Your shape is a square!')
  end
end

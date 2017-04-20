require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
describe('the coin conversion result path', {:type => :feature}) do
  it('processes the user entry and returns the number of coins from the greatest denomination to the smallest') do
    visit('/')
    select('85', from: 'coin_form')
    click_button('Send')
    expect(page).to have_content('Quarter(s):3", "Dime(s):1", "Nickel(s):0", "Cent(s):0')
  end
end

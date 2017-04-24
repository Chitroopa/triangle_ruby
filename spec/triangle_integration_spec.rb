require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('triangle',{:type => :feature}) do
  it('processes user entry and returns type of the triangle') do
    visit('/')
    fill_in('side1', :with => 5)
    fill_in('side2', :with => 5)
    fill_in('side3', :with => 5)
    click_button('Check!')
    expect(page).to have_content('Equilateral Triangle')
  end
end

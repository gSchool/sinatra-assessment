require          'spec_helper'
require          'capybara/rspec'
require_relative '../app'

Capybara.app = App

feature 'Product Manager' do 
  scenario 'User sees a page that says "Welcome"' do 
    visit '/'
    within('h1') {expect(page).to have_content("Welcome")}
  end

  scenario 'Users clicks a link named "Add a Product"' do
    visit '/'
    click_link 'Add a Product'
    within('h1') {expect(page).to have_content("New Product")}
  end
end

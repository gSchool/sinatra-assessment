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

  scenario 'User enters some text for the product name and clicks a button called "Create Product"' do 
    visit '/'
    click_link 'Add a Product'
    fill_in 'new_item', with: 'Kale Chips'
    click_button 'Create Product'
  end

  scenario 'User sees the product they entered underneath the "Welcome" message on the homepage' do 
    visit '/'
    click_link 'Add a Product'
    fill_in 'new_item', with: 'Kombucha'
    click_button 'Create Product'
    within('li') {expect(page).to have_content("Kombucha")}
  end
end

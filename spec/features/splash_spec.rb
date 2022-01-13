require 'rails_helper'

RSpec.feature 'Splash page', type: :feature do
  background do
    login_user
    visit root_path
  end

  scenario 'Should display the current user name' do
    expect(page).to have_content('John smith')
  end

  scenario 'Should display signed in message' do
    expect(page).to have_content('You are signed in')
  end

  scenario 'should redirect to categories path' do
    find('#go-categories').click
    expect(current_path).to eq(categories_path)
  end
end

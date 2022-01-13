require 'rails_helper'

RSpec.feature 'Categories page', type: :feature do
  background do
    login_user
    visit "/categories/#{@category.id}"
  end

  scenario 'Should display the title' do
    expect(page).to have_content('Recent Transactions')
  end

  scenario 'Should display transaction created' do
    expect(page).to have_content('pay Nelsino back')
  end

  scenario 'Should display transaction amount' do
    expect(page).to have_content '$ 20.0'
  end

  scenario 'should redirect to new category path' do
    find('#add').click
    expect(current_path).to eq(new_activity_path)
  end
end

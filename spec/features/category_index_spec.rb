require 'rails_helper'

RSpec.feature 'Categories page', type: :feature do
  background do
    login_user
    visit root_path
    find('#go-categories').click
  end

  scenario 'Should display the title' do
    expect(page).to have_content('Your Categories')
  end

  scenario 'Should display Category created' do
    expect(page).to have_content('Loan')
  end

  scenario 'Should display transaction amount' do
    expect(page).to have_content '$ 20.0'
  end

  scenario 'should redirect to new category path' do
    find('#add').click
    expect(current_path).to eq(new_category_path)
  end
end

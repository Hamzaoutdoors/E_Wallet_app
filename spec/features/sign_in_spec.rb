require 'rails_helper'

describe 'the signin process', type: :feature do
  context 'when successfull' do
    before :each do
      user = User.new(id: 1, name: 'Hamza', email: 'user@example.com')
      user.password = 'admin123'
      user.password_confirmation = 'admin123'
      user.save
    end

    it 'Log in => Signed in successfully.' do
      visit new_user_session_path
      within('form') do
        fill_in 'user_email', with: 'user@example.com'
        fill_in 'user_password', with: 'admin123'
      end
      click_button 'Log in'
      expect(page).to have_content 'Signed in successfully.'
      expect(page).to have_content 'Your Categories'
      expect(page).to have_content 'ADD NEW CATEGORY'
    end

    it 'redirects to root' do
      visit new_user_session_path
      within('form') do
        fill_in 'user_email', with: 'user@example.com'
        fill_in 'user_password', with: 'admin123'
      end

      click_button 'Log in'
      expect(current_path).to eq(categories_path)
    end
  end
end

describe 'when unsuccesfull' do
  before :each do
    user = User.new(name: 'Hamza', email: 'user@example.com')
    user.password = 'admin123'
    user.password_confirmation = 'admin123'
    user.save
  end

  it 'when email and passoword are not found' do
    visit '/users/sign_in'
    within('form') do
      fill_in 'user_email', with: ''
      fill_in 'user_password', with: ''
    end
    click_button 'Log in'

    expect(page).to have_content 'Sign up'
  end

  it 'when email and passoword are not found' do
    visit '/users/sign_in'
    within('form') do
      fill_in 'user_email', with: 'fooooo1@foo.com'
      fill_in 'user_password', with: 'admin123'
    end
    click_button 'Log in'

    expect(page).to have_content 'Sign up'
  end

  it 'when email and passoword are not found' do
    visit '/users/sign_in'
    within('form') do
      fill_in 'user_email', with: 'user@example.com'
      fill_in 'user_password', with: 'thisisnotthepassword'
    end
    click_button 'Log in'

    expect(page).to have_content 'Sign up'
  end
end

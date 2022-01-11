require 'application_system_test_case'

class ActionsTest < ApplicationSystemTestCase
  setup do
    @action = actions(:one)
  end

  test 'visiting the index' do
    visit actions_url
    assert_selector 'h1', text: 'Actions'
  end

  test 'creating a Action' do
    visit actions_url
    click_on 'New Action'

    fill_in 'Amount', with: @action.amount
    fill_in 'Name', with: @action.name
    click_on 'Create Action'

    assert_text 'Action was successfully created'
    click_on 'Back'
  end

  test 'updating a Action' do
    visit actions_url
    click_on 'Edit', match: :first

    fill_in 'Amount', with: @action.amount
    fill_in 'Name', with: @action.name
    click_on 'Update Action'

    assert_text 'Action was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Action' do
    visit actions_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Action was successfully destroyed'
  end
end

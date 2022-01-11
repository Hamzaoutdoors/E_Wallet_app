require 'test_helper'

class ActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @action = actions(:one)
  end

  test 'should get index' do
    get actions_url
    assert_response :success
  end

  test 'should get new' do
    get new_action_url
    assert_response :success
  end

  test 'should create action' do
    assert_difference('Action.count') do
      post actions_url, params: { action: { amount: @action.amount, name: @action.name } }
    end

    assert_redirected_to action_url(Action.last)
  end

  test 'should show action' do
    get action_url(@action)
    assert_response :success
  end

  test 'should get edit' do
    get edit_action_url(@action)
    assert_response :success
  end

  test 'should update action' do
    patch action_url(@action), params: { action: { amount: @action.amount, name: @action.name } }
    assert_redirected_to action_url(@action)
  end

  test 'should destroy action' do
    assert_difference('Action.count', -1) do
      delete action_url(@action)
    end

    assert_redirected_to actions_url
  end
end

require 'test_helper'

class TermdepositsControllerTest < ActionController::TestCase
  setup do
    @termdeposit = termdeposits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:termdeposits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create termdeposit" do
    assert_difference('Termdeposit.count') do
      post :create, termdeposit: { description: @termdeposit.description, value: @termdeposit.value }
    end

    assert_redirected_to termdeposit_path(assigns(:termdeposit))
  end

  test "should show termdeposit" do
    get :show, id: @termdeposit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @termdeposit
    assert_response :success
  end

  test "should update termdeposit" do
    patch :update, id: @termdeposit, termdeposit: { description: @termdeposit.description, value: @termdeposit.value }
    assert_redirected_to termdeposit_path(assigns(:termdeposit))
  end

  test "should destroy termdeposit" do
    assert_difference('Termdeposit.count', -1) do
      delete :destroy, id: @termdeposit
    end

    assert_redirected_to termdeposits_path
  end
end

require 'test_helper'

class MoneyowingsControllerTest < ActionController::TestCase
  setup do
    @moneyowing = moneyowings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:moneyowings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create moneyowing" do
    assert_difference('Moneyowing.count') do
      post :create, moneyowing: { description: @moneyowing.description, value: @moneyowing.value }
    end

    assert_redirected_to moneyowing_path(assigns(:moneyowing))
  end

  test "should show moneyowing" do
    get :show, id: @moneyowing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @moneyowing
    assert_response :success
  end

  test "should update moneyowing" do
    patch :update, id: @moneyowing, moneyowing: { description: @moneyowing.description, value: @moneyowing.value }
    assert_redirected_to moneyowing_path(assigns(:moneyowing))
  end

  test "should destroy moneyowing" do
    assert_difference('Moneyowing.count', -1) do
      delete :destroy, id: @moneyowing
    end

    assert_redirected_to moneyowings_path
  end
end

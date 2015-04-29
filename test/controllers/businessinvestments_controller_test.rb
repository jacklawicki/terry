require 'test_helper'

class BusinessinvestmentsControllerTest < ActionController::TestCase
  setup do
    @businessinvestment = businessinvestments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:businessinvestments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create businessinvestment" do
    assert_difference('Businessinvestment.count') do
      post :create, businessinvestment: { description: @businessinvestment.description, value: @businessinvestment.value }
    end

    assert_redirected_to businessinvestment_path(assigns(:businessinvestment))
  end

  test "should show businessinvestment" do
    get :show, id: @businessinvestment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @businessinvestment
    assert_response :success
  end

  test "should update businessinvestment" do
    patch :update, id: @businessinvestment, businessinvestment: { description: @businessinvestment.description, value: @businessinvestment.value }
    assert_redirected_to businessinvestment_path(assigns(:businessinvestment))
  end

  test "should destroy businessinvestment" do
    assert_difference('Businessinvestment.count', -1) do
      delete :destroy, id: @businessinvestment
    end

    assert_redirected_to businessinvestments_path
  end
end

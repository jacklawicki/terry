require 'test_helper'

class VendorfinancesControllerTest < ActionController::TestCase
  setup do
    @vendorfinance = vendorfinances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendorfinances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendorfinance" do
    assert_difference('Vendorfinance.count') do
      post :create, vendorfinance: { description: @vendorfinance.description, value: @vendorfinance.value }
    end

    assert_redirected_to vendorfinance_path(assigns(:vendorfinance))
  end

  test "should show vendorfinance" do
    get :show, id: @vendorfinance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vendorfinance
    assert_response :success
  end

  test "should update vendorfinance" do
    patch :update, id: @vendorfinance, vendorfinance: { description: @vendorfinance.description, value: @vendorfinance.value }
    assert_redirected_to vendorfinance_path(assigns(:vendorfinance))
  end

  test "should destroy vendorfinance" do
    assert_difference('Vendorfinance.count', -1) do
      delete :destroy, id: @vendorfinance
    end

    assert_redirected_to vendorfinances_path
  end
end

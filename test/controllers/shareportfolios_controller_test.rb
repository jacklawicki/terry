require 'test_helper'

class ShareportfoliosControllerTest < ActionController::TestCase
  setup do
    @shareportfolio = shareportfolios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shareportfolios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shareportfolio" do
    assert_difference('Shareportfolio.count') do
      post :create, shareportfolio: { description: @shareportfolio.description, value: @shareportfolio.value }
    end

    assert_redirected_to shareportfolio_path(assigns(:shareportfolio))
  end

  test "should show shareportfolio" do
    get :show, id: @shareportfolio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shareportfolio
    assert_response :success
  end

  test "should update shareportfolio" do
    patch :update, id: @shareportfolio, shareportfolio: { description: @shareportfolio.description, value: @shareportfolio.value }
    assert_redirected_to shareportfolio_path(assigns(:shareportfolio))
  end

  test "should destroy shareportfolio" do
    assert_difference('Shareportfolio.count', -1) do
      delete :destroy, id: @shareportfolio
    end

    assert_redirected_to shareportfolios_path
  end
end

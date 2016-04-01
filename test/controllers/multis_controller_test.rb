require 'test_helper'

class MultisControllerTest < ActionController::TestCase
  setup do
    @multi = multis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:multis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create multi" do
    assert_difference('Multi.count') do
      post :create, multi: { user_id: @multi.user_id }
    end

    assert_redirected_to multi_path(assigns(:multi))
  end

  test "should show multi" do
    get :show, id: @multi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @multi
    assert_response :success
  end

  test "should update multi" do
    patch :update, id: @multi, multi: { user_id: @multi.user_id }
    assert_redirected_to multi_path(assigns(:multi))
  end

  test "should destroy multi" do
    assert_difference('Multi.count', -1) do
      delete :destroy, id: @multi
    end

    assert_redirected_to multis_path
  end
end

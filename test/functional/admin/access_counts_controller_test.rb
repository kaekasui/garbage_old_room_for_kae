require 'test_helper'

class Admin::AccessCountsControllerTest < ActionController::TestCase
  setup do
    @admin_access_count = admin_access_counts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_access_counts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_access_count" do
    assert_difference('Admin::AccessCount.count') do
      post :create, admin_access_count: @admin_access_count.attributes
    end

    assert_redirected_to admin_access_count_path(assigns(:admin_access_count))
  end

  test "should show admin_access_count" do
    get :show, id: @admin_access_count
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_access_count
    assert_response :success
  end

  test "should update admin_access_count" do
    put :update, id: @admin_access_count, admin_access_count: @admin_access_count.attributes
    assert_redirected_to admin_access_count_path(assigns(:admin_access_count))
  end

  test "should destroy admin_access_count" do
    assert_difference('Admin::AccessCount.count', -1) do
      delete :destroy, id: @admin_access_count
    end

    assert_redirected_to admin_access_counts_path
  end
end

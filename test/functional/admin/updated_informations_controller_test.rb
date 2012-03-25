require 'test_helper'

class Admin::UpdatedInformationsControllerTest < ActionController::TestCase
  setup do
    @admin_updated_information = admin_updated_informations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_updated_informations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_updated_information" do
    assert_difference('Admin::UpdatedInformation.count') do
      post :create, admin_updated_information: @admin_updated_information.attributes
    end

    assert_redirected_to admin_updated_information_path(assigns(:admin_updated_information))
  end

  test "should show admin_updated_information" do
    get :show, id: @admin_updated_information.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_updated_information.to_param
    assert_response :success
  end

  test "should update admin_updated_information" do
    put :update, id: @admin_updated_information.to_param, admin_updated_information: @admin_updated_information.attributes
    assert_redirected_to admin_updated_information_path(assigns(:admin_updated_information))
  end

  test "should destroy admin_updated_information" do
    assert_difference('Admin::UpdatedInformation.count', -1) do
      delete :destroy, id: @admin_updated_information.to_param
    end

    assert_redirected_to admin_updated_informations_path
  end
end

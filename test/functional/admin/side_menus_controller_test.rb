require 'test_helper'

class Admin::SideMenusControllerTest < ActionController::TestCase
  setup do
    @admin_side_menu = admin_side_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_side_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_side_menu" do
    assert_difference('Admin::SideMenu.count') do
      post :create, admin_side_menu: @admin_side_menu.attributes
    end

    assert_redirected_to admin_side_menu_path(assigns(:admin_side_menu))
  end

  test "should show admin_side_menu" do
    get :show, id: @admin_side_menu.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_side_menu.to_param
    assert_response :success
  end

  test "should update admin_side_menu" do
    put :update, id: @admin_side_menu.to_param, admin_side_menu: @admin_side_menu.attributes
    assert_redirected_to admin_side_menu_path(assigns(:admin_side_menu))
  end

  test "should destroy admin_side_menu" do
    assert_difference('Admin::SideMenu.count', -1) do
      delete :destroy, id: @admin_side_menu.to_param
    end

    assert_redirected_to admin_side_menus_path
  end
end

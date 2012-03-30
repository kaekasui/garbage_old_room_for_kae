require 'test_helper'

class Admin::AdminMenusControllerTest < ActionController::TestCase
  setup do
    @admin_admin_menu = admin_admin_menus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_admin_menus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_admin_menu" do
    assert_difference('Admin::AdminMenu.count') do
      post :create, admin_admin_menu: @admin_admin_menu.attributes
    end

    assert_redirected_to admin_admin_menu_path(assigns(:admin_admin_menu))
  end

  test "should show admin_admin_menu" do
    get :show, id: @admin_admin_menu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_admin_menu
    assert_response :success
  end

  test "should update admin_admin_menu" do
    put :update, id: @admin_admin_menu, admin_admin_menu: @admin_admin_menu.attributes
    assert_redirected_to admin_admin_menu_path(assigns(:admin_admin_menu))
  end

  test "should destroy admin_admin_menu" do
    assert_difference('Admin::AdminMenu.count', -1) do
      delete :destroy, id: @admin_admin_menu
    end

    assert_redirected_to admin_admin_menus_path
  end
end

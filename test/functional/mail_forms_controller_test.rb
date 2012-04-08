require 'test_helper'

class MailFormsControllerTest < ActionController::TestCase
  setup do
    @mail_form = mail_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mail_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mail_form" do
    assert_difference('MailForm.count') do
      post :create, mail_form: @mail_form.attributes
    end

    assert_redirected_to mail_form_path(assigns(:mail_form))
  end

  test "should show mail_form" do
    get :show, id: @mail_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mail_form
    assert_response :success
  end

  test "should update mail_form" do
    put :update, id: @mail_form, mail_form: @mail_form.attributes
    assert_redirected_to mail_form_path(assigns(:mail_form))
  end

  test "should destroy mail_form" do
    assert_difference('MailForm.count', -1) do
      delete :destroy, id: @mail_form
    end

    assert_redirected_to mail_forms_path
  end
end

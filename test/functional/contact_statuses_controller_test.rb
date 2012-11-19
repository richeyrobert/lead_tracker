require 'test_helper'

class ContactStatusesControllerTest < ActionController::TestCase
  setup do
    @contact_status = contact_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_status" do
    assert_difference('ContactStatus.count') do
      post :create, contact_status: { notes: @contact_status.notes, status: @contact_status.status }
    end

    assert_redirected_to contact_status_path(assigns(:contact_status))
  end

  test "should show contact_status" do
    get :show, id: @contact_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_status
    assert_response :success
  end

  test "should update contact_status" do
    put :update, id: @contact_status, contact_status: { notes: @contact_status.notes, status: @contact_status.status }
    assert_redirected_to contact_status_path(assigns(:contact_status))
  end

  test "should destroy contact_status" do
    assert_difference('ContactStatus.count', -1) do
      delete :destroy, id: @contact_status
    end

    assert_redirected_to contact_statuses_path
  end
end

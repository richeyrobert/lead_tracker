require 'test_helper'

class InstallerStatusesControllerTest < ActionController::TestCase
  setup do
    @installer_status = installer_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:installer_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create installer_status" do
    assert_difference('InstallerStatus.count') do
      post :create, installer_status: { notes: @installer_status.notes, status: @installer_status.status }
    end

    assert_redirected_to installer_status_path(assigns(:installer_status))
  end

  test "should show installer_status" do
    get :show, id: @installer_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @installer_status
    assert_response :success
  end

  test "should update installer_status" do
    put :update, id: @installer_status, installer_status: { notes: @installer_status.notes, status: @installer_status.status }
    assert_redirected_to installer_status_path(assigns(:installer_status))
  end

  test "should destroy installer_status" do
    assert_difference('InstallerStatus.count', -1) do
      delete :destroy, id: @installer_status
    end

    assert_redirected_to installer_statuses_path
  end
end

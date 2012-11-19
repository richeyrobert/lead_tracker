require 'test_helper'

class PackageStatusesControllerTest < ActionController::TestCase
  setup do
    @package_status = package_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:package_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create package_status" do
    assert_difference('PackageStatus.count') do
      post :create, package_status: { notes: @package_status.notes, status: @package_status.status }
    end

    assert_redirected_to package_status_path(assigns(:package_status))
  end

  test "should show package_status" do
    get :show, id: @package_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @package_status
    assert_response :success
  end

  test "should update package_status" do
    put :update, id: @package_status, package_status: { notes: @package_status.notes, status: @package_status.status }
    assert_redirected_to package_status_path(assigns(:package_status))
  end

  test "should destroy package_status" do
    assert_difference('PackageStatus.count', -1) do
      delete :destroy, id: @package_status
    end

    assert_redirected_to package_statuses_path
  end
end

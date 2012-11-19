require 'test_helper'

class PartnerStatusesControllerTest < ActionController::TestCase
  setup do
    @partner_status = partner_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partner_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partner_status" do
    assert_difference('PartnerStatus.count') do
      post :create, partner_status: { notes: @partner_status.notes, status: @partner_status.status }
    end

    assert_redirected_to partner_status_path(assigns(:partner_status))
  end

  test "should show partner_status" do
    get :show, id: @partner_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partner_status
    assert_response :success
  end

  test "should update partner_status" do
    put :update, id: @partner_status, partner_status: { notes: @partner_status.notes, status: @partner_status.status }
    assert_redirected_to partner_status_path(assigns(:partner_status))
  end

  test "should destroy partner_status" do
    assert_difference('PartnerStatus.count', -1) do
      delete :destroy, id: @partner_status
    end

    assert_redirected_to partner_statuses_path
  end
end

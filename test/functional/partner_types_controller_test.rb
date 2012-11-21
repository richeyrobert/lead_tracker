require 'test_helper'

class PartnerTypesControllerTest < ActionController::TestCase
  setup do
    @partner_type = partner_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partner_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partner_type" do
    assert_difference('PartnerType.count') do
      post :create, partner_type: { notes: @partner_type.notes, partner_type: @partner_type.partner_type }
    end

    assert_redirected_to partner_type_path(assigns(:partner_type))
  end

  test "should show partner_type" do
    get :show, id: @partner_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partner_type
    assert_response :success
  end

  test "should update partner_type" do
    put :update, id: @partner_type, partner_type: { notes: @partner_type.notes, partner_type: @partner_type.partner_type }
    assert_redirected_to partner_type_path(assigns(:partner_type))
  end

  test "should destroy partner_type" do
    assert_difference('PartnerType.count', -1) do
      delete :destroy, id: @partner_type
    end

    assert_redirected_to partner_types_path
  end
end

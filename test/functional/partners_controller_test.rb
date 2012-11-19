require 'test_helper'

class PartnersControllerTest < ActionController::TestCase
  setup do
    @partner = partners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partner" do
    assert_difference('Partner.count') do
      post :create, partner: { address1: @partner.address1, address2: @partner.address2, city: @partner.city, contact: @partner.contact, email: @partner.email, name: @partner.name, notes: @partner.notes, phone1: @partner.phone1, phone2: @partner.phone2, state: @partner.state, taxid: @partner.taxid, website: @partner.website, zip: @partner.zip }
    end

    assert_redirected_to partner_path(assigns(:partner))
  end

  test "should show partner" do
    get :show, id: @partner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partner
    assert_response :success
  end

  test "should update partner" do
    put :update, id: @partner, partner: { address1: @partner.address1, address2: @partner.address2, city: @partner.city, contact: @partner.contact, email: @partner.email, name: @partner.name, notes: @partner.notes, phone1: @partner.phone1, phone2: @partner.phone2, state: @partner.state, taxid: @partner.taxid, website: @partner.website, zip: @partner.zip }
    assert_redirected_to partner_path(assigns(:partner))
  end

  test "should destroy partner" do
    assert_difference('Partner.count', -1) do
      delete :destroy, id: @partner
    end

    assert_redirected_to partners_path
  end
end

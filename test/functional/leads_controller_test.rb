require 'test_helper'

class LeadsControllerTest < ActionController::TestCase
  setup do
    @lead = leads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lead" do
    assert_difference('Lead.count') do
      post :create, lead: { address1: @lead.address1, address2: @lead.address2, city: @lead.city, customer_paid: @lead.customer_paid, email: @lead.email, name: @lead.name, notes: @lead.notes, partner_paid: @lead.partner_paid, phone1: @lead.phone1, phone2: @lead.phone2, state: @lead.state, zip: @lead.zip }
    end

    assert_redirected_to lead_path(assigns(:lead))
  end

  test "should show lead" do
    get :show, id: @lead
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lead
    assert_response :success
  end

  test "should update lead" do
    put :update, id: @lead, lead: { address1: @lead.address1, address2: @lead.address2, city: @lead.city, customer_paid: @lead.customer_paid, email: @lead.email, name: @lead.name, notes: @lead.notes, partner_paid: @lead.partner_paid, phone1: @lead.phone1, phone2: @lead.phone2, state: @lead.state, zip: @lead.zip }
    assert_redirected_to lead_path(assigns(:lead))
  end

  test "should destroy lead" do
    assert_difference('Lead.count', -1) do
      delete :destroy, id: @lead
    end

    assert_redirected_to leads_path
  end
end

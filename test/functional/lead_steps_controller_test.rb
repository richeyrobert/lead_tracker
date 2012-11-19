require 'test_helper'

class LeadStepsControllerTest < ActionController::TestCase
  setup do
    @lead_step = lead_steps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lead_steps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lead_step" do
    assert_difference('LeadStep.count') do
      post :create, lead_step: { notes: @lead_step.notes, step: @lead_step.step }
    end

    assert_redirected_to lead_step_path(assigns(:lead_step))
  end

  test "should show lead_step" do
    get :show, id: @lead_step
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lead_step
    assert_response :success
  end

  test "should update lead_step" do
    put :update, id: @lead_step, lead_step: { notes: @lead_step.notes, step: @lead_step.step }
    assert_redirected_to lead_step_path(assigns(:lead_step))
  end

  test "should destroy lead_step" do
    assert_difference('LeadStep.count', -1) do
      delete :destroy, id: @lead_step
    end

    assert_redirected_to lead_steps_path
  end
end

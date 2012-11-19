require 'test_helper'

class AgentTypesControllerTest < ActionController::TestCase
  setup do
    @agent_type = agent_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agent_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agent_type" do
    assert_difference('AgentType.count') do
      post :create, agent_type: { notes: @agent_type.notes, type: @agent_type.type }
    end

    assert_redirected_to agent_type_path(assigns(:agent_type))
  end

  test "should show agent_type" do
    get :show, id: @agent_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agent_type
    assert_response :success
  end

  test "should update agent_type" do
    put :update, id: @agent_type, agent_type: { notes: @agent_type.notes, type: @agent_type.type }
    assert_redirected_to agent_type_path(assigns(:agent_type))
  end

  test "should destroy agent_type" do
    assert_difference('AgentType.count', -1) do
      delete :destroy, id: @agent_type
    end

    assert_redirected_to agent_types_path
  end
end

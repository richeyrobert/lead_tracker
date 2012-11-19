require 'test_helper'

class StepsLogsControllerTest < ActionController::TestCase
  setup do
    @steps_log = steps_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:steps_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create steps_log" do
    assert_difference('StepsLog.count') do
      post :create, steps_log: { date_time: @steps_log.date_time, notes: @steps_log.notes }
    end

    assert_redirected_to steps_log_path(assigns(:steps_log))
  end

  test "should show steps_log" do
    get :show, id: @steps_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @steps_log
    assert_response :success
  end

  test "should update steps_log" do
    put :update, id: @steps_log, steps_log: { date_time: @steps_log.date_time, notes: @steps_log.notes }
    assert_redirected_to steps_log_path(assigns(:steps_log))
  end

  test "should destroy steps_log" do
    assert_difference('StepsLog.count', -1) do
      delete :destroy, id: @steps_log
    end

    assert_redirected_to steps_logs_path
  end
end

require 'test_helper'

class TcpdumpLogsControllerTest < ActionController::TestCase
  setup do
    @tcpdump_log = tcpdump_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tcpdump_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tcpdump_log" do
    assert_difference('TcpdumpLog.count') do
      post :create, tcpdump_log: { user_data: @tcpdump_log.user_data, user_id: @tcpdump_log.user_id }
    end

    assert_redirected_to tcpdump_log_path(assigns(:tcpdump_log))
  end

  test "should show tcpdump_log" do
    get :show, id: @tcpdump_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tcpdump_log
    assert_response :success
  end

  test "should update tcpdump_log" do
    patch :update, id: @tcpdump_log, tcpdump_log: { user_data: @tcpdump_log.user_data, user_id: @tcpdump_log.user_id }
    assert_redirected_to tcpdump_log_path(assigns(:tcpdump_log))
  end

  test "should destroy tcpdump_log" do
    assert_difference('TcpdumpLog.count', -1) do
      delete :destroy, id: @tcpdump_log
    end

    assert_redirected_to tcpdump_logs_path
  end
end

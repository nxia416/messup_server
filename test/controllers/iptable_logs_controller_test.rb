require 'test_helper'

class IptableLogsControllerTest < ActionController::TestCase
  setup do
    @iptable_log = iptable_logs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iptable_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iptable_log" do
    assert_difference('IptableLog.count') do
      post :create, iptable_log: { user_data: @iptable_log.user_data, user_id: @iptable_log.user_id }
    end

    assert_redirected_to iptable_log_path(assigns(:iptable_log))
  end

  test "should show iptable_log" do
    get :show, id: @iptable_log
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @iptable_log
    assert_response :success
  end

  test "should update iptable_log" do
    patch :update, id: @iptable_log, iptable_log: { user_data: @iptable_log.user_data, user_id: @iptable_log.user_id }
    assert_redirected_to iptable_log_path(assigns(:iptable_log))
  end

  test "should destroy iptable_log" do
    assert_difference('IptableLog.count', -1) do
      delete :destroy, id: @iptable_log
    end

    assert_redirected_to iptable_logs_path
  end
end

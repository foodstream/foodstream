require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

  test "should get logout" do
    get :logout
    assert_response :success
  end

  test "should get reset_password" do
    get :reset_password
    assert_response :success
  end

end

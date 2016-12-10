require 'test_helper'

class LoginControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get login_index_url
    assert_response :success
  end

  test "should get authenticate" do
    get login_authenticate_url
    assert_response :success
  end

  test "should get logout" do
    get login_logout_url
    assert_response :success
  end

end

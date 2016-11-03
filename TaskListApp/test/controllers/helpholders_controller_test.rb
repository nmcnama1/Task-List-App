require 'test_helper'

class HelpholdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @helpholder = helpholders(:one)
  end

  test "should get index" do
    get helpholders_url
    assert_response :success
  end

  test "should get new" do
    get new_helpholder_url
    assert_response :success
  end

  test "should create helpholder" do
    assert_difference('Helpholder.count') do
      post helpholders_url, params: { helpholder: { authoer: @helpholder.authoer, name: @helpholder.name } }
    end

    assert_redirected_to helpholder_url(Helpholder.last)
  end

  test "should show helpholder" do
    get helpholder_url(@helpholder)
    assert_response :success
  end

  test "should get edit" do
    get edit_helpholder_url(@helpholder)
    assert_response :success
  end

  test "should update helpholder" do
    patch helpholder_url(@helpholder), params: { helpholder: { authoer: @helpholder.authoer, name: @helpholder.name } }
    assert_redirected_to helpholder_url(@helpholder)
  end

  test "should destroy helpholder" do
    assert_difference('Helpholder.count', -1) do
      delete helpholder_url(@helpholder)
    end

    assert_redirected_to helpholders_url
  end
end

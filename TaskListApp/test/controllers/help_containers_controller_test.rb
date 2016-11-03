require 'test_helper'

class HelpContainersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @help_container = help_containers(:one)
  end

  test "should get index" do
    get help_containers_url
    assert_response :success
  end

  test "should get new" do
    get new_help_container_url
    assert_response :success
  end

  test "should create help_container" do
    assert_difference('HelpContainer.count') do
      post help_containers_url, params: { help_container: { authoer: @help_container.authoer, name: @help_container.name } }
    end

    assert_redirected_to help_container_url(HelpContainer.last)
  end

  test "should show help_container" do
    get help_container_url(@help_container)
    assert_response :success
  end

  test "should get edit" do
    get edit_help_container_url(@help_container)
    assert_response :success
  end

  test "should update help_container" do
    patch help_container_url(@help_container), params: { help_container: { authoer: @help_container.authoer, name: @help_container.name } }
    assert_redirected_to help_container_url(@help_container)
  end

  test "should destroy help_container" do
    assert_difference('HelpContainer.count', -1) do
      delete help_container_url(@help_container)
    end

    assert_redirected_to help_containers_url
  end
end

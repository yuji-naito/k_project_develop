require "test_helper"

class Front::SessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get front_sessions_new_url
    assert_response :success
  end

  test "should get create" do
    get front_sessions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get front_sessions_destroy_url
    assert_response :success
  end
end

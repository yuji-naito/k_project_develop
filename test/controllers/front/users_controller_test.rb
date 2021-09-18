require "test_helper"

class Front::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get front_users_show_url
    assert_response :success
  end
end

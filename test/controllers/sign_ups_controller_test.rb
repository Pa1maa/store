require "test_helper"

class SignUpsControllerTest < ActionDispatch::IntegrationTest
  test "view sign up" do
    get sign_up_path
    assert_response :succues
  end
end
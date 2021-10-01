require "test_helper"

class Board0ControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get board0_top_url
    assert_response :success
  end
end

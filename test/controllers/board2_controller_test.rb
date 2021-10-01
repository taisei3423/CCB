require "test_helper"

class Board2ControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get board2_top_url
    assert_response :success
  end
end

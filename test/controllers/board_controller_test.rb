require "test_helper"

class BoardControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get board_top_url
    assert_response :success
  end
end

require "test_helper"

class Board3ControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get board3_top_url
    assert_response :success
  end
end

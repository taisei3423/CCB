require "test_helper"

class Document7ControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get document7_top_url
    assert_response :success
  end
end

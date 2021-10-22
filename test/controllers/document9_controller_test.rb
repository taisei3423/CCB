require "test_helper"

class Document9ControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get document9_top_url
    assert_response :success
  end
end

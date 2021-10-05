require "test_helper"

class Document3ControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get document3_top_url
    assert_response :success
  end
end

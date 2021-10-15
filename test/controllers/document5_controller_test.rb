require "test_helper"

class Document5ControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get document5_top_url
    assert_response :success
  end
end

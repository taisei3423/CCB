require "test_helper"

class Document4ControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get document4_top_url
    assert_response :success
  end
end

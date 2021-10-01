require "test_helper"

class Document2ControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get document2_top_url
    assert_response :success
  end
end

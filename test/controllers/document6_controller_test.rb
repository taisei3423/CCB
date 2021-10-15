require "test_helper"

class Document6ControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get document6_top_url
    assert_response :success
  end
end

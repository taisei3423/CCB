require "test_helper"

class Document8ControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get document8_top_url
    assert_response :success
  end
end

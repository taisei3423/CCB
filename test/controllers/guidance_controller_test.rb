require "test_helper"

class GuidanceControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get guidance_top_url
    assert_response :success
  end
end

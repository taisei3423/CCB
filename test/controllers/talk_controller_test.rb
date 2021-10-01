require "test_helper"

class TalkControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get talk_top_url
    assert_response :success
  end
end

require "test_helper"

class DocumentControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get document_top_url
    assert_response :success
  end
end

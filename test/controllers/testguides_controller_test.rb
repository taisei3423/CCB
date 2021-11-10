require "test_helper"

class TestguidesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testguide = testguides(:one)
  end

  test "should get index" do
    get testguides_url
    assert_response :success
  end

  test "should get new" do
    get new_testguide_url
    assert_response :success
  end

  test "should create testguide" do
    assert_difference('Testguide.count') do
      post testguides_url, params: { testguide: { filename: @testguide.filename, year: @testguide.year } }
    end

    assert_redirected_to testguide_url(Testguide.last)
  end

  test "should show testguide" do
    get testguide_url(@testguide)
    assert_response :success
  end

  test "should get edit" do
    get edit_testguide_url(@testguide)
    assert_response :success
  end

  test "should update testguide" do
    patch testguide_url(@testguide), params: { testguide: { filename: @testguide.filename, year: @testguide.year } }
    assert_redirected_to testguide_url(@testguide)
  end

  test "should destroy testguide" do
    assert_difference('Testguide.count', -1) do
      delete testguide_url(@testguide)
    end

    assert_redirected_to testguides_url
  end
end

require "application_system_test_case"

class TestguidesTest < ApplicationSystemTestCase
  setup do
    @testguide = testguides(:one)
  end

  test "visiting the index" do
    visit testguides_url
    assert_selector "h1", text: "Testguides"
  end

  test "creating a Testguide" do
    visit testguides_url
    click_on "New Testguide"

    fill_in "Filename", with: @testguide.filename
    fill_in "Year", with: @testguide.year
    click_on "Create Testguide"

    assert_text "Testguide was successfully created"
    click_on "Back"
  end

  test "updating a Testguide" do
    visit testguides_url
    click_on "Edit", match: :first

    fill_in "Filename", with: @testguide.filename
    fill_in "Year", with: @testguide.year
    click_on "Update Testguide"

    assert_text "Testguide was successfully updated"
    click_on "Back"
  end

  test "destroying a Testguide" do
    visit testguides_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Testguide was successfully destroyed"
  end
end

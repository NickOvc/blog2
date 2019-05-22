require "application_system_test_case"

class PoztsTest < ApplicationSystemTestCase
  setup do
    @pozt = pozts(:one)
  end

  test "visiting the index" do
    visit pozts_url
    assert_selector "h1", text: "Pozts"
  end

  test "creating a Pozt" do
    visit pozts_url
    click_on "New Pozt"

    fill_in "Body", with: @pozt.body
    fill_in "Title", with: @pozt.title
    fill_in "User", with: @pozt.user_id
    click_on "Create Pozt"

    assert_text "Pozt was successfully created"
    click_on "Back"
  end

  test "updating a Pozt" do
    visit pozts_url
    click_on "Edit", match: :first

    fill_in "Body", with: @pozt.body
    fill_in "Title", with: @pozt.title
    fill_in "User", with: @pozt.user_id
    click_on "Update Pozt"

    assert_text "Pozt was successfully updated"
    click_on "Back"
  end

  test "destroying a Pozt" do
    visit pozts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pozt was successfully destroyed"
  end
end

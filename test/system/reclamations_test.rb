require "application_system_test_case"

class ReclamationsTest < ApplicationSystemTestCase
  setup do
    @reclamation = reclamations(:one)
  end

  test "visiting the index" do
    visit reclamations_url
    assert_selector "h1", text: "Reclamations"
  end

  test "should create reclamation" do
    visit reclamations_url
    click_on "New reclamation"

    fill_in "Article", with: @reclamation.article_id
    fill_in "Description", with: @reclamation.description
    fill_in "User", with: @reclamation.user_id
    click_on "Create Reclamation"

    assert_text "Reclamation was successfully created"
    click_on "Back"
  end

  test "should update Reclamation" do
    visit reclamation_url(@reclamation)
    click_on "Edit this reclamation", match: :first

    fill_in "Article", with: @reclamation.article_id
    fill_in "Description", with: @reclamation.description
    fill_in "User", with: @reclamation.user_id
    click_on "Update Reclamation"

    assert_text "Reclamation was successfully updated"
    click_on "Back"
  end

  test "should destroy Reclamation" do
    visit reclamation_url(@reclamation)
    click_on "Destroy this reclamation", match: :first

    assert_text "Reclamation was successfully destroyed"
  end
end

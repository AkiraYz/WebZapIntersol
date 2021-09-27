require "application_system_test_case"

class CelldbsTest < ApplicationSystemTestCase
  setup do
    @celldb = celldbs(:one)
  end

  test "visiting the index" do
    visit celldbs_url
    assert_selector "h1", text: "Celldbs"
  end

  test "creating a Celldb" do
    visit celldbs_url
    click_on "New Celldb"

    fill_in "Cellnumber", with: @celldb.cellnumber
    click_on "Create Celldb"

    assert_text "Celldb was successfully created"
    click_on "Back"
  end

  test "updating a Celldb" do
    visit celldbs_url
    click_on "Edit", match: :first

    fill_in "Cellnumber", with: @celldb.cellnumber
    click_on "Update Celldb"

    assert_text "Celldb was successfully updated"
    click_on "Back"
  end

  test "destroying a Celldb" do
    visit celldbs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Celldb was successfully destroyed"
  end
end

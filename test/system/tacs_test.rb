require "application_system_test_case"

class TacsTest < ApplicationSystemTestCase
  setup do
    @tac = tacs(:one)
  end

  test "visiting the index" do
    visit tacs_url
    assert_selector "h1", text: "Tacs"
  end

  test "creating a Tac" do
    visit tacs_url
    click_on "New Tac"

    fill_in "Numero", with: @tac.numero
    click_on "Create Tac"

    assert_text "Tac was successfully created"
    click_on "Back"
  end

  test "updating a Tac" do
    visit tacs_url
    click_on "Edit", match: :first

    fill_in "Numero", with: @tac.numero
    click_on "Update Tac"

    assert_text "Tac was successfully updated"
    click_on "Back"
  end

  test "destroying a Tac" do
    visit tacs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tac was successfully destroyed"
  end
end

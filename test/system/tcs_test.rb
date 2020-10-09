require "application_system_test_case"

class TcsTest < ApplicationSystemTestCase
  setup do
    @tc = tcs(:one)
  end

  test "visiting the index" do
    visit tcs_url
    assert_selector "h1", text: "Tcs"
  end

  test "creating a Tc" do
    visit tcs_url
    click_on "New Tc"

    fill_in "Numero", with: @tc.numero
    click_on "Create Tc"

    assert_text "Tc was successfully created"
    click_on "Back"
  end

  test "updating a Tc" do
    visit tcs_url
    click_on "Edit", match: :first

    fill_in "Numero", with: @tc.numero
    click_on "Update Tc"

    assert_text "Tc was successfully updated"
    click_on "Back"
  end

  test "destroying a Tc" do
    visit tcs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tc was successfully destroyed"
  end
end

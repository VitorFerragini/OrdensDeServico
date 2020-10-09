require "application_system_test_case"

class PasTest < ApplicationSystemTestCase
  setup do
    @pa = pas(:one)
  end

  test "visiting the index" do
    visit pas_url
    assert_selector "h1", text: "Pas"
  end

  test "creating a Pa" do
    visit pas_url
    click_on "New Pa"

    fill_in "Numero", with: @pa.numero
    click_on "Create Pa"

    assert_text "Pa was successfully created"
    click_on "Back"
  end

  test "updating a Pa" do
    visit pas_url
    click_on "Edit", match: :first

    fill_in "Numero", with: @pa.numero
    click_on "Update Pa"

    assert_text "Pa was successfully updated"
    click_on "Back"
  end

  test "destroying a Pa" do
    visit pas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pa was successfully destroyed"
  end
end

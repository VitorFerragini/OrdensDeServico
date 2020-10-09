require "application_system_test_case"

class SistemasTest < ApplicationSystemTestCase
  setup do
    @sistema = sistemas(:one)
  end

  test "visiting the index" do
    visit sistemas_url
    assert_selector "h1", text: "Sistemas"
  end

  test "creating a Sistema" do
    visit sistemas_url
    click_on "New Sistema"

    fill_in "Nome", with: @sistema.nome
    click_on "Create Sistema"

    assert_text "Sistema was successfully created"
    click_on "Back"
  end

  test "updating a Sistema" do
    visit sistemas_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @sistema.nome
    click_on "Update Sistema"

    assert_text "Sistema was successfully updated"
    click_on "Back"
  end

  test "destroying a Sistema" do
    visit sistemas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sistema was successfully destroyed"
  end
end

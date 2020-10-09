require "application_system_test_case"

class TiposTest < ApplicationSystemTestCase
  setup do
    @tipo = tipos(:one)
  end

  test "visiting the index" do
    visit tipos_url
    assert_selector "h1", text: "Tipos"
  end

  test "creating a Tipo" do
    visit tipos_url
    click_on "New Tipo"

    fill_in "Nome", with: @tipo.nome
    click_on "Create Tipo"

    assert_text "Tipo was successfully created"
    click_on "Back"
  end

  test "updating a Tipo" do
    visit tipos_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @tipo.nome
    click_on "Update Tipo"

    assert_text "Tipo was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipo" do
    visit tipos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipo was successfully destroyed"
  end
end

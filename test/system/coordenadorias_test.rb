require "application_system_test_case"

class CoordenadoriasTest < ApplicationSystemTestCase
  setup do
    @coordenadoria = coordenadorias(:one)
  end

  test "visiting the index" do
    visit coordenadorias_url
    assert_selector "h1", text: "Coordenadorias"
  end

  test "creating a Coordenadoria" do
    visit coordenadorias_url
    click_on "New Coordenadoria"

    fill_in "Descricao", with: @coordenadoria.descricao
    click_on "Create Coordenadoria"

    assert_text "Coordenadoria was successfully created"
    click_on "Back"
  end

  test "updating a Coordenadoria" do
    visit coordenadorias_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @coordenadoria.descricao
    click_on "Update Coordenadoria"

    assert_text "Coordenadoria was successfully updated"
    click_on "Back"
  end

  test "destroying a Coordenadoria" do
    visit coordenadorias_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coordenadoria was successfully destroyed"
  end
end

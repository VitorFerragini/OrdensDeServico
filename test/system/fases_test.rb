require "application_system_test_case"

class FasesTest < ApplicationSystemTestCase
  setup do
    @fase = fases(:one)
  end

  test "visiting the index" do
    visit fases_url
    assert_selector "h1", text: "Fases"
  end

  test "creating a Fase" do
    visit fases_url
    click_on "New Fase"

    fill_in "Nome", with: @fase.nome
    click_on "Create Fase"

    assert_text "Fase was successfully created"
    click_on "Back"
  end

  test "updating a Fase" do
    visit fases_url
    click_on "Edit", match: :first

    fill_in "Nome", with: @fase.nome
    click_on "Update Fase"

    assert_text "Fase was successfully updated"
    click_on "Back"
  end

  test "destroying a Fase" do
    visit fases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fase was successfully destroyed"
  end
end

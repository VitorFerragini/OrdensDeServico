require "application_system_test_case"

class OrdemDeServicosTest < ApplicationSystemTestCase
  setup do
    @ordem_de_servico = ordens_de_servico(:one)
  end

  test "visiting the index" do
    visit ordens_de_servico_url
    assert_selector "h1", text: "Ordem De Servicos"
  end

  test "creating a Ordem de servico" do
    visit ordens_de_servico_url
    click_on "New Ordem De Servico"

    fill_in "Area", with: @ordem_de_servico.area_id
    fill_in "Coordenadoria", with: @ordem_de_servico.coordenadoria_id
    fill_in "Data aceite", with: @ordem_de_servico.data_aceite
    fill_in "Data emissao", with: @ordem_de_servico.data_emissao
    fill_in "Data entrega", with: @ordem_de_servico.data_entrega
    fill_in "Data necessidade", with: @ordem_de_servico.data_necessidade
    check "Emergencial" if @ordem_de_servico.emergencial
    fill_in "Esforco estimado", with: @ordem_de_servico.esforco_estimado
    fill_in "Esforco realizado", with: @ordem_de_servico.esforco_realizado
    fill_in "Fase", with: @ordem_de_servico.fase_id
    fill_in "Fatura", with: @ordem_de_servico.fatura
    fill_in "Numero", with: @ordem_de_servico.numero
    fill_in "Obs", with: @ordem_de_servico.obs
    fill_in "Pa", with: @ordem_de_servico.pa_id
    fill_in "Responsavel", with: @ordem_de_servico.responsavel
    fill_in "Sistema", with: @ordem_de_servico.sistema_id
    fill_in "Solicitacao", with: @ordem_de_servico.solicitacao
    fill_in "Tac", with: @ordem_de_servico.tac_id
    fill_in "Tc", with: @ordem_de_servico.tc_id
    fill_in "Tipo", with: @ordem_de_servico.tipo_id
    click_on "Create Ordem de servico"

    assert_text "Ordem de servico was successfully created"
    click_on "Back"
  end

  test "updating a Ordem de servico" do
    visit ordens_de_servico_url
    click_on "Edit", match: :first

    fill_in "Area", with: @ordem_de_servico.area_id
    fill_in "Coordenadoria", with: @ordem_de_servico.coordenadoria_id
    fill_in "Data aceite", with: @ordem_de_servico.data_aceite
    fill_in "Data emissao", with: @ordem_de_servico.data_emissao
    fill_in "Data entrega", with: @ordem_de_servico.data_entrega
    fill_in "Data necessidade", with: @ordem_de_servico.data_necessidade
    check "Emergencial" if @ordem_de_servico.emergencial
    fill_in "Esforco estimado", with: @ordem_de_servico.esforco_estimado
    fill_in "Esforco realizado", with: @ordem_de_servico.esforco_realizado
    fill_in "Fase", with: @ordem_de_servico.fase_id
    fill_in "Fatura", with: @ordem_de_servico.fatura
    fill_in "Numero", with: @ordem_de_servico.numero
    fill_in "Obs", with: @ordem_de_servico.obs
    fill_in "Pa", with: @ordem_de_servico.pa_id
    fill_in "Responsavel", with: @ordem_de_servico.responsavel
    fill_in "Sistema", with: @ordem_de_servico.sistema_id
    fill_in "Solicitacao", with: @ordem_de_servico.solicitacao
    fill_in "Tac", with: @ordem_de_servico.tac_id
    fill_in "Tc", with: @ordem_de_servico.tc_id
    fill_in "Tipo", with: @ordem_de_servico.tipo_id
    click_on "Update Ordem de servico"

    assert_text "Ordem de servico was successfully updated"
    click_on "Back"
  end

  test "destroying a Ordem de servico" do
    visit ordens_de_servico_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ordem de servico was successfully destroyed"
  end
end

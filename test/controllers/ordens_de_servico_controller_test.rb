require 'test_helper'

class OrdensDeServicoControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordem_de_servico = ordens_de_servico(:one)
  end

  test "should get index" do
    get ordens_de_servico_url
    assert_response :success
  end

  test "should get new" do
    get new_ordem_de_servico_url
    assert_response :success
  end

  test "should create ordem_de_servico" do
    assert_difference('OrdemDeServico.count') do
      post ordens_de_servico_url, params: { ordem_de_servico: { area_id: @ordem_de_servico.area_id, coordenadoria_id: @ordem_de_servico.coordenadoria_id, data_aceite: @ordem_de_servico.data_aceite, data_emissao: @ordem_de_servico.data_emissao, data_entrega: @ordem_de_servico.data_entrega, data_necessidade: @ordem_de_servico.data_necessidade, emergencial: @ordem_de_servico.emergencial, esforco_estimado: @ordem_de_servico.esforco_estimado, esforco_realizado: @ordem_de_servico.esforco_realizado, fase_id: @ordem_de_servico.fase_id, fatura: @ordem_de_servico.fatura, numero: @ordem_de_servico.numero, obs: @ordem_de_servico.obs, pa_id: @ordem_de_servico.pa_id, responsavel: @ordem_de_servico.responsavel, sistema_id: @ordem_de_servico.sistema_id, solicitacao: @ordem_de_servico.solicitacao, tac_id: @ordem_de_servico.tac_id, tc_id: @ordem_de_servico.tc_id, tipo_id: @ordem_de_servico.tipo_id } }
    end

    assert_redirected_to ordem_de_servico_url(OrdemDeServico.last)
  end

  test "should show ordem_de_servico" do
    get ordem_de_servico_url(@ordem_de_servico)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordem_de_servico_url(@ordem_de_servico)
    assert_response :success
  end

  test "should update ordem_de_servico" do
    patch ordem_de_servico_url(@ordem_de_servico), params: { ordem_de_servico: { area_id: @ordem_de_servico.area_id, coordenadoria_id: @ordem_de_servico.coordenadoria_id, data_aceite: @ordem_de_servico.data_aceite, data_emissao: @ordem_de_servico.data_emissao, data_entrega: @ordem_de_servico.data_entrega, data_necessidade: @ordem_de_servico.data_necessidade, emergencial: @ordem_de_servico.emergencial, esforco_estimado: @ordem_de_servico.esforco_estimado, esforco_realizado: @ordem_de_servico.esforco_realizado, fase_id: @ordem_de_servico.fase_id, fatura: @ordem_de_servico.fatura, numero: @ordem_de_servico.numero, obs: @ordem_de_servico.obs, pa_id: @ordem_de_servico.pa_id, responsavel: @ordem_de_servico.responsavel, sistema_id: @ordem_de_servico.sistema_id, solicitacao: @ordem_de_servico.solicitacao, tac_id: @ordem_de_servico.tac_id, tc_id: @ordem_de_servico.tc_id, tipo_id: @ordem_de_servico.tipo_id } }
    assert_redirected_to ordem_de_servico_url(@ordem_de_servico)
  end

  test "should destroy ordem_de_servico" do
    assert_difference('OrdemDeServico.count', -1) do
      delete ordem_de_servico_url(@ordem_de_servico)
    end

    assert_redirected_to ordens_de_servico_url
  end
end

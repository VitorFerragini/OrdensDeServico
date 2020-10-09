require 'test_helper'

class FasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fase = fases(:one)
  end

  test "should get index" do
    get fases_url
    assert_response :success
  end

  test "should get new" do
    get new_fase_url
    assert_response :success
  end

  test "should create fase" do
    assert_difference('Fase.count') do
      post fases_url, params: { fase: { nome: @fase.nome } }
    end

    assert_redirected_to fase_url(Fase.last)
  end

  test "should show fase" do
    get fase_url(@fase)
    assert_response :success
  end

  test "should get edit" do
    get edit_fase_url(@fase)
    assert_response :success
  end

  test "should update fase" do
    patch fase_url(@fase), params: { fase: { nome: @fase.nome } }
    assert_redirected_to fase_url(@fase)
  end

  test "should destroy fase" do
    assert_difference('Fase.count', -1) do
      delete fase_url(@fase)
    end

    assert_redirected_to fases_url
  end
end

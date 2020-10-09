require 'test_helper'

class CoordenadoriasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coordenadoria = coordenadorias(:one)
  end

  test "should get index" do
    get coordenadorias_url
    assert_response :success
  end

  test "should get new" do
    get new_coordenadoria_url
    assert_response :success
  end

  test "should create coordenadoria" do
    assert_difference('Coordenadoria.count') do
      post coordenadorias_url, params: { coordenadoria: { descricao: @coordenadoria.descricao } }
    end

    assert_redirected_to coordenadoria_url(Coordenadoria.last)
  end

  test "should show coordenadoria" do
    get coordenadoria_url(@coordenadoria)
    assert_response :success
  end

  test "should get edit" do
    get edit_coordenadoria_url(@coordenadoria)
    assert_response :success
  end

  test "should update coordenadoria" do
    patch coordenadoria_url(@coordenadoria), params: { coordenadoria: { descricao: @coordenadoria.descricao } }
    assert_redirected_to coordenadoria_url(@coordenadoria)
  end

  test "should destroy coordenadoria" do
    assert_difference('Coordenadoria.count', -1) do
      delete coordenadoria_url(@coordenadoria)
    end

    assert_redirected_to coordenadorias_url
  end
end

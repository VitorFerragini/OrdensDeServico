require 'test_helper'

class TacsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tac = tacs(:one)
  end

  test "should get index" do
    get tacs_url
    assert_response :success
  end

  test "should get new" do
    get new_tac_url
    assert_response :success
  end

  test "should create tac" do
    assert_difference('Tac.count') do
      post tacs_url, params: { tac: { numero: @tac.numero } }
    end

    assert_redirected_to tac_url(Tac.last)
  end

  test "should show tac" do
    get tac_url(@tac)
    assert_response :success
  end

  test "should get edit" do
    get edit_tac_url(@tac)
    assert_response :success
  end

  test "should update tac" do
    patch tac_url(@tac), params: { tac: { numero: @tac.numero } }
    assert_redirected_to tac_url(@tac)
  end

  test "should destroy tac" do
    assert_difference('Tac.count', -1) do
      delete tac_url(@tac)
    end

    assert_redirected_to tacs_url
  end
end

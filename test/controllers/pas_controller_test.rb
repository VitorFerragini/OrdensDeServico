require 'test_helper'

class PasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pa = pas(:one)
  end

  test "should get index" do
    get pas_url
    assert_response :success
  end

  test "should get new" do
    get new_pa_url
    assert_response :success
  end

  test "should create pa" do
    assert_difference('Pa.count') do
      post pas_url, params: { pa: { numero: @pa.numero } }
    end

    assert_redirected_to pa_url(Pa.last)
  end

  test "should show pa" do
    get pa_url(@pa)
    assert_response :success
  end

  test "should get edit" do
    get edit_pa_url(@pa)
    assert_response :success
  end

  test "should update pa" do
    patch pa_url(@pa), params: { pa: { numero: @pa.numero } }
    assert_redirected_to pa_url(@pa)
  end

  test "should destroy pa" do
    assert_difference('Pa.count', -1) do
      delete pa_url(@pa)
    end

    assert_redirected_to pas_url
  end
end

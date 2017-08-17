require 'test_helper'

class InvtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invt = invts(:one)
  end

  test "should get index" do
    get invts_url
    assert_response :success
  end

  test "should get new" do
    get new_invt_url
    assert_response :success
  end

  test "should create invt" do
    assert_difference('Invt.count') do
      post invts_url, params: { invt: { descripcion: @invt.descripcion, existencia: @invt.existencia, fecha: @invt.fecha, precio: @invt.precio, producto: @invt.producto } }
    end

    assert_redirected_to invt_url(Invt.last)
  end

  test "should show invt" do
    get invt_url(@invt)
    assert_response :success
  end

  test "should get edit" do
    get edit_invt_url(@invt)
    assert_response :success
  end

  test "should update invt" do
    patch invt_url(@invt), params: { invt: { descripcion: @invt.descripcion, existencia: @invt.existencia, fecha: @invt.fecha, precio: @invt.precio, producto: @invt.producto } }
    assert_redirected_to invt_url(@invt)
  end

  test "should destroy invt" do
    assert_difference('Invt.count', -1) do
      delete invt_url(@invt)
    end

    assert_redirected_to invts_url
  end
end

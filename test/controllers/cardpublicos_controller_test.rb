require 'test_helper'

class CardpublicosControllerTest < ActionController::TestCase
  setup do
    @cardpublico = cardpublicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cardpublicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cardpublico" do
    assert_difference('Cardpublico.count') do
      post :create, cardpublico: { cantidad: @cardpublico.cantidad, pedidoID: @cardpublico.pedidoID, peso: @cardpublico.peso, precio: @cardpublico.precio, producto: @cardpublico.producto }
    end

    assert_redirected_to cardpublico_path(assigns(:cardpublico))
  end

  test "should show cardpublico" do
    get :show, id: @cardpublico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cardpublico
    assert_response :success
  end

  test "should update cardpublico" do
    patch :update, id: @cardpublico, cardpublico: { cantidad: @cardpublico.cantidad, pedidoID: @cardpublico.pedidoID, peso: @cardpublico.peso, precio: @cardpublico.precio, producto: @cardpublico.producto }
    assert_redirected_to cardpublico_path(assigns(:cardpublico))
  end

  test "should destroy cardpublico" do
    assert_difference('Cardpublico.count', -1) do
      delete :destroy, id: @cardpublico
    end

    assert_redirected_to cardpublicos_path
  end
end

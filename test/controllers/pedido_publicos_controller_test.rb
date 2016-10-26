require 'test_helper'

class PedidoPublicosControllerTest < ActionController::TestCase
  setup do
    @pedido_publico = pedido_publicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pedido_publicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pedido_publico" do
    assert_difference('PedidoPublico.count') do
      post :create, pedido_publico: { correo: @pedido_publico.correo, fecha: @pedido_publico.fecha, nombre: @pedido_publico.nombre, pedido: @pedido_publico.pedido, telefono: @pedido_publico.telefono }
    end

    assert_redirected_to pedido_publico_path(assigns(:pedido_publico))
  end

  test "should show pedido_publico" do
    get :show, id: @pedido_publico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pedido_publico
    assert_response :success
  end

  test "should update pedido_publico" do
    patch :update, id: @pedido_publico, pedido_publico: { correo: @pedido_publico.correo, fecha: @pedido_publico.fecha, nombre: @pedido_publico.nombre, pedido: @pedido_publico.pedido, telefono: @pedido_publico.telefono }
    assert_redirected_to pedido_publico_path(assigns(:pedido_publico))
  end

  test "should destroy pedido_publico" do
    assert_difference('PedidoPublico.count', -1) do
      delete :destroy, id: @pedido_publico
    end

    assert_redirected_to pedido_publicos_path
  end
end

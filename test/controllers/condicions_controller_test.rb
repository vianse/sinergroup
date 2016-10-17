require 'test_helper'

class CondicionsControllerTest < ActionController::TestCase
  setup do
    @condicion = condicions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:condicions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create condicion" do
    assert_difference('Condicion.count') do
      post :create, condicion: { leido: @condicion.leido, userID: @condicion.userID }
    end

    assert_redirected_to condicion_path(assigns(:condicion))
  end

  test "should show condicion" do
    get :show, id: @condicion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @condicion
    assert_response :success
  end

  test "should update condicion" do
    patch :update, id: @condicion, condicion: { leido: @condicion.leido, userID: @condicion.userID }
    assert_redirected_to condicion_path(assigns(:condicion))
  end

  test "should destroy condicion" do
    assert_difference('Condicion.count', -1) do
      delete :destroy, id: @condicion
    end

    assert_redirected_to condicions_path
  end
end

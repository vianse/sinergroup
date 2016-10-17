require 'test_helper'

class RecomendacionsControllerTest < ActionController::TestCase
  setup do
    @recomendacion = recomendacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recomendacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recomendacion" do
    assert_difference('Recomendacion.count') do
      post :create, recomendacion: { leido: @recomendacion.leido, userID: @recomendacion.userID }
    end

    assert_redirected_to recomendacion_path(assigns(:recomendacion))
  end

  test "should show recomendacion" do
    get :show, id: @recomendacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recomendacion
    assert_response :success
  end

  test "should update recomendacion" do
    patch :update, id: @recomendacion, recomendacion: { leido: @recomendacion.leido, userID: @recomendacion.userID }
    assert_redirected_to recomendacion_path(assigns(:recomendacion))
  end

  test "should destroy recomendacion" do
    assert_difference('Recomendacion.count', -1) do
      delete :destroy, id: @recomendacion
    end

    assert_redirected_to recomendacions_path
  end
end

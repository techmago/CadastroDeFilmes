require 'test_helper'

class FilmesControllerTest < ActionController::TestCase
  setup do
    @filme = filmes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:filmes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create filme" do
    assert_difference('Filme.count') do
      post :create, filme: { anoA: @filme.anoA, anoF: @filme.anoF, cor: @filme.cor, cotacao: @filme.cotacao, dataA: @filme.dataA, genero_id: @filme.genero_id, midia_id: @filme.midia_id, pais_id: @filme.pais_id, titulo: @filme.titulo, titulorg: @filme.titulorg }
    end

    assert_redirected_to filme_path(assigns(:filme))
  end

  test "should show filme" do
    get :show, id: @filme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @filme
    assert_response :success
  end

  test "should update filme" do
    put :update, id: @filme, filme: { anoA: @filme.anoA, anoF: @filme.anoF, cor: @filme.cor, cotacao: @filme.cotacao, dataA: @filme.dataA, genero_id: @filme.genero_id, midia_id: @filme.midia_id, pais_id: @filme.pais_id, titulo: @filme.titulo, titulorg: @filme.titulorg }
    assert_redirected_to filme_path(assigns(:filme))
  end

  test "should destroy filme" do
    assert_difference('Filme.count', -1) do
      delete :destroy, id: @filme
    end

    assert_redirected_to filmes_path
  end
end

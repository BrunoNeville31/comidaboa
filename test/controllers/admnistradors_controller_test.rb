require 'test_helper'

class AdmnistradorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admnistrador = admnistradors(:one)
  end

  test "should get index" do
    get admnistradors_url
    assert_response :success
  end

  test "should get new" do
    get new_admnistrador_url
    assert_response :success
  end

  test "should create admnistrador" do
    assert_difference('Admnistrador.count') do
      post admnistradors_url, params: { admnistrador: { email: @admnistrador.email, nome: @admnistrador.nome, senha: @admnistrador.senha } }
    end

    assert_redirected_to admnistrador_url(Admnistrador.last)
  end

  test "should show admnistrador" do
    get admnistrador_url(@admnistrador)
    assert_response :success
  end

  test "should get edit" do
    get edit_admnistrador_url(@admnistrador)
    assert_response :success
  end

  test "should update admnistrador" do
    patch admnistrador_url(@admnistrador), params: { admnistrador: { email: @admnistrador.email, nome: @admnistrador.nome, senha: @admnistrador.senha } }
    assert_redirected_to admnistrador_url(@admnistrador)
  end

  test "should destroy admnistrador" do
    assert_difference('Admnistrador.count', -1) do
      delete admnistrador_url(@admnistrador)
    end

    assert_redirected_to admnistradors_url
  end
end

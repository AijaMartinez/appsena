require "test_helper"

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  test "should get infoUsuario" do
    get usuarios_infoUsuario_url
    assert_response :success
  end
end

class UsuariosController < ApplicationController

  def inicio
  end

  def infoUsuario
    @usuario1 = Usuario.find(1)
  end
  def infoUsuario2
    @usuario2 = Usuario.find(2)
  end

end

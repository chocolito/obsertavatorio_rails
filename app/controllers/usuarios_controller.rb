class UsuariosController < ApplicationController
	respond_to :html, :xml, :json
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]

  def index
    @usuarios = Usuario.all
    respond_with(@usuarios)
  end

  def show
    respond_with(@usuario)
  end

  def new
    @usuario = Usuario.new
    respond_with(@usuario)
  end

  def edit
  end

  def create
    @usuario = Usuario.new(usuario_params)
    @usuario.save
    respond_with(@usuario)
  end

  def update
    @usuario.update(usuario_params)
    respond_with(@usuario)
  end

  def destroy
    @usuario.destroy
    respond_with(@usuario)
  end

  private
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    def usuario_params
      params.require(:usuario).permit(:cuenta, :nombre, :id_t, :id_local)
    end
end

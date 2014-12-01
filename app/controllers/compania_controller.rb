class CompaniaController < ApplicationController
  before_action :set_companium, only: [:show, :edit, :update, :destroy]

  def index
    @compania = Companium.all
    respond_with(@compania)
  end

  def show
    respond_with(@companium)
  end

  def new
    @companium = Companium.new
    respond_with(@companium)
  end

  def edit
  end

  def create
    @companium = Companium.new(companium_params)
    @companium.save
    respond_with(@companium)
  end

  def update
    @companium.update(companium_params)
    respond_with(@companium)
  end

  def destroy
    @companium.destroy
    respond_with(@companium)
  end

  private
    def set_companium
      @companium = Companium.find(params[:id])
    end

    def companium_params
      params.require(:companium).permit(:nombre, :cuenta, :twit)
    end
end

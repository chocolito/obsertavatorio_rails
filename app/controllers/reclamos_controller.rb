class ReclamosController < ApplicationController
  before_action :set_reclamo, only: [:show, :edit, :update, :destroy]

  def index
    @reclamos = Reclamo.all
    respond_with(@reclamos)
  end

  def show
    respond_with(@reclamo)
  end

  def new
    @reclamo = Reclamo.new
    respond_with(@reclamo)
  end

  def edit
  end

  def create
    @reclamo = Reclamo.new(reclamo_params)
    @reclamo.save
    respond_with(@reclamo)
  end

  def update
    @reclamo.update(reclamo_params)
    respond_with(@reclamo)
  end

  def destroy
    @reclamo.destroy
    respond_with(@reclamo)
  end

  private
    def set_reclamo
      @reclamo = Reclamo.find(params[:id])
    end

    def reclamo_params
      params.require(:reclamo).permit(:tweet, :compania, :tipo, :servicio)
    end
end

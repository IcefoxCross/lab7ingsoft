class MonstruosController < ApplicationController

  before_action :get_monstruo, only:[:show, :edit, :update]

  def get_monstruo
  	@monstruo = Monstruo.find(params[:id])
  end
  
  def index
  	@monstruos = Monstruo.all
  end

  def new
  	@monstruo = Monstruo.new
  end

  def show
  end

  def edit
  end

  def update
    if @monstruo.update_attributes(params.require(:monstruo).permit(:nombre, :edad))
      redirect_to monstruos_path, success: "Monstruo actualizado!!!"
    else
      flash[:notice] = "Hubo un error, intenta de nuevo."
    end
  end

  def create
  	@monstruo = Monstruo.new(params.require(:monstruo).permit(:nombre, :edad))
    if @monstruo.save
      redirect_to monstruos_path, success: "Monstruo creado!!!"
    else
      redirect_to monstruos_path, alert: "El monstruo ya existe."
    end
  end
end

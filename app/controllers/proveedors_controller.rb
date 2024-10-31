class ProveedorsController < ApplicationController
  before_action :set_proveedor, only: %i[show edit update destroy]

  def index
    @proveedors = Proveedor.all
  end

  def show
  end

  def new
    @proveedor = Proveedor.new
  end

  def edit
  end

  def create
    @proveedor = Proveedor.new(proveedor_params)

    if @proveedor.save
      redirect_to @proveedor, notice: 'Proveedor fue creado exitosamente.'
    else
      render :new
    end
  end

  def update
    if @proveedor.update(proveedor_params)
      redirect_to @proveedor, notice: 'Proveedor fue actualizado exitosamente.'
    else
      render :edit
    end
  end

  def destroy
    @proveedor.destroy
    redirect_to proveedors_path, notice: 'Proveedor fue eliminado exitosamente.'
  end

  private

  def set_proveedor
    @proveedor = Proveedor.find(params[:id])
  end

  def proveedor_params
    params.require(:proveedor).permit(:nombre, :contacto, :telefono, :email, :direccion)
  end
end

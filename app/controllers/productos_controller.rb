class ProductosController < ApplicationController
  before_action :set_producto, only: %i[show edit update destroy]

  def index
    @productos = Producto.all
  end

  def show
  end

  def new
    @producto = Producto.new
  end

  def edit
  end

  def create
    @producto = Producto.new(producto_params)

    if @producto.save
      redirect_to @producto, notice: 'Producto fue creado exitosamente.'
    else
      render :new
    end
  end

  def update
    if @producto.update(producto_params)
      redirect_to @producto, notice: 'Producto fue actualizado exitosamente.'
    else
      render :edit
    end
  end

  def destroy
    @producto.destroy
    redirect_to productos_path, notice: 'Producto fue eliminado exitosamente.'
  end

  private

  def set_producto
    @producto = Producto.find(params[:id])
  end

  def producto_params
    params.require(:producto).permit(:nombre, :precio, :stock, :descripcion, :categorium_id, :proveedor_id)
  end
end

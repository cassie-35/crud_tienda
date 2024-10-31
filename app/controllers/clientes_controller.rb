class ClientesController < ApplicationController
  before_action :set_cliente, only: %i[show edit update destroy]

  def index
    @clientes = Cliente.all
  end

  def show
  end

  def new
    @cliente = Cliente.new
  end

  def edit
  end

  def create
    @cliente = Cliente.new(cliente_params)

    if @cliente.save
      redirect_to @cliente, notice: 'Cliente fue creado exitosamente.'
    else
      render :new
    end
  end

  def update
    if @cliente.update(cliente_params)
      redirect_to @cliente, notice: 'Cliente fue actualizado exitosamente.'
    else
      render :edit
    end
  end

  def destroy
    @cliente.destroy
    redirect_to clientes_path, notice: 'Cliente fue eliminado exitosamente.'
  end

  private

  def set_cliente
    @cliente = Cliente.find(params[:id])
  end

  def cliente_params
    params.require(:cliente).permit(:nombre, :email, :telefono, :direccion, :fecha_registro)
  end
end

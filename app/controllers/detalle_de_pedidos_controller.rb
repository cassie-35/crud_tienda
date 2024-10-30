class DetalleDePedidosController < ApplicationController
  before_action :set_detalle_de_pedido, only: %i[ show edit update destroy ]

  # GET /detalle_de_pedidos or /detalle_de_pedidos.json
  def index
    @detalle_de_pedidos = DetalleDePedido.all
  end

  # GET /detalle_de_pedidos/1 or /detalle_de_pedidos/1.json
  def show
  end

  # GET /detalle_de_pedidos/new
  def new
    @detalle_de_pedido = DetalleDePedido.new
  end

  # GET /detalle_de_pedidos/1/edit
  def edit
  end

  # POST /detalle_de_pedidos or /detalle_de_pedidos.json
  def create
    @detalle_de_pedido = DetalleDePedido.new(detalle_de_pedido_params)

    respond_to do |format|
      if @detalle_de_pedido.save
        format.html { redirect_to @detalle_de_pedido, notice: "Detalle de pedido was successfully created." }
        format.json { render :show, status: :created, location: @detalle_de_pedido }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @detalle_de_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalle_de_pedidos/1 or /detalle_de_pedidos/1.json
  def update
    respond_to do |format|
      if @detalle_de_pedido.update(detalle_de_pedido_params)
        format.html { redirect_to @detalle_de_pedido, notice: "Detalle de pedido was successfully updated." }
        format.json { render :show, status: :ok, location: @detalle_de_pedido }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @detalle_de_pedido.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalle_de_pedidos/1 or /detalle_de_pedidos/1.json
  def destroy
    @detalle_de_pedido.destroy!

    respond_to do |format|
      format.html { redirect_to detalle_de_pedidos_path, status: :see_other, notice: "Detalle de pedido was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle_de_pedido
      @detalle_de_pedido = DetalleDePedido.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def detalle_de_pedido_params
      params.require(:detalle_de_pedido).permit(:cantidad, :precio_unitario, :subtotal, :pedido_id, :producto_id)
    end
end

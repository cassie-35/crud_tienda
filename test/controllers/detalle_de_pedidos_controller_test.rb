require "test_helper"

class DetalleDePedidosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @detalle_de_pedido = detalle_de_pedidos(:one)
  end

  test "should get index" do
    get detalle_de_pedidos_url
    assert_response :success
  end

  test "should get new" do
    get new_detalle_de_pedido_url
    assert_response :success
  end

  test "should create detalle_de_pedido" do
    assert_difference("DetalleDePedido.count") do
      post detalle_de_pedidos_url, params: { detalle_de_pedido: { cantidad: @detalle_de_pedido.cantidad, pedido_id: @detalle_de_pedido.pedido_id, precio_unitario: @detalle_de_pedido.precio_unitario, producto_id: @detalle_de_pedido.producto_id, subtotal: @detalle_de_pedido.subtotal } }
    end

    assert_redirected_to detalle_de_pedido_url(DetalleDePedido.last)
  end

  test "should show detalle_de_pedido" do
    get detalle_de_pedido_url(@detalle_de_pedido)
    assert_response :success
  end

  test "should get edit" do
    get edit_detalle_de_pedido_url(@detalle_de_pedido)
    assert_response :success
  end

  test "should update detalle_de_pedido" do
    patch detalle_de_pedido_url(@detalle_de_pedido), params: { detalle_de_pedido: { cantidad: @detalle_de_pedido.cantidad, pedido_id: @detalle_de_pedido.pedido_id, precio_unitario: @detalle_de_pedido.precio_unitario, producto_id: @detalle_de_pedido.producto_id, subtotal: @detalle_de_pedido.subtotal } }
    assert_redirected_to detalle_de_pedido_url(@detalle_de_pedido)
  end

  test "should destroy detalle_de_pedido" do
    assert_difference("DetalleDePedido.count", -1) do
      delete detalle_de_pedido_url(@detalle_de_pedido)
    end

    assert_redirected_to detalle_de_pedidos_url
  end
end

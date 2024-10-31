require "application_system_test_case"

class DetalleDePedidosTest < ApplicationSystemTestCase
  setup do
    @detalle_de_pedido = detalle_de_pedidos(:one)
  end

  test "visiting the index" do
    visit detalle_de_pedidos_url
    assert_selector "h1", text: "Detalle de pedidos"
  end

  test "should create detalle de pedido" do
    visit detalle_de_pedidos_url
    click_on "New detalle de pedido"

    fill_in "Cantidad", with: @detalle_de_pedido.cantidad
    fill_in "Pedido", with: @detalle_de_pedido.pedido_id
    fill_in "Precio unitario", with: @detalle_de_pedido.precio_unitario
    fill_in "Producto", with: @detalle_de_pedido.producto_id
    fill_in "Subtotal", with: @detalle_de_pedido.subtotal
    click_on "Create Detalle de pedido"

    assert_text "Detalle de pedido was successfully created"
    click_on "Back"
  end

  test "should update Detalle de pedido" do
    visit detalle_de_pedido_url(@detalle_de_pedido)
    click_on "Edit this detalle de pedido", match: :first

    fill_in "Cantidad", with: @detalle_de_pedido.cantidad
    fill_in "Pedido", with: @detalle_de_pedido.pedido_id
    fill_in "Precio unitario", with: @detalle_de_pedido.precio_unitario
    fill_in "Producto", with: @detalle_de_pedido.producto_id
    fill_in "Subtotal", with: @detalle_de_pedido.subtotal
    click_on "Update Detalle de pedido"

    assert_text "Detalle de pedido was successfully updated"
    click_on "Back"
  end

  test "should destroy Detalle de pedido" do
    visit detalle_de_pedido_url(@detalle_de_pedido)
    click_on "Destroy this detalle de pedido", match: :first

    assert_text "Detalle de pedido was successfully destroyed"
  end
end

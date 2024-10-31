json.extract! detalle_de_pedido, :id, :cantidad, :precio_unitario, :subtotal, :pedido_id, :producto_id, :created_at, :updated_at
json.url detalle_de_pedido_url(detalle_de_pedido, format: :json)

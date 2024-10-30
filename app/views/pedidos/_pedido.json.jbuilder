json.extract! pedido, :id, :fecha_pedido, :total, :estado, :metodo_de_pago, :cliente_id, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)

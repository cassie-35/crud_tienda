json.extract! producto, :id, :nombre, :precio, :stock, :descripcion, :categoria_id, :proveedor_id, :created_at, :updated_at
json.url producto_url(producto, format: :json)

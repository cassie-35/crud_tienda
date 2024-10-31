json.extract! proveedor, :id, :nombre, :contacto, :telefono, :email, :direccion, :created_at, :updated_at
json.url proveedor_url(proveedor, format: :json)

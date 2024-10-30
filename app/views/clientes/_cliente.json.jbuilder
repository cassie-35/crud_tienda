json.extract! cliente, :id, :nombre, :email, :telefono, :direccion, :fecha_registro, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)

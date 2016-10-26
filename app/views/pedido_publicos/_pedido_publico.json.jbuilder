json.extract! pedido_publico, :id, :pedido, :fecha, :nombre, :correo, :telefono, :created_at, :updated_at
json.url pedido_publico_url(pedido_publico, format: :json)
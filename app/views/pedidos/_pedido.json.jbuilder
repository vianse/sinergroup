json.extract! pedido, :id, :cantidad, :producto, :userID, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
json.extract! cardpublico, :id, :pedidoID, :producto, :cantidad, :precio, :peso, :created_at, :updated_at
json.url cardpublico_url(cardpublico, format: :json)
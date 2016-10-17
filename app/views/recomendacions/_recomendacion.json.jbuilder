json.extract! recomendacion, :id, :userID, :leido, :created_at, :updated_at
json.url recomendacion_url(recomendacion, format: :json)
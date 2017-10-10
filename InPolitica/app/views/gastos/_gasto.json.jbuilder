json.extract! gasto, :id, :titulo, :informacao, :data, :valor, :deputado_id, :created_at, :updated_at
json.url gasto_url(gasto, format: :json)

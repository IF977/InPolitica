json.extract! deputado, :id, :nome, :idade, :url_foto, :created_at, :updated_at
json.url deputado_url(deputado, format: :json)

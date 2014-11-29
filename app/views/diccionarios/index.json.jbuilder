json.array!(@diccionarios) do |diccionario|
  json.extract! diccionario, :id, :terminos
  json.url diccionario_url(diccionario, format: :json)
end

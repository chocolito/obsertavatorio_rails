json.array!(@localizacions) do |localizacion|
  json.extract! localizacion, :id, :region
  json.url localizacion_url(localizacion, format: :json)
end

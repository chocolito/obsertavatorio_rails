json.array!(@reclamos) do |reclamo|
  json.extract! reclamo, :id, :tweet, :compania, :tipo, :servicio
  json.url reclamo_url(reclamo, format: :json)
end

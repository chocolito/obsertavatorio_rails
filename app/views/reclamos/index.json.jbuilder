json.array!(@reclamos) do |reclamo|
  json.extract! reclamo, :id, :idTweet, :idCompania, :tipo, :servicio
  json.url reclamo_url(reclamo, format: :json)
end

json.array!(@compania) do |companium|
  json.extract! companium, :id, :nombre, :cuenta, :twit
  json.url companium_url(companium, format: :json)
end

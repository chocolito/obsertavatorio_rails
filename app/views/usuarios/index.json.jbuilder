json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :nombre, :cuenta, :idLocal
  json.url usuario_url(usuario, format: :json)
end

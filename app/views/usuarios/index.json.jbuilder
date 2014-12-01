json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :cuenta, :nombre, :id_t, :id_local
  json.url usuario_url(usuario, format: :json)
end

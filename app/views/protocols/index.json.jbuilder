json.array!(@protocols) do |protocol|
  json.extract! protocol, :id, :name
  json.url protocol_url(protocol, format: :json)
end

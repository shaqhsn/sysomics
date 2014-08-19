json.array!(@strains) do |strain|
  json.extract! strain, :id, :name
  json.url strain_url(strain, format: :json)
end

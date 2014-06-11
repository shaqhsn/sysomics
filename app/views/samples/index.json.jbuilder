json.array!(@samples) do |sample|
  json.extract! sample, :id, :name, :title, :cell_type_id, :tissue_id, :organism_id, :molecule_id
  json.url sample_url(sample, format: :json)
end

json.array!(@data_processing_types) do |data_processing_type|
  json.extract! data_processing_type, :id, :name
  json.url data_processing_type_url(data_processing_type, format: :json)
end

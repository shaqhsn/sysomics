json.array!(@data_processings) do |data_processing|
  json.extract! data_processing, :id, :data_processing_type_id, :software_id, :data_set_id, :file_id
  json.url data_processing_url(data_processing, format: :json)
end

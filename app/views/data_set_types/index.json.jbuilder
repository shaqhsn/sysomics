json.array!(@data_set_types) do |data_set_type|
  json.extract! data_set_type, :id, :name
  json.url data_set_type_url(data_set_type, format: :json)
end

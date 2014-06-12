json.array!(@data_sets) do |data_set|
  json.extract! data_set, :id, :data_set_type_id, :project_id, :create_date, :name, :comment, :file_id
  json.url data_set_url(data_set, format: :json)
end

json.array!(@software_parameters) do |software_parameter|
  json.extract! software_parameter, :id, :name, :value, :software_id
  json.url software_parameter_url(software_parameter, format: :json)
end

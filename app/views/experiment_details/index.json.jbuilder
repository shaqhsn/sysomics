json.array!(@experiment_details) do |experiment_detail|
  json.extract! experiment_detail, :id, :sample_id, :platform_id, :protocol_id, :disease_id, :experiment_id
  json.url experiment_detail_url(experiment_detail, format: :json)
end

json.array!(@experiments) do |experiment|
  json.extract! experiment, :id, :name, :comment, :description
  json.url experiment_url(experiment, format: :json)
end

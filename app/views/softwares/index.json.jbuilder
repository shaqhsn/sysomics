json.array!(@softwares) do |software|
  json.extract! software, :id, :name, :version
  json.url software_url(software, format: :json)
end

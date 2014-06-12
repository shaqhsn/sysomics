json.array!(@public_repositories) do |public_repository|
  json.extract! public_repository, :id, :name, :url, :record_id
  json.url public_repository_url(public_repository, format: :json)
end

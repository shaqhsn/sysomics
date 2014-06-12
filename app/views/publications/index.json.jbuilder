json.array!(@publications) do |publication|
  json.extract! publication, :id, :public_repository_id, :DOI
  json.url publication_url(publication, format: :json)
end

json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :last_name, :username, :start_date, :end_date, :email
  json.url user_url(user, format: :json)
end

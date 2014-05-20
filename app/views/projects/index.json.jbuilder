json.array!(@projects) do |project|
  json.extract! project, :id, :user_id, :experiment_id, :publication_id, :file_id, :title, :summary, :start_date, :end_date
  json.url project_url(project, format: :json)
end

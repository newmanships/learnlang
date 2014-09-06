json.array!(@attempts) do |attempt|
  json.extract! attempt, :id, :quiz_id, :user_id
  json.url attempt_url(attempt, format: :json)
end

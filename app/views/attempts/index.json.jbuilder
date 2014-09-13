json.array!(@attempts) do |attempt|
  json.extract! attempt, :id, :has_attempted
  json.url attempt_url(attempt, format: :json)
end

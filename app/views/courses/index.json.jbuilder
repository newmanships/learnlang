json.array!(@courses) do |course|
  json.extract! course, :id, :title, :body
  json.url course_url(course, format: :json)
end

json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :title, :body, :image
  json.url lesson_url(lesson, format: :json)
end

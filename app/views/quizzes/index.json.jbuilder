json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :name, :lesson_id
  json.url quiz_url(quiz, format: :json)
end

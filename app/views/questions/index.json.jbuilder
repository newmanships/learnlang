json.array!(@questions) do |question|
  json.extract! question, :id, :quiz_id, :question_text
  json.url question_url(question, format: :json)
end

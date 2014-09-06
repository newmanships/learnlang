json.array!(@correct_answers) do |correct_answer|
  json.extract! correct_answer, :id, :question_id, :correctAnswerText
  json.url correct_answer_url(correct_answer, format: :json)
end

json.array!(@user_answers) do |user_answer|
  json.extract! user_answer, :id, :question_id, :userAnswerText, :attempt_id, :user_id
  json.url user_answer_url(user_answer, format: :json)
end

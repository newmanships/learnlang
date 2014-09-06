class Attempt < ActiveRecord::Base
  belongs_to :quiz
  belongs_to :user
  has_many :user_answers, foreign_key: "attempt_id"
end

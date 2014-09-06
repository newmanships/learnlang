class Quiz < ActiveRecord::Base
  belongs_to :lesson
  has_many :questions, foreign_key: "quiz_id"
  has_many :attempts, foreign_key: "quiz_id"
end

class Quiz < ActiveRecord::Base
  belongs_to :lesson
  belongs_to :section, foreign_key: "lesson_id"
  has_many :questions, foreign_key: "quiz_id"
end

class Section < ActiveRecord::Base
  belongs_to :course
  has_many :quizzes, foreign_key: "lesson_id"
  has_many :lessons, foreign_key: "section_id"#, :inverse_of => :sections
  accepts_nested_attributes_for :lessons
end

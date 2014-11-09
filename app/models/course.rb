class Course < ActiveRecord::Base
  
  has_many :lessons, foreign_key: "course_id"
  has_many :sections, foreign_key: "course_id"
  has_one :alphabet, :inverse_of => :course
end

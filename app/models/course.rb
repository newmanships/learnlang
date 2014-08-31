class Course < ActiveRecord::Base
  
  has_many :lessons, foreign_key: "course_id"
end

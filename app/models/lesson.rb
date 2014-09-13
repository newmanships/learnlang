class Lesson < ActiveRecord::Base
  
  belongs_to :course
  belongs_to :section
  has_many :posts, foreign_key: "lesson_id"
  has_many :attempts
  has_one :quiz
  
  mount_uploader :image, PictureUploader
end

class Lesson < ActiveRecord::Base
  
  belongs_to :course
  belongs_to :section, foreign_key: "section_id"#, :inverse_of => :lessons
  has_many :posts, foreign_key: "lesson_id"
  has_one :quiz
  
#   rails_admin do
#     nested do
#       field :lesson, :hidden do#configure :lesson do
#         default_value do:
#         Lesson.last
# #        hide
        
#       end
#     end
#   end
  
  mount_uploader :image, PictureUploader
end

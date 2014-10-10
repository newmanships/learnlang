class Lesson < ActiveRecord::Base
  
  belongs_to :course
  belongs_to :section#, foreign_key: "section_id"#, :inverse_of => :lessons
  has_many :posts, foreign_key: "lesson_id"
  has_one :quiz
  accepts_nested_attributes_for :quiz
  

  rails_admin do
#     configure :quiz do
#       field :name
#       accepts_nested_attributes_for :questions
#     end
        edit do
      field :course do
          default_value do
            Course.last.id
            #Course.find_by_id(params[:id])
          end
        end
      field :section do
          default_value do
            Section.last.id
          end
      end
      field :title
    end
    
    end
  
  mount_uploader :image, PictureUploader
end

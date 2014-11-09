class Lesson < ActiveRecord::Base
  
  belongs_to :course
  belongs_to :section #, foreign_key: "section_id"#, :inverse_of => :lessons
  has_many :posts, foreign_key: "lesson_id"
  has_one :quiz, :inverse_of => :lesson
  accepts_nested_attributes_for :quiz
  

  rails_admin do
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
      field :body
      field :image
    end
    
    create do
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
      field :body
      field :image
    end

  end  #end rails admin

    rails_admin do
       configure :posts do
         field :title
         field :body
         field :image
         field :alignment
  
        end
    end
  
  mount_uploader :image, PictureUploader
end

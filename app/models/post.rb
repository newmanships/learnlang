class Post < ActiveRecord::Base
  belongs_to :lesson
  
    rails_admin do
      create do
        field :lesson do
          default_value do
            Lesson.last.id
        end
      end
        field :title
        field :body
        field :image
        field :alignment
#         field :title do
#         default_value do
#           Date.current
#         end
#         end
      end
      edit do
        field :lesson do
          default_value do
            Lesson.last.id
        end
      end
        field :title
        field :body
        field :image
        field :alignment
#         default_value do
#           Date.current
#         end
#        end
      end
    end
  
  mount_uploader :image, PictureUploader
end

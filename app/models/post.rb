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
      end
    end
  
  mount_uploader :image, PictureUploader
end

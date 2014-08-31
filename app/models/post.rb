class Post < ActiveRecord::Base
  belongs_to :lesson
  
  mount_uploader :image, PictureUploader
end

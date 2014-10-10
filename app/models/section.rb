class Section < ActiveRecord::Base
  belongs_to :course
  has_many :quizzes, foreign_key: "lesson_id"
  has_many :lessons, foreign_key: "section_id"#, :inverse_of => :sections
  accepts_nested_attributes_for :lessons
  
  rails_admin do
      create do
        field :course do
          default_value do
            Course.last.id
          end
        end
      end
    
    edit do
      field :course do
          default_value do
            Course.last.id
          end
      end
      field :title
    end
  end
  
end

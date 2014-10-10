class Quiz < ActiveRecord::Base
  belongs_to :lesson
  belongs_to :section, foreign_key: "lesson_id"
  has_many :questions
  accepts_nested_attributes_for :questions
  
  rails_admin do
      create do
        field :lesson do
          default_value do
            Lesson.last.id
          end
        end
        
        field :name
      end
     edit do
       field :lesson do
          default_value do
            Lesson.last.id
          end
        end
        field :name

      end
    end

  
   rails_admin do
     configure :questions do
       field :question_text
        field :questionNum, :hidden
         default_value do
           Question.last.id+1
         end
#          default_value do
#         Quiz.last.id
#            "blah"
      

#       field :question_text
    end
    end
  
end

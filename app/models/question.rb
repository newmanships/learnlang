class Question < ActiveRecord::Base
  belongs_to :quiz
  
  
      rails_admin do
      create do
        field :quiz do
          default_value do
            Quiz.last.id
        end
      end
        field :question_text
        field :questionNum, :hidden do
        default_value do
          Question.last.id+1
        end
        end
      end
      edit do
        field :quiz do
          default_value do
            Quiz.last.id
        end
        end
        field :question_text
        field :questionNum, :hidden
         default_value do
           Question.last.id+1
         end
      end
    end
end

class CorrectAnswer < ActiveRecord::Base
  belongs_to :question
  
  rails_admin do
      create do
        field :question do
          default_value do
            Question.last.id
        end
      end
        field :correctAnswerText
        
      end
      edit do
        field :question do
          default_value do
            Question.last.id
        end
        end
        field :correctAnswerText
        
      end
    end
  
end

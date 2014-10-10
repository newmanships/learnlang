class Question < ActiveRecord::Base
  belongs_to :quiz
#  belongs_to :quiz, :inverse_of => :question
  has_many :correct_answers
  accepts_nested_attributes_for :correct_answers
  
  
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

    rails_admin do
      configure :correct_answers do
        field :correctAnswerText
    end
    end

end

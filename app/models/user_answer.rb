class UserAnswer < ActiveRecord::Base
  belongs_to :question
  belongs_to :attempt
  belongs_to :user
end

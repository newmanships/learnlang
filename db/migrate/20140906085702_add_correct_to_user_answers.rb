class AddCorrectToUserAnswers < ActiveRecord::Migration
  def change
    add_column :user_answers, :correct, :boolean
  end
end

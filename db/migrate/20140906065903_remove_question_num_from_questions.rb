class RemoveQuestionNumFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :questionNum
  end
end

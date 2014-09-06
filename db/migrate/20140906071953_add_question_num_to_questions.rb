class AddQuestionNumToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :questionNum, :integer
  end
end

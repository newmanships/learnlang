class CreateCorrectAnswers < ActiveRecord::Migration
  def change
    create_table :correct_answers do |t|
      t.integer :question_id
      t.text :correctAnswerText

      t.timestamps
    end
  end
end

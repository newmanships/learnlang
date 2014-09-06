class CreateUserAnswers < ActiveRecord::Migration
  def change
    create_table :user_answers do |t|
      t.integer :question_id
      t.text :userAnswerText
      t.integer :attempt_id
      t.integer :user_id

      t.timestamps
    end
  end
end

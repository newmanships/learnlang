class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :name
      t.integer :lesson_id

      t.timestamps
    end
  end
end

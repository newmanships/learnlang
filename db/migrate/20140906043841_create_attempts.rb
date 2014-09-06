class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.integer :quiz_id
      t.integer :user_id

      t.timestamps
    end
  end
end

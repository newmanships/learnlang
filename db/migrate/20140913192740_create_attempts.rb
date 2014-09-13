class CreateAttempts < ActiveRecord::Migration
  def change
    create_table :attempts do |t|
      t.boolean :has_attempted

      t.timestamps
    end
  end
end

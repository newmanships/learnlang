class CreateAlphabets < ActiveRecord::Migration
  def change
    create_table :alphabets do |t|
      t.string :symbol
      t.string :explanation
      t.belongs_to :course, index: true

      t.timestamps
    end
  end
end

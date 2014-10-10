class CreateSigns < ActiveRecord::Migration
  def change
    create_table :signs do |t|
      t.string :character
      t.string :explanation
      t.belongs_to :alphabet, index: true

      t.timestamps
    end
  end
end

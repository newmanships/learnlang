class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :image
      t.integer :lesson_id
      t.string :alignment

      t.timestamps
    end
  end
end

class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.text :title
      t.text :body
      t.text :image

      t.timestamps
    end
  end
end

class DropAttempts < ActiveRecord::Migration
  def change
    drop_table :attempts
  end
end

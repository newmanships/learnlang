class FixSymbolName < ActiveRecord::Migration
  def change
    rename_column :alphabets, :symbol, :title
  end
end

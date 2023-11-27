class ChangeNameColumn < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :numero, :number
  end
end

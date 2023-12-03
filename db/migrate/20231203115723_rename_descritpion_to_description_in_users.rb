class RenameDescritpionToDescriptionInUsers < ActiveRecord::Migration[7.1]
  def change
    rename_column :users, :descritpion, :description
  end
end

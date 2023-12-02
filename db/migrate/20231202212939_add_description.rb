class AddDescription < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :descritpion, :text
  end
end

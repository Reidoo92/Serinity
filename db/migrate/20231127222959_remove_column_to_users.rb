class RemoveColumnToUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :doctor
    remove_column :users, :patient
  end
end

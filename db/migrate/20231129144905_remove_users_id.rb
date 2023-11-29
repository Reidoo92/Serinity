class RemoveUsersId < ActiveRecord::Migration[7.1]
  def change
    remove_column :reservations, :users_id
  end
end

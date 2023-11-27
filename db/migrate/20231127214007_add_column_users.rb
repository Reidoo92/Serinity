class AddColumnUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :numero, :string
    add_column :users, :adress, :string
    add_column :users, :speciality, :string
    add_column :users, :category, :string
    add_column :users, :doctor, :boolean
    add_column :users, :patient, :boolean
  end
end

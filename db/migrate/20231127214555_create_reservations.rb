class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.date :date
      t.integer :price
      t.references :users, null: false, foreign_key: true

      t.timestamps
    end
  end
end

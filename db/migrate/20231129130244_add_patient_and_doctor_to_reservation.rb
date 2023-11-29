class AddPatientAndDoctorToReservation < ActiveRecord::Migration[7.1]
  def change
    add_reference :reservations, :doctor, foreign_key: { to_table: :users }
    add_reference :reservations, :patient, foreign_key: { to_table: :users }
  end
end

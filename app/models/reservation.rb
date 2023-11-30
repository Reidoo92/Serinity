class Reservation < ApplicationRecord
  belongs_to :doctor, class_name: 'User', foreign_key: 'doctor_id'
  belongs_to :patient, class_name: 'User', foreign_key: 'patient_id'


  # validates :date, :price, :users_id, presence: true
  # validates :date, uniqueness: true
end

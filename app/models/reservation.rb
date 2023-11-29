class Reservation < ApplicationRecord
  belongs_to :doctor, class_name: 'User'
  belongs_to :patient, class_name: 'User'

  # validates :date, :price, :users_id, presence: true
  # validates :date, uniqueness: true
end

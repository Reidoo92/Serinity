class Reservation < ApplicationRecord
  belongs_to :users

  validates :date, :price, :users_id, presence: true
  validates :date, uniqueness: true
end

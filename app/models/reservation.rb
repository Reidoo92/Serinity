class Reservation < ApplicationRecord
  belongs_to :user

  validates :date, :price, :users_id, presence: true
  validates :date, uniqueness: true
end

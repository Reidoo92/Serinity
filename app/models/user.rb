class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  # -------------- Cloudinary -------------- #
  #
  has_one_attached :photo

  # -------------- Géocode -------------- #

  # geocoded_by :adress
  # after_validation :geocode, if: :will_save_change_to_adress?

   # -------------- ------- -------------- #

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :reservations
  has_many :doctor_reservations, class_name: 'Reservation', foreign_key: 'doctor_id'
  has_many :patient_reservations, class_name: 'Reservation', foreign_key: 'patient_id'

  validates :first_name, :last_name, :email, :number, :adress, :age, :role, presence: true
  validates :email, :number, uniqueness: true
  validates :role, inclusion: { in: %w(doctor patient) }

  # validates :speciality, presence: true, if: -> { doctor? } NE FONCTIONNE PAS FAIT BUG LE SIGN IN
  # RETIRER L'INPUT AGE QUAND IL S'INCRIT QUAND C'EST UN DOCTEUR
  PHONE_NUMBER = /\A
  (^0[1-9]([ .-]?[0-9]{2}){4}$)
  /x

  validates :number, format: { with: PHONE_NUMBER }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end

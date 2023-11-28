class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :reservations

  validates :first_name, :last_name, :email, :password, :number, :adress, :age, :role, presence: true
  validates :email, :number, uniqueness: true

  # validates :speciality, presence: true, if: -> { doctor? } NE FONCTIONNE PAS FAIT BUG LE SIGN IN
  # RETIRER L'INPUT AGE QUAND IL S'INCRIT QUAND C'EST UN DOCTEUR
  PHONE_NUMBER = /\A
  (^0[1-9]([ .-]?[0-9]{2}){4}$)
  /x

  validates :number, format: { with: PHONE_NUMBER }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  enum role: [:doctor, :patient]

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :reservations, dependent: :destroy

  validates :first_name, :last_name, :email, :password, :number, presence: true
  validates :email, :number, uniqueness: true

  # validates :speciality, presence: true, if: -> { doctor? } NE FONCTIONNE PAS FAIT BUG LE SIGN IN 

  PHONE_NUMBER = /\A
  (^0[1-9]([ .-]?[0-9]{2}){4}$)
  /x

  validates :number, format: { with: PHONE_NUMBER }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  def doctor?
    role == 'doctor'
  end

  def patient?
    role == 'patient'
  end
end

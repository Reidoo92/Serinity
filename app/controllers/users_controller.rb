class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @reservation = Reservation.new
  end

  def index
    @doctors = User.where(role: 'doctor')
    @patients = User.where(role: 'patient')
    @role = current_user.role
  end

  def profiles
    @doctor = current_user # Supposons que le docteur est l'utilisateur actuellement connecté
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :number, :adress, :category, :speciality, :role, :balance, :photo)
  end
end

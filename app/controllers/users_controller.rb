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

    if @role == 'patient'
      @markers = @doctors.geocoded.map do |doctor|
        {
          lat: doctor.latitude,
          lng: doctor.longitude,
          #info_window: render_to_string(partial: "info_window", locals: { doctor: doctor })
        }
      end
    end

  end

  def profiles
    @doctor = current_user
    # @reservations = Reservation.all
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :number, :adress, :category, :speciality, :role, :balance, :photo)
  end
end

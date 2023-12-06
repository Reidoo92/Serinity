class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @doctors = User.where(role: 'doctor')
    @patients = User.where(role: 'patient')

    @user = User.find(params[:id])
    @reservation = Reservation.new
    if @user.role == 'doctor'
      @markers = @doctors.geocoded.map do |doctor|
        if doctor.id == @user.id
          {
            lat: doctor.latitude,
            lng: doctor.longitude,
            #info_window: render_to_string(partial: "info_window", locals: { doctor: doctor })
          }
        end
      end
    else
      @markers = @patients.geocoded.map do |patient|
        if patient.id == @user.id
          {
            lat: patient.latitude,
            lng: patient.longitude,
            #info_window: render_to_string(partial: "info_window", locals: { doctor: doctor })
          }
        end
      end
    end
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
    if params[:query].present?
      @patients = @patients.where("first_name ILIKE :query OR last_name ILIKE :query", query: "%#{params[:query]}%")
    end

    if params[:query].present?
      @doctors = @doctors.where("first_name ILIKE :query OR last_name ILIKE :query", query: "%#{params[:query]}%")
    end



    respond_to do |format|
      format.html #{users_path}
      format.text { render partial: 'users/list', locals: { patients: @patients}, formats: [:html]}
    end


  end

  def profiles
    @doctor = current_user
    @reservations = Reservation.all
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :number, :adress, :category, :speciality, :role, :balance, :photo)
  end
end

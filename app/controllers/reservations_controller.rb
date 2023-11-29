class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    doctor = User.find(params[:user_id])
    patient = current_user
    reservation = Reservation.new(reservation_params)
    reservation.doctor = doctor
    reservation.patient = patient
    if reservation.save!
      redirect_to root_path, notice: "Your reservation was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_params)
      redirect_to path, notice: "Your reservation was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date, :price)
  end
end

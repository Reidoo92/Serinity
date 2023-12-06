class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def create

    if current_user.role == "doctor"
      doctor = current_user
      patient = User.find(params[:user_id])
    else
      doctor = User.find(params[:user_id])
      patient = current_user
    end

    reservation = Reservation.new(reservation_params)
    reservation.doctor = doctor
    reservation.patient = patient
    reservation.price = 50
    if reservation.save!
      doctor.update(balance: (doctor.balance + reservation.price))
      redirect_to root_path, notice: "Votre réservation a bien été prise en compte."
    else
      render :new, status: :unprocessable_entity
    end

  end

  def upcoming

    @reservations = Reservation.where(doctor_id: current_user).where("date >= ?", Date.today)

    if params[:query].present?
      sql_subquery = <<~SQL
      users.first_name ILIKE :query
      OR users.last_name ILIKE :query
      SQL


      @reservations = @reservations.joins(:patient).where(sql_subquery, query: "%#{params[:query]}%")
    end

  respond_to do |format|
    format.html # Utilise la vue HTML par défaut pour l'action
    format.text { render partial: 'reservations/list-rdv', locals: { reservations: @reservations}, formats: [:html] }
  end


  end


  def past
    @reservations = Reservation.where(doctor_id: current_user).where("date <= ?", Date.today)
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

  # def filter_reservations(filter)
  #   case filter
  #   when "Aujourd'hui"
  #     Reservation.where(date: Date.today)
  #   when 'Hier'
  #     Reservation.where(date: Date.yesterday)
  #   when 'Cette semaine'
  #     Reservation.where('date >= ? AND date <= ?', Date.today.beginning_of_week, Date.today.end_of_week)
  #   when 'La semaine dernière'
  #     Reservation.where('date >= ? AND date <= ?', 1.week.ago.beginning_of_week, 1.week.ago.end_of_week)
  #   when 'Ce mois'
  #     Reservation.where('date >= ? AND date <= ?', Date.today.beginning_of_month, Date.today.end_of_month)
  #   else
  #     Reservation.all
  #   end
  # end

  def reservation_params
    params.require(:reservation).permit(:date, :price)
  end
end

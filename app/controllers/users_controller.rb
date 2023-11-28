class UsersController < ApplicationController
  def new
    @user = User.new
  end

  # def create
  #   @user = User.new(user_params)

  #   if @user.save
  #     @user.role = :doctor
  #     # Redirection ou autre logique après une inscription réussie
  #     redirect_to root_path, notice: 'Inscription réussie!'
  #   else
  #     # Afficher à nouveau le formulaire d'inscription en cas d'échec
  #     render :new
  #   end
  # end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :number, :address, :category, :speciality, :role)
  end
end

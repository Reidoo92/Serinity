class UsersController < ApplicationController
  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :number, :address, :category, :speciality, :role)
  end
end

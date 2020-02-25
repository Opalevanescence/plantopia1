class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @my_plants = Plant.where(user: @user)
    @my_purchases = Transaction.where(user: @user)
    @plants_sold = Transaction.joins(:plant).where(user: @user)
  end
end

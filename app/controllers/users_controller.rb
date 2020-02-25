class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @my_plants = @user.plants
    @my_purchases = @user.bought_plants
    @plants_sold = @user.sold_plants
  end
end

class UsersController < ApplicationController

  def new
    @user = User.new(user_params)
  end

  def create
    @user = User.new(user_params)
    if @user.save!
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  def show
    @user = current_user
    @my_plants = @user.plants
    @my_purchases = @user.bought_plants
    @plants_sold = @user.sold_plants
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end

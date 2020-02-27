class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
     @user = user.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  def edit
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

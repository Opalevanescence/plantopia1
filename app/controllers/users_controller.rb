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
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User info successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
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

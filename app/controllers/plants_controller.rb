class PlantsController < ApplicationController
  before_action :set_plant, only: [:show, :edit, :update, :destroy]

  def index
    @plants = Plant.all
  end

  def show
    @transaction = Transaction.new
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.user = current_user
    if @plant.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @plant.update(plant_params)
        redirect_to @plant
      else
        render :edit
      end
    end
  end

  def destroy
    @plant.destroy
    respond_to do |format|
      redirect_to user_path(current_user)
    end
  end

  private

    def set_plant
      @plant = Plant.find(params[:id])
    end


    def plant_params
      params.require(:plant).permit(:name, :price, :description, :price, :category )
    end
end


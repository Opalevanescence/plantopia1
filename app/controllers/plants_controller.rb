class PlantsController < ApplicationController
   before_action :set_plant, only: [:show, :edit, :update, :destroy]
  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
    @transaction = Transaction.new
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    respond_to do |format|
      if @plant.update(plant_params)
        format.html { redirect_to @plant, notice: 'Plant was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant }
      else
        format.html { render :edit }
        format.json { render json: @plant.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @plant.destroy
    respond_to do |format|
      format.html { redirect_to plants_url, notice: 'Plant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_plant
      @plant = Plant.find(params[:id])
    end


    def plant_params
      params.require(:plant).permit(:name, :price, :description, :price)
    end
end


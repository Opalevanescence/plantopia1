class TransactionsController < ApplicationController

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new
    @transaction.plant_id = Plant.find(params[:id])
    @transaction.user_id = current_user.id

    @plant = Plant.find(params[:id])
    @transaction.plant = @plant
    @transaction.user_id = @plant.user
    if @transaction.save
      # NEED TO SEND TO USER HOMEPAGE
      redirect_to @root_path
    else
      redirect_to @plant_path
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:user_id, :plant_id)
  end
end

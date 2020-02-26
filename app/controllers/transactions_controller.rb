class TransactionsController < ApplicationController
  before_action :set_plant

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new
    @transaction.plant_id = @plant.id # or smart enough to be just @plant?
    @transaction.user_id = current_user.id

    if @transaction.save
      # NEED TO SEND TO USER HOMEPAGE
      # redirect_to @root_path
      redirect_to user_path(current_user)
    else
      redirect_to @plant_path
    end
  end

  private

  def set_plant
    @plant = Plant.find(params[:plant_id])
  end

  def transaction_params
    params.require(:transaction).permit(:user_id, :plant_id)
  end
end

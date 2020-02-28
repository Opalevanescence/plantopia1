class TransactionsController < ApplicationController
  before_action :set_plant

  def new
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new
    @transaction.plant = @plant

    if current_user
      @transaction.user_id = current_user.id
      if @transaction.save
        redirect_to user_path(current_user)
      else
        redirect_to plant_path(@plant)
      end
    else
      redirect_to new_user_session_path
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

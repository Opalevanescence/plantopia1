class TransactionsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @transaction = Transaction.new
  end
end

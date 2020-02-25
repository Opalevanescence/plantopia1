class PlantsController < ApplicationController
  def index
    @plants = Plant.all
    @trees = Plant.where(category: 'tree')
    @flowers = Plant.where(category: 'flower')
    @bushes = Plant.where(category: 'bush')
    @cacti = Plant.where(category: 'cactus')
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
  end

  def create
  end
end

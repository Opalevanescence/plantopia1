class PagesController < ApplicationController
  def home
    redirect_to plants_path
  end
end

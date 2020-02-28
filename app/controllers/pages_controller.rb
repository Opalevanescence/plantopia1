class PagesController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:home]

  def home
    redirect_to plants_path
  end
end

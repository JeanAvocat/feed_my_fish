class FishController < ApplicationController

<<<<<<< HEAD
=======
  skip_before_action :authenticate_user!, only: %i[index show]

>>>>>>> eb86a3853f06bac297806b275719b61cf9873aa5
  def index
    @fish = Fish.all
  end
  
  def new
    @fish = Fish.new
  end

  def create
    @fish = Fish.new(fish_params)
    @fish.owner = current_user
    @fish.save
    redirect_to fish_path(@fish)
  end

  private

  def fish_params
    params.require(:fish).permit(:title, :location, :picture_url, :specie, :description, :daily_price, :owner)
  end
end

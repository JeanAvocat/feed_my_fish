class FishController < ApplicationController
  def new
    @fish = Fish.new
  end

  def create
    @fish = Fish.new(fish_params)
    @fish.owner = current_user
    @fish.save
    redirect_to fish_path(@fish)
  end

  def index
    @fish = Fish.all
  end

  private

  def fish_params
    params.require(:fish).permit(:title, :location, :picture_url, :specie, :description, :daily_price, :owner)
  end
end

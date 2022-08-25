class FishController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    if params[:query].present?
      @fish = Fish.search_fish_by_caracteristic(params[:query])
    else
      @fish = Fish.all
    end
  end

  def show
    @fish = Fish.find(params[:id])
    @booking = Booking.new
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
    params.require(:fish).permit(:title, :location, :specie, :photo, :description, :daily_price, :owner)
  end
end

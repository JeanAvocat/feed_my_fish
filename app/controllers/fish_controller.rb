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

    @markers = { lat: @fish.latitude,
                 lng: @fish.longitude,
                 info_window: render_to_string(partial: "info_window", locals: { fish: @fish }),
                 image_url: helpers.asset_url("fish.png") }
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

  def edit
    @fish = Fish.find(params[:id])
  end

  def update
    @fish = Fish.find(params[:id])
    @fish.update(fish_params)
    redirect_to profil_path
  end

  def destroy
    @fish = Fish.find(params[:id])
    @fish.destroy
    redirect_to profil_path
  end

  private

  def fish_params
    params.require(:fish).permit(:title, :location, :specie, :photo, :description, :daily_price, :owner)
  end
end

class BookingsController < ApplicationController

  def create
    @fish = Fish.find(params[:fish_id])
    @booking = Booking.new(booking_params)
    @booking.keeper_id = current_user.id
    @booking.total_price = @fish.daily_price
    @booking.status = "En attente de validation"
    @booking.fish = @fish
    if @booking.save
      redirect_to fish_path(@fish)
    else
      render "fish/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status, :start_time, :end_time, :total_price, :keeper_id, :fish_id)
  end
end

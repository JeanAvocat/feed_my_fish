class MyBookingsController < ApplicationController
  def index
    @fishbooks = {}
    if current_user.fish[0].bookings == []
      @bookings = []
    else
      @fishbooks = current_user.fish
      @fishbooks.select do |fish|
        fish.bookings != []
      end
    end
    @askbooks = current_user.bookings
  end
end

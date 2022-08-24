class MyBookingsController < ApplicationController
  def index
    @fish = current_user.fish
  end
end

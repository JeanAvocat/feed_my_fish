class FishController < ApplicationController

  def show
    @fish = Fish.find(params[:id])
  end
end

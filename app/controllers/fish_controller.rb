class FishController < ApplicationController

  def index
    @fish = Fish.all
  end

  def show
    @fish = Fish.find(params[:id])
  end
end

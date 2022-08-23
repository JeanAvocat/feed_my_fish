class FishController < ApplicationController
  def new
    @fish = Fish.new
  end

  def create
    @fish = Fish.new(params[:fish])
    @fish.save
  end
end

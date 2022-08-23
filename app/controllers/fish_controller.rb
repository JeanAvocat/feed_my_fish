class FishController < ApplicationController
  def index
    @fish = Fish.all
  end
end

class FishController < ApplicationController

  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @fish = Fish.all
  end
end

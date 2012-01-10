class BikesController < ApplicationController
  
  def index
    @bikes = Bike.all
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.create(params[:bike])
    redirect_to 'index'
  end

end

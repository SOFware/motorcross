class BikesController < ApplicationController
  
  def index
    @bike = Bike.new
    @bikes = Bike.all
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.create(params[:bike])
    redirect_to :action => 'index'
  end

end

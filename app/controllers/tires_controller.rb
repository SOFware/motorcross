class TiresController < ApplicationController
  def index
    @tire = Tire.new
    @tires = Tire.all
  end

  def new
    @tire = Tire.new
  end
  
  def create
    @tire = Tire.create(params[:tire])
    redirect_to tires_path
  end

end

class SoilsController < ApplicationController
  def index
    @soils = Soil.all
  end

  def new
    @soil = Soil.new
  end
  
  def create
    @soil = Soil.create(params[:soil])
    redirect_to :action => 'index'
  end

end

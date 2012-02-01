class SoilsController < ApplicationController
  def index
    @soil = Soil.new    
    @soils = Soil.all
  end

  def new
    @soil = Soil.new
  end
  
  def create
    @soil = Soil.create(params[:soil])
    redirect_to :action => 'index'
  end


  def edit
    @soil = Soil.find(params[:id])
  end
  
  def update
    @soil = Soil.find(params[:id])
    @soil.update_attributes(params[:soil])
    redirect_to :action => 'index'
  end
  
  def destroy
    # raise 'b'
    @soil = Soil.find(params[:id])
    @soil.destroy
    redirect_to :action => 'index'
  end

end

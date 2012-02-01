class TracksController < ApplicationController
  def index
    @tracks = Track.all
    @track = Track.new    
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.create(params[:track])
    redirect_to :action => 'index'
  end


  def edit
    @track = Track.find(params[:id])
  end
  
  def update
    @track = Track.find(params[:id])
    @track.update_attributes(params[:track])
    redirect_to :action => 'index'
  end
  
  def destroy
    # raise 'b'
    @track = Track.find(params[:id])
    @track.destroy
    redirect_to :action => 'index'
  end
end

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

end

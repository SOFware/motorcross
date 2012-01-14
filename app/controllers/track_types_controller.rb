class TrackTypesController < ApplicationController
  def index
    @track_types = TrackType.all
  end

  def new
    @track_type = TrackType.new
  end
  
  def create
    @track_type = TrackType.create(params[:track_type])
    redirect_to :action => 'index'
  end

end

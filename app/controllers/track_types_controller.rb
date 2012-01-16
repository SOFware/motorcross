class TrackTypesController < ApplicationController
  def index
    @track_types = TrackType.all
    @track_type = TrackType.new    
  end

  def new
    @track_type = TrackType.new
  end
  
  def create
    @track_type = TrackType.create(params[:track_type])
    if request.xhr?
      render :text => render_to_string(:partial => 'track_types/track_types_list', 
        :locals => { :track_types => TrackType.all })
    else
      redirect_to :action => 'index'      
    end

  end

end

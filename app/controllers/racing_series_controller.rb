class RacingSeriesController < ApplicationController
  def index
    @all_racing_series = RacingSeries.all
    @racing_series = RacingSeries.new    
  end

  def new
    @racing_series = RacingSeries.new
  end

  def create
    @racing_series = RacingSeries.create(params[:racing_series])
    if request.xhr?
      render :text => render_to_string(:partial => 'racing_series/racing_series_list', 
        :locals => { :all_racing_series => RacingSeries.all})
    else
      redirect_to :action => "index"
    end
    
  end
end

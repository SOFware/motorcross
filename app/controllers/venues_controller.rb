class VenuesController < ApplicationController
  def index
    @venues = Venue.all
    @venue = Venue.new    
  end

  def new
    @venue = Venue.new
  end
  
  def create
    @venue = Venue.create(params[:venue])
    if request.xhr?
      render :text => render_to_string(:partial => 'venues/venue_list', 
        :locals => { :venues => Venue.all })
    else
      redirect_to :action => :index
    end    
  end

end

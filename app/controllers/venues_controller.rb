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

  def edit
    @venue = Venue.find(params[:id])
  end
  
  def update
    @venue = Venue.find(params[:id])
    @venue.update_attributes(params[:venue])
    redirect_to :action => 'index'
  end
  
  def destroy
    # raise 'b'
    @venue = Venue.find(params[:id])
    @venue.destroy
    redirect_to :action => 'index'
  end

end

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
    redirect_to :action => 'index'
    
  end

end

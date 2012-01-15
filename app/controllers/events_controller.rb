class EventsController < ApplicationController
  
  def index
    @events = Event.all
    @event = Event.new
  end

  def new
    @event = Event.new
  end
  
  def create
    @event = Event.create(params[:event])
    redirect_to :action => "index"
  end

end

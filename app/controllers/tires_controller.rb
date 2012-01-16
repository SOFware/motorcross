class TiresController < ApplicationController
  def index
    @tire = Tire.new
    @tires = Tire.all
  end

  def new
    @tire = Tire.new
  end
  
  def create
    @tire = Tire.create(params[:tire])
    if request.xhr?
      render :text => render_to_string(:partial => 'tires/tires_list', 
        :locals => { :tires => Tire.all })
    else
      redirect_to :action => :index
    end    
  end

end

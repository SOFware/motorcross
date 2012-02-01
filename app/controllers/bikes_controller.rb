class BikesController < ApplicationController
  
  def index
    # raise 'b'
    @bike = Bike.new
    @bikes = Bike.all
  end

  def new
    @bike = Bike.new
  end

  def create
    @bike = Bike.create(params[:bike])
    if request.xhr?
      render :text => render_to_string(:partial => 'bikes/bikes_list', 
        :locals => { :bikes => Bike.all })
    else
      redirect_to :action => :index
    end    
  end

  def edit
    @bike = Bike.find(params[:id])
  end
  
  def update
    @bike = Bike.find(params[:id])
    @bike.update_attributes(params[:bike])
    redirect_to :action => 'index'
  end
  
  def destroy
    # raise 'b'
    @bike = Bike.find(params[:id])
    @bike.destroy
    redirect_to :action => 'index'
  end


end

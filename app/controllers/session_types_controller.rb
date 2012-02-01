class SessionTypesController < ApplicationController
  def index
    @types = SessionType.all
    @type = SessionType.new
  end

  def new
    @type = SessionType.new
  end
  
  def create
    @type = SessionType.create(params[:session_type])
    redirect_to :action => "index"
  end


  def edit
    @type = SessionType.find(params[:id])
  end
  
  def update
    @type = SessionType.find(params[:id])
    @type.update_attributes(params[:session_type])
    redirect_to :action => 'index'
  end
  
  def destroy
    # raise 'b'
    @type = SessionType.find(params[:id])
    @type.destroy
    redirect_to :action => 'index'
  end

end

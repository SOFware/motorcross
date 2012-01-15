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

end

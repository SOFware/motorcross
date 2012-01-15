class SessionsController < ApplicationController
  def index
    @sessions = Session.all
  end

  def new
    @session = Session.new
  end
  
  def create
    # raise "b"
    @session = Session.create(params[:session])
    redirect_to :action => "index"
  end

end

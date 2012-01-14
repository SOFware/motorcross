class RacesController < ApplicationController
  def index
    @races = Race.all
  end

  def new
    @race = Race.new
  end

  def create
    # raise 'b'
    @race = Race.create(params[:race])
    redirect_to :action => 'index'
  end

end

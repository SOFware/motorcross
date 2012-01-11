class RacesController < ApplicationController
  def index
    @races = Race.all
  end

  def new
    @race = Race.new
  end

end

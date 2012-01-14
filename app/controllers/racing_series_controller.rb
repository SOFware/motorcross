class RacingSeriesController < ApplicationController
  def index
    @all_racing_series = RacingSeries.all
  end

  def new
    @racing_series = RacingSeries.new
  end

  def create
    @racing_series = RacingSeries.create(params[:racing_series])
    redirect_to :action => "index"
  end
end

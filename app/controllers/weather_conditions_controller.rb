class WeatherConditionsController < ApplicationController
  def index
    @conditions = WeatherCondition.all
    @condition  = WeatherCondition.new
  end

  def new
    @condition  = WeatherCondition.new
  end

  def create
    @condition  = WeatherCondition.create(params[:weather_condition])
    redirect_to :action => "index"
  end

end

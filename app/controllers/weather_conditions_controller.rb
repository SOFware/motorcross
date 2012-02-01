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


  def edit
    @condition = WeatherCondition.find(params[:id])
  end
  
  def update
    @condition = WeatherCondition.find(params[:id])
    @condition.update_attributes(params[:weather_condition])
    redirect_to :action => 'index'
  end
  
  def destroy
    # raise 'b'
    @condition = WeatherCondition.find(params[:id])
    @condition.destroy
    redirect_to :action => 'index'
  end

end

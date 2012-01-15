class SkyConditionsController < ApplicationController
  def index
    @conditions = SkyCondition.all
    @condition  = SkyCondition.new
  end

  def new
    @condition  = SkyCondition.new
  end

  def create
    @condition  = SkyCondition.create(params[:sky_condition])
    redirect_to :action => "index"
  end

end

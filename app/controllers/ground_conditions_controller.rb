class GroundConditionsController < ApplicationController
  def index
    @conditions = GroundCondition.all
    @condition = GroundCondition.new
  end

  def new
    @condition = GroundCondition.new
  end

  def create
    @condition = GroundCondition.create(params[:ground_condition])
    redirect_to :action => "index"
  end

end

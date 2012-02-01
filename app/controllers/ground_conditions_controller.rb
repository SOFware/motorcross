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


  def edit
    @condition = GroundCondition.find(params[:id])
  end
  
  def update
    @condition = GroundCondition.find(params[:id])
    @condition.update_attributes(params[:ground_condition])
    redirect_to :action => 'index'
  end
  
  def destroy
    @condition = GroundCondition.find(params[:id])
    @condition.destroy
    redirect_to :action => 'index'
  end

end

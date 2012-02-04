class SessionsController < ApplicationController
  helper_method :sort_column, :sort_direction
  
  def index
    # raise 'b'
    if distant_relation
      @sessions = Session.send(params[:sort].to_sym, sort_direction)
    else
      @sessions = Session.order(sort_column + " " + sort_direction)    
    end
    @option = params[:option] || 'circumstances'
  end
  
  def show
    @session = Session.find(params[:id])
  end

  def new
    @session = Session.new
  end
  
  def create
    # raise "b"
    @session = Session.create(params[:session])
    redirect_to :controller => "timers", :action => "new", :session_id => @session.id
  end


  private
    def distant_relation
      @scope_calls = %w[venue soil]
      @scope_calls.include?(params[:sort])
    end

    def sort_column
      # should this be a date-time combo? or session_id?
      valid_names = Session.column_names + @scope_calls
      valid_names.include?(params[:sort]) ? params[:sort] : "Date" 
      # Session.column_names.include?(params[:sort]) ? params[:sort] : "Date" 
    end

    def sort_direction
      %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc" 
    end
end

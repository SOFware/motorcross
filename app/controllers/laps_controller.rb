class LapsController < ApplicationController
  def create
    raise 'b'
    laps = params[:lap]
    session_id = params[:session_id]
    laps.each do |lap_num, time|
      
    end
    redirect_to :controller => "sessions", :action => "list"
  end
end

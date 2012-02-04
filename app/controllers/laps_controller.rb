class LapsController < ApplicationController
  def create
    # raise 'b'
    session_id = params[:session_id]
    params[:lap].each do |lap_num, str_time|
      Lap.create(session_id: params[:session_id], tenths: time_in_tenths(str_time),
                 lap_number: lap_num)
    end
    redirect_to :controller => "sessions", :action => "index"
  end
  
  private
    def time_in_tenths(str_time)
      min, sec = str_time.split(':')
      sec, tenths = sec.split('.')
      seconds = [ min.to_i * 60, sec.to_i].map {|t| t * 10}
      seconds = seconds.inject(0) {|sum, t| sum + t}  + tenths.to_i
    end
end

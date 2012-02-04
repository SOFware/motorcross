# == Schema Information
#
# Table name: laps
#
#  id         :integer         not null, primary key
#  session_id :integer
#  tenths     :integer
#  lap_number :integer
#  created_at :datetime
#  updated_at :datetime
#

class Lap < ActiveRecord::Base
  belongs_to :session
  
  def self.best_session_time(session)
    best = where(:session_id => session).map(&:tenths).min
    format_lap_time(best)
  end
  
  def self.avg_session_time(session)
    total = where(:session_id => session.id).average('tenths')
    format_lap_time(total)
  end
  
  
  private
    def self.format_lap_time(tenths)
      decimal = (tenths % 10).to_i
      sec = (tenths / 10).floor
      "#{sec}.#{decimal}"
    end
end

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
    where(:session_id => session).map(&:tenths).min
  end
end

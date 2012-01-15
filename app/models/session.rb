# == Schema Information
#
# Table name: sessions
#
#  id                  :integer         not null, primary key
#  date                :date
#  time                :time
#  track_id            :integer
#  event_id            :integer
#  ground_condition_id :integer
#  sky_condition_id    :integer
#  front_psi           :float
#  rear_psi            :float
#  front_tire_id       :integer
#  rear_tire_id        :integer
#  front_gearing       :integer
#  rear_gearing        :integer
#  fork_spring_rate    :float
#  fork_compression    :integer
#  fork_rebound        :integer
#  shock_spring_rate   :float
#  compression_high    :integer
#  compression_low     :float
#  rebound             :integer
#  sag                 :integer
#  created_at          :datetime
#  updated_at          :datetime
#  session_type_id     :integer
#

class Session < ActiveRecord::Base
  belongs_to :track
  belongs_to :event
  belongs_to :ground_condition
  belongs_to :sky_condition
  belongs_to :session_type
  belongs_to :front_tire, :class_name => "Tire"
  belongs_to :rear_tire, :class_name => "Tire"
  
  def default_compression
    12
  end
  
  def default_rebound
    12
  end

end

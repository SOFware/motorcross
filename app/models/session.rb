# == Schema Information
#
# Table name: sessions
#
#  id                   :integer         not null, primary key
#  date                 :date
#  time                 :time
#  track_id             :integer
#  venue_id             :integer
#  ground_condition_id  :integer
#  weather_condition_id :integer
#  front_psi            :float
#  rear_psi             :float
#  front_tire_id        :integer
#  rear_tire_id         :integer
#  front_gearing        :integer
#  rear_gearing         :integer
#  fork_spring_rate     :float
#  fork_compression     :integer
#  fork_rebound         :integer
#  shock_spring_rate    :float
#  compression_high     :integer
#  compression_low      :float
#  rebound              :integer
#  sag                  :integer
#  created_at           :datetime
#  updated_at           :datetime
#  session_type_id      :integer
#  session_notes        :text
#  tire_notes           :text
#  suspension_notes     :text
#  gearing_notes        :text
#  temp                 :integer
#  bike_id              :integer
#

class Session < ActiveRecord::Base
  belongs_to :track
  belongs_to :bike
  belongs_to :venue
  belongs_to :ground_condition
  belongs_to :weather_condition
  belongs_to :session_type
  belongs_to :front_tire, :class_name => "Tire"
  belongs_to :rear_tire, :class_name => "Tire"
  has_many :laps
  
  delegate :ground_state, :to => :ground_condition, :allow_nil => true
  delegate :weather, :to => :weather_condition, :allow_nil => true
  delegate :venue_name, :to => :event, :allow_nil => true
  delegate :track_name, :to => :track, :allow_nil => true

  scope :venue, lambda {|direction| joins(:track).order("venue_id #{direction}")}
  scope :soil, lambda {|direction| joins(:track).order("soil_id #{direction}")}

  def defaults
    {compression: 12, rebound: 12}
  end

  def best_lap_time
    Lap.best_session_time(self) / 10.0
  end

end

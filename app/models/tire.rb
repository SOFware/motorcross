# == Schema Information
#
# Table name: equipment
#
#  id           :integer         not null, primary key
#  manufacturer :string(255)
#  model        :string(255)
#  rider_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#  type         :string(255)
#

class Tire < Equipment #ActiveRecord::Base
  has_many :sessions, :class_name => "session", :foreign_key => "front_tire_id"
  has_many :sessions, :class_name => "session", :foreign_key => "rear_tire_id"

  def manufacturer=(name)
    self[:manufacturer] = ApplicationHelper::fix_caps(name)
  end

  def model=(name)
    self[:model] = ApplicationHelper::fix_caps(name)
  end
  

end
